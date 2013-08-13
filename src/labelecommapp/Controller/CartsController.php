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
		if($step == 2 && $this->Auth->user('id') > 0) {
			$this->redirect('/carts/view');
		}
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
			$options = $shippingOptionModel->find('all');
			// then set them
			// $this->set();
			$this->set('shipping_options', $options);
			$this->log($options);
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

/**
 * save shipping address
 *
 */

	public function save_address(){

	}
}
