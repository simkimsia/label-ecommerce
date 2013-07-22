<?php
App::uses('CartItem', 'Model');

/**
 * CartItem Test Case
 *
 */
class CartItemTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.cart_item'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->CartItem = ClassRegistry::init('CartItem');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->CartItem);

		parent::tearDown();
	}

}
