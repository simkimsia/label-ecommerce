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
        )
    );
/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'name';

}
