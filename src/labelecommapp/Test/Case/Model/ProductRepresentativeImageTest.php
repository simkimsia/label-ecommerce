<?php
App::uses('ProductRepresentativeImage', 'Model');

/**
 * ProductRepresentativeImage Test Case
 *
 */
class ProductRepresentativeImageTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.product_representative_image'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->ProductRepresentativeImage = ClassRegistry::init('ProductRepresentativeImage');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->ProductRepresentativeImage);

		parent::tearDown();
	}

}
