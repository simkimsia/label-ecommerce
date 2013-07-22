<?php
/**
 * CartItemFixture
 *
 */
class CartItemFixture extends CakeTestFixture {

/**
 * Fields
 *
 * @var array
 */
	public $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'primary'),
		'product_id' => array('type' => 'integer', 'null' => false, 'default' => null),
		'product_variant_id' => array('type' => 'integer', 'null' => false, 'default' => null),
		'quantity' => array('type' => 'integer', 'null' => false, 'default' => '0', 'length' => 5),
		'unit_price' => array('type' => 'float', 'null' => false, 'default' => '0.00', 'length' => '10,2'),
		'created' => array('type' => 'datetime', 'null' => false, 'default' => null),
		'modified' => array('type' => 'datetime', 'null' => false, 'default' => null),
		'indexes' => array(
			'PRIMARY' => array('column' => 'id', 'unique' => 1)
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
			'id' => 1,
			'product_id' => 1,
			'product_variant_id' => 1,
			'quantity' => 1,
			'unit_price' => 1,
			'created' => '2013-07-22 11:40:58',
			'modified' => '2013-07-22 11:40:58'
		),
	);

}
