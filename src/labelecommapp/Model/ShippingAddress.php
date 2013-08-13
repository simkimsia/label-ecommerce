<?php
App::uses('AppModel', 'Model');
/**
 * ShippingAddress Model
 *
 */
class ShippingAddress extends AppModel {

/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'name';

	public $actsAs = array(
        'UtilityBehaviors.FindXORCreatable'
    );

}