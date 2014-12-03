<?php

class CartCalculator {

	public static function updatePricesInCart($cart) {
		$cartModel = ClassRegistry::init('Cart.Cart');
		$productVariant = ClassRegistry::init('ProductVariant');
		foreach($cart['CartsItem'] as $key => $item) {
			$latestPrice = $productVariant->getLatestPriceOfProduct($item['foreign_key']);
			$cart['CartsItem'][$key]['price'] = $latestPrice;
		}

		return $cart;
	}

	public static function addUpAllTheCartItems($cart) {
		$total = 0;
		foreach($cart['CartsItem'] as $key => $item) {
			$total = $total + $item['price'];
		}
		$cart['Cart']['price'] = $cart['Cart']['total_price'] = $total;

		return $cart;
	}
}
