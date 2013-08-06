<?php
App::uses('ShippingOption', 'Model');

/**
 * ShippingOption Test Case
 *
 */
class ShippingOptionTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.shipping_option'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->ShippingOption = ClassRegistry::init('ShippingOption');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->ShippingOption);

		parent::tearDown();
	}

}
