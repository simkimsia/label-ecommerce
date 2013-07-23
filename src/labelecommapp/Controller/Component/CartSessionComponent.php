<?php
App::uses('Component', 'Controller');
/**
 * Cart Session Component
 *
 * This is intentionally separated from the Cart Manager to keep the code logically separated.
 *
 * @author Florian Krämer
 * @copyright 2012 Florian Krämer
 */
class CartSessionComponent extends Component {

/**
 * Components
 *
 * @var array
 */
	public $components = array(
		'Session');

/**
 * Cart session key
 *
 * @var string
 */
	public $sessionKey = 'Cart';

/**
 * Initializes the component
 *
 * @param Controller $Controller
 * @param array $settings
 * @internal param \Controller $controller
 * @return void
 */
	public function initialize(Controller $Controller, $settings = array()) {
		$this->Controller = $Controller;
	}

/**
 * Adds an item to the cart or updates an existing item
 *
 * @param array
 * @return boolean
 */
	public function addItem($item) {
		if (!isset($item['foreign_key']) || !isset($item['model'])) {
			throw new InvalidArgumentException(__d('cart', 'foreign_key or model is missing from the item data!'));
		}

		$arrayKey = $this->_findItem($item['foreign_key'], $item['model']);
		if ($arrayKey === false) {
			$cart = $this->read('CartsItem');
			$cart[] = $item;
			$this->write('CartsItem', $cart);
			return $item;
		} else {
			if (!empty($item['increment'])) {
				$item['quantity'] += $this->read('CartsItem.' . $arrayKey . '.quantity');
				unset($item['increment']);
			}
			$this->write('CartsItem.' . $arrayKey, $item);
			return $item;
		}
		return false;
	}

/**
 * Removes an item from the cart session
 *
 * @param $item
 * @throws InvalidArgumentException
 * @internal param $array
 * @return boolean
 */
	public function removeItem($item) {
		if (!isset($item['foreign_key']) || !isset($item['model'])) {
			throw new InvalidArgumentException(__d('cart', 'foreign_key or model is missing from the item data!'));
		}

		$arrayKey = $this->_findItem($item['foreign_key'], $item['model']);
		if ($arrayKey === false) {
			return false;
		}
		return $this->delete('CartsItem.' . $arrayKey);
	}

/**
 * Checks if an item already is in the cart and if yes returns the array key
 *
 * @param mixed $id integer or string uuid
 * @param string $model Model name
 * @return mixed False or key of the array entry in the cart session
 */
	protected function _findItem($id, $model) {
		$cart = $this->read();
		if (!empty($cart['CartsItem'])) {
			foreach ($cart['CartsItem'] as $key => $item) {
				if ($item['foreign_key'] == $id && $item['model'] == $model) {
					return $key;
				}
			}
		}
		return false;
	}

/**
 * Public method to find item key
 *
 * @param mixed $id integer or string uuid
 * @param string $model Model name
 * @return mixed False or key of the array entry in the cart session
 */
	public function getItemKey($id, $model) {
		return $this->_findItem($id, $model);
	}

/**
 * Reads from the cart session
 *
 * @param string
 * @return mixed
 */
	public function read($key = '') {
		if (!empty($key)) {
			$key = '.' . $key;
		}
		return $this->Session->read($this->sessionKey . $key);
	}

/**
 * Write to the cart session
 *
 * @param
 * @param
 * @return
 */
	public function write($key = '', $data = null) {
		if (!empty($key)) {
			$key = '.' . $key;
		}
		return $this->Session->write($this->sessionKey . $key, $data);
	}

/**
 * Checks if an key exists in the session
 *
 * @param string $name
 * @return mixed
 */
	public function check($name) {
		return parent::check($this->sessionKey . '.' . $name);
	}

/**
 * Deletes from the cart session
 *
 * @param string
 * @return mixed
 */
	public function delete($key = '') {
		if (!empty($key)) {
			$key = '.' . $key;
		}
		return $this->Session->delete($this->sessionKey . $key);
	}

/**
 * Drops the cart data from the session
 *
 * @return boolean
 */
	public function emptyCart() {
		return $this->delete();
	}
}