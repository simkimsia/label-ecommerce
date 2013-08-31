<?php 
		require APP.DS.'Config/paypal.php';
		require APP.DS.'Vendor/autoload.php';
		use Omnipay\Common\GatewayFactory;

class Paypal {
	public static $returnUrl = '';
	public static $cancelUrl = '';

	public static function pay($cart_data) {


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
			'amount' => $cart_data['Cart']['total_price'],
			'currency' => 'SGD',
			'description' => 'test purchase',
			'transactionId' => '123',
			'transactionReference' => '123ref',
			'returnUrl' => self::$returnUrl,
			'cancelUrl' => self::$cancelUrl

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
	}
}
