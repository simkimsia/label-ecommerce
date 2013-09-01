<?php
App::uses('AppModel', 'Model');
App::uses('OrderAddress', 'Cart.Model');
/**
 * ShippingAddress Model
 *
 */
class Address extends AppModel {

	public $actsAs = array(
        'UtilityBehaviors.FindXORCreatable'
    );

     public $belongsTo = array(
        'OrderAddress' => array(
            'className'    => 'OrderAddress',
            'foreignKey'   => 'order_address_id'
        )
        
    );

    // a function that findsXORCreate OrderAdddress for shipping
/**
 * given $shippingAddressData without alias as key we need to findXORCreate OrderAddress for shipping
 * 
 * @param $shippingAddressData Array that has the columns as keys
 * @return array/boolean if found we return the Shipping Address as array  under key `ShippingAddress` else return false 
 */
    public function findXORCreateShipping($shippingAddressData) {

    	// we expect the minimum fields
    	// user_id, save
    	// these are the expected fields from the form
    	// name, address, country, state, city
    	$saveToAddressBook = array_key_exists('save', $shippingAddressData);
    	
    	// instantiate teh model
    	$orderAddressModel = ClassRegistry::init('OrderAddress');
    	// attach the FindXORCreatable behaavior to the model
    	$orderAddressModel->Behaviors->attach('UtilityBehaviors.FindXORCreatable');
    	// make sure that the address is meant for shipping
    	$shippingAddressData['type'] = 'sh';
    	$shippingAddress = $orderAddressModel->findXORCreate($shippingAddressData);

    	$errorInFindXORCreateShipping = empty($shippingAddress);

    	if ($errorInFindXORCreateShipping) {
    		return false;
    	}

    	$result = array('ShippingAddress' => $shippingAddress['OrderAddress']);
    	if ($saveToAddressBook) {
    		$addressData = array('user_id' => $shippingAddressData['user_id'], 'order_address_id' => $shippingAddress['OrderAddress']['id']);
    		$address = $this->findXORCreate($addressData);
    		$result['Address'] = $address['Address'];
    	}
    	
    	return $result;
    }

    // a function that findsXORCreate OrderAddress for billing

/**
 * given $shippingAddressData without alias as key we need to findXORCreate OrderAddress for shipping
 * 
 * @param $shippingAddressData Array that has the columns as keys
 * @return array/boolean if found we return the Shipping Address as array  under key `ShippingAddress` else return false 
 */
    public function findXORCreateBilling($billingAddressData) {

    	// we expect the minimum fields
    	// user_id, save
    	// these are the expected fields from the form
    	// name, address, country, state, city, phone_number
    	$saveToAddressBook = array_key_exists('save', $billingAddressData);
    	
    	// instantiate teh model
    	$orderAddressModel = ClassRegistry::init('OrderAddress');
    	// attach the FindXORCreatable behaavior to the model
    	$orderAddressModel->Behaviors->attach('UtilityBehaviors.FindXORCreatable');
    	// make sure that the address is meant for billing
    	$billingAddressData['type'] = 'bi';
    	$billingAddress = $orderAddressModel->findXORCreate($billingAddressData);

    	$errorInFindXORCreateBilling = empty($billingAddress);

    	if ($errorInFindXORCreateBilling) {
    		return false;
    	}

    	$result = array('BillingAddress' => $billingAddress['OrderAddress']);
    	if ($saveToAddressBook) {
    		$addressData = array('user_id' => $billingAddressData['user_id'], 'order_address_id' => $billingAddress['OrderAddress']['id']);
    		$address = $this->findXORCreate($addressData);
    		$result['Address'] = $address['Address'];
    	}
    	
    	return $result;
    }

/**
 * Get all the shipping address and billing address of the user
 *
 */
    public function getAllByUser($user_id) {

        $conditions = array('Address.user_id' => $user_id);
        $addresses = $this->find('all', 
            array('conditions' => $conditions,
                'contain' => array('OrderAddress')));
        return $addresses;
    }

    public function prepareAddressAsText($address_data) {
        $text = '';
        $blacklist = array(
            'id',
            'created',
            'modified',
            'order_id',
            'user_id',
            'type'
            );
        if($address_data['type'] == 'sh') {
            $text .= "ShippingAddress:\n";
        }

        if($address_data['type'] == 'bi') {
            $text .= "BillingAddress:\n";
        }

        foreach($address_data as $field => $value) {
            if(in_array($field, $blacklist)) {
                continue;
            }
            $text .= $field . ' : ' . $value . "\n";
        }
        return $text;

    }

}