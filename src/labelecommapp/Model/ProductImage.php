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
        'thumb_url' => 'CONCAT("/files/product_image/filename/",ProductImage.id,"/thumb_",ProductImage.filename)'
    );



    public $belongsTo = array(
        'Product' => array(
            'className'    => 'Product',
            'foreignKey'   => 'product_id'
        )
    );

    public function prepareSaveManyWithAttachment($data, $product_id ){
        foreach($data['ProductImage'] as $key=>$record){
            $code = $record['filename']['error'];
            if($code == UPLOAD_ERR_OK){
                $data['ProductImage'][$key]['product_id'] = $product_id;
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


}
