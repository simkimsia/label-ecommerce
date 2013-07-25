<?php
App::uses('AppModel', 'Model');
App::uses('NotBuyableException', 'Cart.Lib/Error');
/**
 * ProductVariant Model
 *
 */
class ProductVariant extends AppModel {
	public $displayField = 'id';


	public $hasMany = array(
        'ProductImage' => array(
            'className'  => 'ProductImage'
        )
    );

    public $belongsTo = array(
    		'Product' => array(
				'className'    => 'Product',
				'foreignKey'   => 'product_id',
				'counterCache' => true
    		)
    	);
/**
 * Behaviors
 *
 * @var array
 */
    public $actsAs = array(
        'Cart.Buyable' => array('nameField' => 'display_name'));


/**
 * This method will determine if the item is buyable or not and by this can be added to the cart or not
 *
 * @param array $data
 * @return boolean
 */
    public function isBuyable($data) {
        $result = $this->find('first', array(
            'contain' => array(),
            'conditions' => array(
                $this->alias . '.' . $this->primaryKey => $data['CartsItem']['foreign_key'])));

        if (!empty($result)) {
            if ($result[$this->alias]['quantity'] == 0) {
                $this->log('model Variant : line ' .__LINE__);
                return false;
            }

            if ($data['CartsItem']['quantity'] > $result[$this->alias]['quantity']) {
                $this->log('model Variant : line ' .__LINE__);
                return false;
            }

            if ($result[$this->alias]['max_quantity'] > 0 && $data['CartsItem']['quantity'] >= $result[$this->alias]['max_quantity']) {
                $this->log('model Variant : line ' .__LINE__);
                return false;
            }

            if ($result[$this->alias]['min_quantity'] > 0 && $data['CartsItem']['quantity'] <= $result[$this->alias]['min_quantity']) {
                $this->log('model Variant : line ' .__LINE__);
                return false;
            }
            $this->log('model Variant : line ' .__LINE__);
            return $result[$this->alias]['for_sale'] == 1 && $result[$this->alias]['quantity'] > 0;
        }

        return false;
    }

/**
 *
 * Gives us a list of possible options for find('first') or find('all')
 *
 * @param $getParams Array representing $_GET
 * @return Array An array of Product find options
 */
	public function prepareFindOptions($getParams = array()) {
		$conditions = array();
		if (!empty($getParams['product'])) {
			$conditions['ProductVariant.product_id'] = $getParams['product'];
		}
		$options['conditions'] = $conditions;
		
		if (!empty($getParams['top'])) {
			$options['limit'] = $getParams['top'];
		}
		if (!empty($getParams['page'])) {
			$options['page'] = $getParams['page'];
		}
		return $options;
	}

/**
 *
 *
 *
 */

	public function getOrderStats($id){
        $fields = array('id', 'left', 'right', 'order');
        $result = $this->read($fields, $id);

        return $result;
	}

    public function swap($currentLeft, $currentRight){
        // currentLeft is 4, currentRight is 5 
        $idOfCurrentLeft     = $currentLeft['ProductVariant']['id']; // 4
        $leftOfCurrentLeft   = $currentLeft['ProductVariant']['left']; // 3
        $rightOfCurrentLeft  = $currentLeft['ProductVariant']['right']; // 5
        $orderOfCurrentLeft  = $currentLeft['ProductVariant']['order']; // 1
        
        $idOfCurrentRight    = $currentRight['ProductVariant']['id']; // 5
        $leftOfCurrentRight  = $currentRight['ProductVariant']['left']; // 4
        $rightOfCurrentRight = $currentRight['ProductVariant']['right']; // 6
        $orderOfCurrentRight = $currentRight['ProductVariant']['order']; // 2

        // get left of currentLeft
        $extremeLeft = null;
        if($leftOfCurrentLeft != 0){
            $extremeLeft = $this->getOrderStats($leftOfCurrentLeft);

        }

        // get Right of currentRight
        $extremeRight = null;
        if($rightOfCurrentRight != 0){
            $extremeRight = $this->getOrderStats($rightOfCurrentRight);

        }


        $newLeft = array(
            'id'    => $idOfCurrentRight, // 5
            'left'  => $leftOfCurrentLeft, // 3
            'right' => $idOfCurrentLeft, // 4
            'order' => $orderOfCurrentLeft, // 1
            );

        $newRight = array(
            'id'    => $idOfCurrentLeft, // 4
            'left'  => $idOfCurrentRight, // 5
            'right' => $rightOfCurrentRight, // 6
            'order' => $orderOfCurrentRight, // 2
            );
        $saveManyWithData = array($newLeft, $newRight);
        if($extremeLeft != null){
            $extremeLeft          = Hash::extract($extremeLeft, 'ProductVariant');
            $extremeLeft['right'] = $newLeft['id']; // 5
            $saveManyWithData[]   = $extremeLeft;
        }

        if($extremeRight != null){
			$extremeRight         = Hash::extract($extremeRight, 'ProductVariant');
			$extremeRight['left'] = $newRight['id']; // 4
			$saveManyWithData[]   = $extremeRight;
        }


        $result           = $this->saveMany($saveManyWithData);

        return $result;

    }
/**
 *
 * retrieve the last variant and its order stats of a particular product
 */
    public function getLastOrderStats($product_id){
        $conditions = array('ProductVariant.product_id' => $product_id, 'ProductVariant.right' => 0);
        $fields     = array('ProductVariant.id', 'ProductVariant.left' , 'ProductVariant.right', 'ProductVariant.order');

        $result = $this->find('first', array(
            'conditions' => $conditions,
            'fields'     => $fields,
            ));

        return $result;


    }

/**
 *
 * reorder the variant of a particular product
 */
    public function reorder($product_id){
        $results      = $this->getAllOrderStats($product_id);
        $saveManyData = array();
        $count        = 0;
        foreach($results as $key => $array){
            $array['ProductVariant']['order'] = $count;
            $saveManyData[] = $array['ProductVariant']; 
            $count          = $count + 1;
        }
        $this->saveMany($saveManyData);

    }

