<?php
App::uses('AppModel', 'Model');
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
        if($rightOfCurrentRight != 999){
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
}
