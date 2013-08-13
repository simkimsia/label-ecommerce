<?php
App::uses('ShippingAddress', 'Model');

/**
 * ShippingAddress Test Case
 *
 */
class ShippingAddressTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.shipping_address'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->ShippingAddress = ClassRegistry::init('ShippingAddress');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->ShippingAddress);

		parent::tearDown();
	}

}
