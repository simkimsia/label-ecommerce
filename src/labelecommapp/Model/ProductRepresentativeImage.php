<?php
App::uses('AppModel', 'Model');

/**
 * ProductRepresentativeImage Model
 *
 */
class ProductRepresentativeImage extends AppModel {

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
        'thumb_url' => 'CONCAT("/files/product_representative_image/filename/",ProductRepresentativeImage.id,"/thumb_",ProductRepresentativeImage.filename)',
	        'view_url' => 'CONCAT("/files/product_representative_image/filename/",ProductRepresentativeImage.id,"/",ProductRepresentativeImage.filename)'
	    );





	public $belongsTo = array(
    		'Product' => array(
				'className'    => 'Product',
				'foreignKey'   => 'product_id',
				'counterCache' => true
    		)
    );


    public function saveWithProduct($data, $product_id) {

    	$data['ProductRepresentativeImage']['product_id'] = $product_id;
    	$this->save($data);

    }

    public function getProductName($product_id){
        $product_model = ClassRegistry::init('Product');
        $result = $product_model->find('first', array('conditions' => array('Product.id' => $product_id)));
        return ($result['Product']['name']);
    }
}
