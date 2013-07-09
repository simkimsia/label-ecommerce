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
 * Display field
 *
 * @var string
 */
	public $displayField = 'name';

}
