<?php
/**
 * CartFixture
 *
 */
class CartFixture extends CakeTestFixture {

/**
 * Fields
 *
 * @var array
 */
	public $fields = array(
		'id' => array('type' => 'string', 'null' => false, 'default' => null, 'length' => 36, 'collate' => 'utf8_general_ci', 'charset' => 'utf8', 'key' => 'primary'),
		'user_id' => array('type' => 'string', 'null' => false, 'default' => null, 'length' => 36, 'collate' => 'utf8_general_ci', 'charset' => 'utf8'),
		'cart_item_count' => array('type' => 'integer', 'null' => false, 'default' => '0', 'length' => 5),
		'total_amount' => array('type' => 'float', 'null' => false, 'default' => '0.00', 'length' => '10,2'),
		'created' => array('type' => 'datetime', 'null' => false, 'default' => null),
		'modified' => array('type' => 'datetime', 'null' => false, 'default' => null),
		'indexes' => array(
			
		),
		'tableParameters' => array('charset' => 'utf8', 'collate' => 'utf8_general_ci', 'engine' => 'InnoDB')
	);

/**
 * Records
 *
 * @var array
 */
	public $records = array(
		array(
			'id' => '51ed7c21-6778-4752-a5c0-0e50d87f8d82',
			'user_id' => 'Lorem ipsum dolor sit amet',
			'cart_item_count' => 1,
			'total_amount' => 1,
			'created' => '2013-07-22 11:38:25',
			'modified' => '2013-07-22 11:38:25'
		),
	);

}
