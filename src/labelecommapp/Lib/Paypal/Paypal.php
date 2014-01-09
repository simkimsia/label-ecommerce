<?php
		require APP.DS.'Config/paypal.php';
		require APP.DS.'Vendor/autoload.php';
		use Omnipay\Omnipay;

class Paypal {
	public static $returnUrl = '';
	public static $cancelUrl = '';

	public static function pay($cart_data) {


		$paypalconfig = new PaypalConfig();
		// print_r($paypalconfig->sandbox);
		if (Configure::read('PAYPAL') == 'sandbox') {
			$paypalconfig = $paypalconfig->sandbox;
		}
		if (Configure::read('PAYPAL') == 'live') {
			$paypalconfig = $paypalconfig->live;
		}
		$gateway = Omnipay::create('PayPal_Express');
		$gateway->setUsername($paypalconfig['username']);
		$gateway->setPassword($paypalconfig['password']);
		$gateway->setSignature($paypalconfig['signature']);
		$gateway->setTestMode($paypalconfig['testmode']);

		if (Configure::read('debug') > 0) {
			echo 'start';
		}

		$params = self::prepareParameters($cart_data);
		if (Configure::read('debug') > 0) {
			echo 'end';
		}

		$response =  $gateway->purchase($params)->send();
			if ($response->isRedirect()) {
			    $response->redirect();
			} else {
				if (Configure::read('debug') > 0) {
					echo "bugger";
					var_dump($response);
				}
				exit;
			}
		if (Configure::read('debug') > 0) {
			echo 'after capture';
			echo '<pre> ';
			print_r ($response);
			echo '</pre> ';
		}
	}

	public static function completePurchase($cart_data) {
		$paypalconfig = new PaypalConfig();
		// print_r($paypalconfig->sandbox);
		if (Configure::read('PAYPAL') == 'sandbox') {
			$paypalconfig = $paypalconfig->sandbox;
		}
		if (Configure::read('PAYPAL') == 'live') {
			$paypalconfig = $paypalconfig->live;
		}
		$gateway = Omnipay::create('PayPal_Express');
		$gateway->setUsername($paypalconfig['username']);
		$gateway->setPassword($paypalconfig['password']);
		$gateway->setSignature($paypalconfig['signature']);
		$gateway->setTestMode($paypalconfig['testmode']);

		if (Configure::read('debug') > 0) {
			echo 'start';
		}

		$params = self::prepareParameters($cart_data);
		if (Configure::read('debug') > 0) {
			echo 'end';
		}

		$response =  $gateway->completePurchase($params)->send();
		if (Configure::read('debug') > 0) {
			echo 'after complete purchase';
			echo '<pre> ';
			var_dump ($response);
			echo '</pre> ';
		}
		return $response;
	}

	public static function prepareParameters($cart_data) {
		$params = array(
			'amount' => $cart_data['Order']['total'],
			'currency' => 'SGD',
			'description' => 'Purchase from Child Label',
			'transactionId' => $cart_data['Order']['id'],
			'transactionReference' => $cart_data['Order']['invoice_number'],
			'returnUrl' => self::$returnUrl,
			'cancelUrl' => self::$cancelUrl

		);

		return $params;
	}
}