    public function createAndReorder($data){
        $data = Hash::extract($data, 'ProductVariant');
        $last = $this->getLastOrderStats($data['product_id']);
        $this->create();
        $this->save($data);
        $newId = $this->getLastInsertID();
        $last['ProductVariant']['right'] = $newId;
        $data['order']  = $last['ProductVariant']['order'] + 1;
        $data['left']   = $last['ProductVariant']['id'];
        $data['id']     = $newId;
        $saveManyData   = array();
        $saveManyData[] = array('id' => $data['id'], 'left' => $data['left'], 'order' => $data['order']); 
        $saveManyData[] = array('id' => $last['ProductVariant']['id'], 'right' => $last['ProductVariant']['right']); 

        $this->saveMany($saveManyData);
        $this->reorder($data['product_id']);

        return true;   
    }

/**
 *
 * retrieve all variants and their order stats of a particular product only
 */
    public function getAllOrderStats($product_id){
        $conditions = array('ProductVariant.product_id' => $product_id);
        $fields     = array('ProductVariant.id', 'ProductVariant.left' , 'ProductVariant.right', 'ProductVariant.order');
        $order      = array('ProductVariant.order');

        $result = $this->find('all', array(
            'conditions' => $conditions,
            'fields'     => $fields,
            'order'      => $order
            ));

        return $result;
    }

/**   
 * retrieve all order stats except for the variant passed in.
 *
 */
    public function getAllOrderStatsExcept($product_id, $id){
        $conditions = array('ProductVariant.product_id' => $product_id, 'ProductVariant.id !=' => $id);
        $fields     = array('ProductVariant.id', 'ProductVariant.left' , 'ProductVariant.right', 'ProductVariant.order');
        $order      = array('ProductVariant.order');

        $result = $this->find('all', array(
            'conditions' => $conditions,
            'fields'     => $fields,
            'order'      => $order
            ));

        return $result;
    }    

/**
 *
 * reorder variants on deletion of variant
 *
 */    
    public function deleteAndReorder($product_id, $id){

        $delete               = $this->getOrderStats($id);
        $deleteLeftNeighbour  = $delete['ProductVariant']['left'];
        $deleteRightNeighbour = $delete['ProductVariant']['right'];
        $theRest = $this->getAllOrderStatsExcept($product_id, $id);
        if($deleteLeftNeighbour == 0){
            $theRest[0]['ProductVariant']['left'] = 0;
        }else if ($deleteRightNeighbour == 0){
            $length = count($theRest);
            $theRest[$length - 1]['ProductVariant']['right'] = 0;
        }else{
            foreach($theRest as $key => $array){
                if($array['ProductVariant']['id'] == $deleteLeftNeighbour){
                    $theRest[$key]['ProductVariant']['right'] = $deleteRightNeighbour;
                }
                if($array['ProductVariant']['id'] == $deleteRightNeighbour){
                    $theRest[$key]['ProductVariant']['left'] = $deleteLeftNeighbour;
                }
            }

        }

        $result = $this->delete($id);
        if($result){
            $saveManyData = Hash::extract($theRest, '{n}.ProductVariant');
            $this->saveMany($saveManyData);
            $this->reorder($product_id);
        }

        return $result;
    }


}
