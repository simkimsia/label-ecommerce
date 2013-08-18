<?php
App::uses('AppController', 'Controller');
/**
 * Carts Controller
 *
 * @property Cart $Cart
 */
class CartsController extends AppController {

	public function beforeFilter() {
		parent::beforeFilter();
		$this->Auth->allow();
	}


/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Cart->recursive = 0;
		$this->set('carts', $this->paginate());
	}

	protected function _checkLoginAtStep2($step) {
		if($step == 2 && $this->Auth->user('id') > 0) {
			$this->redirect('/carts/view');
		}
	}

	protected function _checkLoginAtStep3And4($step) {
		if(($step == 3 || $step == 4) && !$this->Auth->login()){
			$this->redirect('/carts/view?step=2');
		}
	}


/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view() {
		if(isset($_GET['step'])){
			$step = $_GET['step'];

		}else{
			$step = 1;
		}
		
		$this->_checkLoginAtStep2($step);
		$this->_checkLoginAtStep3And4($step);
		
		$this->set('step', $step);
		$this->layout = 'cart';
		// $this->log($this->Session->read('Cart'));
		// need to collect images and store them if necessary
		$theCart = $this->Session->read('Cart');

		// instantiate the ProductImage model here.
		// and put in the url to the item image
		$imageModel = ClassRegistry::init('ProductImage');
		foreach($theCart['CartsItem'] as $index => $item) {
			if (empty($item['image'])) {
				$variant_id = $item['foreign_key'];
				$conditions = array('ProductImage.product_variant_id' => $variant_id);
				$defaultImage = array('thumb_url' => '');
				$image = $imageModel->find('first', array(
					'conditions' => $conditions
				));

				$image					= array_merge($defaultImage, $image);
				$url					= $this->getImageForStep($image['thumb_url'], $step);

				$theCart['CartsItem'][$index]['image']	= $url;
				$this->Session->write("Cart.CartsItem.$index.image", $url);
			}
		}

		if ($step == 3) {
			// get the shipping options
			$shippingOptionModel = ClassRegistry::init('ShippingOption');
			$options             = $shippingOptionModel->find('all');
			$this->set('shipping_options', $options);
			$addressModel       = ClassRegistry::init('Address');
			$user_id            = $this->Auth->user('id');
			$addresses          = $addressModel->getAllByUser($user_id);
			$shipping_addresses = Hash::extract($addresses, '{n}.OrderAddress[type = sh]');
			$billing_addresses  = Hash::extract($addresses, '{n}.OrderAddress[type = bi]');
			$this->set(compact('shipping_addresses', 'billing_addresses'));

		}

		if($step == 4) {
			// get shipping options' details (e.g. period/fees)
			$shippingOptionModel = ClassRegistry::init('ShippingOption');
			$shipping_option_from_session = $this->Session->read('ShippingOption');
			$shipping_details = $shippingOptionModel->find('first', array(
		        'conditions' => array('ShippingOption.id' => $shipping_option_from_session['id'])
		    ));
		    $shipping_options = Hash::extract($shipping_details, 'ShippingOption');
		    $this->set('shipping_options', $shipping_options);

		}
		$this->set('carts', $theCart);
		$this->render('view_step_'.$step);

	}

/**
 * caters for default placeholder image
 */
	protected function getImageForStep($url, $step) {
		if (empty($url)) {
			switch($step) {
				case 1:
					return '/theme/V1/img/cart_step_1/u9_normal.png';
				break;
				case 3:
					return '/theme/V1/img/cart_step_3/u46_normal.png';
				break;
				case 4:
					return '/theme/V1/img/cart_item/u46_normal.png';
				break;
			}
		}
		return $url;
	}

/**
 * save shipping address
 *
 */

	public function save_address() {
		if(empty($this->request->data['shipping_option_id'])) {
			$this->Session->setFlash('Please choose shipping option');
			$this->redirect('/carts/view?step=3');
		}
		$this->request->onlyAllow('post');
		$shipping_address_data            = $this->request->data['ShippingAddress'];
		$shipping_address_data['user_id'] = $this->Auth->user('id');
		$address_model                    = ClassRegistry::init('Address');
		$shipping_result                  = $address_model->findXORCreateShipping($shipping_address_data);
		if(array_key_exists('shipping_equal_billing', $this->request->data)){
			$billing_address_data = $this->request->data['ShippingAddress'];
		} else {
			$billing_address_data = $this->request->data['BillingAddress'];
		}
		$billing_address_data['user_id'] = $this->Auth->user('id');
		$billing_result                  = $address_model->findXORCreateBilling($billing_address_data); 
		
		if($shipping_result && $billing_result) {
			$this->Session->setFlash(__('Shipping address have been saved'));
			$session_shipping         = Hash::extract($shipping_result, 'ShippingAddress');
			$session_billing          = Hash::extract($billing_result, 'BillingAddress');
			$session_shipping_options = Hash::extract($this->request->data, 'shipping_option_id');
			$this->Session->write('ShippingAddress', $session_shipping);
			$this->Session->write('BillingAddress', $session_billing);
			$this->Session->write('ShippingOption', $session_shipping_options);
			$this->redirect('/carts/view?step=4');
		}
		$this->Session->setFlash(__('Shipping could not be saved'));
		$this->redirect('carts/view?step=3');

	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Cart->create();
			if ($this->Cart->save($this->request->data)) {
				$this->Session->setFlash(__('The cart has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The cart could not be saved. Please, try again.'));
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Cart->exists($id)) {
			throw new NotFoundException(__('Invalid cart'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Cart->save($this->request->data)) {
				$this->Session->setFlash(__('The cart has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The cart could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Cart.' . $this->Cart->primaryKey => $id));
			$this->request->data = $this->Cart->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Cart->id = $id;
		if (!$this->Cart->exists()) {
			throw new NotFoundException(__('Invalid cart'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Cart->delete()) {
			$this->Session->setFlash(__('Cart deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Cart was not deleted'));
		$this->redirect(array('action' => 'index'));
	}

	public function add_item($product_variant_id){
		$quantity = 1;
		if(isset($_POST['quantity'])){
			$quantity = $_POST['quantity'];
		}

		
		
	}

	public function remove_item($product_variant_id){
		
	}


}
