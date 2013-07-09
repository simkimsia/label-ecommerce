<?php
App::uses('AppModel', 'Model');
/**
 * Product Model
 *
 */
class Product extends AppModel {


	public $hasMany = array(
        'ProductImage' => array(
            'className'  => 'ProductImage'
        ),
        'ProductVariant' => array(
        	'className' => 'ProductVariant'
    	)
    );
/**
 * insert into product_variant ('name') VALUES 'DEFAULT' for new product
 * @param $data expect Post 
 *
 */
    public function createWithDefaultVariant($data){
    	$singleVariant = array('name' => 'DEFAULT');
    	$data['ProductVariant'] = array(
			$singleVariant
			);
    	$this->create();
   		$result = $this->saveAssociated($data);				
   		return $result;
    				
    }

/**
 * retrieve product_variant_count based on product_id
 * @param $product_id 
 *
 */
    public function allowDeleteVariant($product_id){
    	$this->id = $product_id;
    	$count = $this->field('product_variant_count');
    	return ($count >= 2);
    }
/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'name';

}
