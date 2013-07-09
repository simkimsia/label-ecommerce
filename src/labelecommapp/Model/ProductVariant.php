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




}
