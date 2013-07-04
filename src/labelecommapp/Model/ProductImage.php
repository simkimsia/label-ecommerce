<?php
App::uses('AppModel', 'Model');
/**
 * 'ProductImage' Model
 *
 */
class ProductImage extends AppModel {
	public $actsAs = array(
        'Upload.Upload' => array(
            'filename' => array(
                'thumbnailSizes' => array(
                    'xvga' => '1024x768',
                    'vga' => '640x480',
                    'thumb' => '80x80'
                )
            )
        )
    );
    public $belongsTo = array(
        'Product' => array(
            'className'    => 'Product',
            'foreignKey'   => 'product_id'
        )
    );

    public function prepareSaveManyWithAttachment($data, $product_id ){
        foreach($data['ProductImage'] as $key=>$record){
            $data['ProductImage'][$key]['product_id'] = $product_id;
            //$data['ProductImage'][$key]['product_id'] = $product_id;
        }
        $this->log($data);
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
}
