<?php
// Report all PHP errors (see changelog)
error_reporting(E_ALL);

echo 'testing the omnipay';

require __DIR__.'/paypalconfig.php';
require __DIR__.'/../Vendor/autoload.php';

use Omnipay\Common\GatewayFactory;

$paypalconfig = new PaypalConfig();
// print_r($paypalconfig->sandbox);
$paypalconfig = $paypalconfig->sandbox; 
$gateway = GatewayFactory::create('PayPal_Express');
$gateway->setUsername($paypalconfig['username']);
$gateway->setPassword($paypalconfig['password']);
$gateway->setSignature($paypalconfig['signature']);
$gateway->setTestMode($paypalconfig['testmode']);


echo 'start';
$params = array(
	'amount' => '1.99',
	'currency' => 'SGD',
	'description' => 'test purchase',
	'transactionId' => '123',
	'transactionReference' => '123ref',
	'returnUrl' => 'http://localhost:8000/gateways/PayPal_Express/completeAuthorize',
	'cancelUrl' => 'http://localhost:8000/gateways/PayPal_Express/authorize',

 );


echo 'end';

$response =  $gateway->purchase($params)->send();
	if ($response->isRedirect()) {
	    $response->redirect();
	} else {
	    echo "bugger";
	    var_dump($response);
	    exit;
	}
echo 'after capture';
echo '<pre> ';
print_r ($response);
echo '</pre> ';
