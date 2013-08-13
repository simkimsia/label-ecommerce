<?php
App::uses('OrderAddress', 'Model');

/**
 * OrderAddress Test Case
 *
 */
class OrderAddressTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.order_address'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->OrderAddress = ClassRegistry::init('OrderAddress');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->OrderAddress);

		parent::tearDown();
	}

}
