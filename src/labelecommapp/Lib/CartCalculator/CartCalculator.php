<?php

class CartCalculator {

	public static function updatePricesInCart($cart) {
		$cartModel = ClassRegistry::init('Cart.Cart');
		$arrayOfIds = Hash::extract($cart['CartsItem'], '{n}.id');
		$options = [
			'conditions' => [
				'CartsItem.id' => $arrayOfIds,
			],
			'fields' => [
				'CartsItem.id', 'Product.price'
			],
			'joins' => [
				[
					'table' => 'product_variants',
					'alias' => 'ProductVariant',
					'type' => 'INNER',
					'conditions' => [
						'CartsItem.foreign_key = ProductVariant.id'
					]
				],
				[
					'table' => 'products',
					'alias' => 'Product',
					'type' => 'INNER',
					'conditions' => [
						'Product.id = ProductVariant.product_id'
					]
				],
			],
		];
		$result = $cartModel->CartsItem->find('list', $options);

		foreach($cart['CartsItem'] as $key => $item) {
			$cartModel->log($item['id']);
			$cart['CartsItem'][$key]['price'] = $result[$item['id']];
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
