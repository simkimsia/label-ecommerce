<?php
App::uses('AppModel', 'Model');
App::uses('UploadException', 'Lib/Exception');
/**
 * 'ProductImage' Model
 *
 */
class ProductImage extends AppModel {
	public $actsAs = array(
        'Upload.Upload' => array(
            'filename' => array(
                    'thumbnailSizes' => array(
                        'xvga'  => '1024x768',
                        'vga'   => '640x480',
                        'thumb' => '80x80'
                )
            )
        )
    );

    public $virtualFields = array(
        'thumb_url' => 'CONCAT("/files/product_image/filename/",ProductImage.id,"/thumb_",ProductImage.filename)',
        'view_url' =>  'CONCAT("/files/product_image/filename/",ProductImage.id,"/",ProductImage.filename)'
    );

    public $belongsTo = array(
        'Product' => array(
            'className'    => 'Product',
            'foreignKey'   => 'product_id'
        ),
        'ProductVariant' => array(
            'className'    => 'ProductVariant',
            'foreignKey'   => 'product_variant_id'
        )
    );

/**
 *@param $data Array is expected in the form of ProductImage.{n}.field
 *@param $options Array is expected product_id and product_variant_id
 *
 */    

    public function prepareSaveManyWithAttachment($data, $options = array()){
        $defaultOptions     = array('product_id' => null, 'product_variant_id' => null);
        $options            = array_merge($defaultOptions, $options);
        $product_id         = $options['product_id'];
        $product_variant_id = $options['product_variant_id'];

        foreach($data['ProductImage'] as $key=>$record){
            $code = $record['filename']['error'];
            if($code == UPLOAD_ERR_OK){
                $data['ProductImage'][$key]['product_id']         = $product_id;
                $data['ProductImage'][$key]['product_variant_id'] = $product_variant_id;

            }else {
                if($code != UPLOAD_ERR_NO_FILE){
                    $exception = new UploadException($code);
                    $this->log($exception->getMessage());
                }
                unset($data['ProductImage'][$key]);
            }
        }
        return $data;
    }

/**
 *@param $data Array is expected in the form of ProductImage.{n}.field
 *
 *
 */
    public function saveManyWithAttachment($data){ 
        foreach($data['ProductImage'] as $record) {
            if(empty($record['id'])) {
                // this means we need to create new ProductImage record     
                    $this->create();
            } else {
                // this means that we need to UPDATE existing ProductImage record
                // BUT FIRST we check if the id exists in the database
                if (!$this->exists($record['id'])) {
                    // this means taht the id is not found in product_images
                    // so cannot UPDATE
                    throw new NotFoundException(__('Invalid image'));
                }
            }
            // regardless we create new or we update old
            // we just run save
            $this->save($record);
        }
        return true;
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
            $conditions['ProductImage.product_id'] = $getParams['product'];
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
 * @param $id expects image id
 *
 */

    public function getOrderStats($id){
        $fields = array('id', 'left', 'right', 'order');
        $result = $this->read($fields, $id);

        return $result;
    }

    public function swap($currentLeft, $currentRight){
        // currentLeft is 4, currentRight is 5 
        $idOfCurrentLeft     = $currentLeft['ProductImage']['id']; // 4
        $leftOfCurrentLeft   = $currentLeft['ProductImage']['left']; // 3
        $rightOfCurrentLeft  = $currentLeft['ProductImage']['right']; // 5
        $orderOfCurrentLeft  = $currentLeft['ProductImage']['order']; // 1
        
        $idOfCurrentRight    = $currentRight['ProductImage']['id']; // 5
        $leftOfCurrentRight  = $currentRight['ProductImage']['left']; // 4
        $rightOfCurrentRight = $currentRight['ProductImage']['right']; // 6
        $orderOfCurrentRight = $currentRight['ProductImage']['order']; // 2

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
            $extremeLeft          = Hash::extract($extremeLeft, 'ProductImage');
            $extremeLeft['right'] = $newLeft['id']; // 5
            $saveManyWithData[]   = $extremeLeft;
        }

        if($extremeRight != null){
            $extremeRight          = Hash::extract($extremeRight, 'ProductImage');
            $extremeRight['left'] = $newRight['id']; // 4
            $saveManyWithData[]   = $extremeRight;
        }


        $result           = $this->saveMany($saveManyWithData);

        return $result;

    }

}
