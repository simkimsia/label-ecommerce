<?php
App::uses('AppController', 'Controller');
/**
 * ProductImages Controller
 *
 * @property ProductImage $ProductImage
 */
class ProductImagesController extends AppController {

	public function beforeFilter() {
		parent::beforeFilter();
		$this->Auth->allow('index', 'view'); // allow for anonymous 
	}

/**
 * display all the variants that belong to a particular product indicated by $productId
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_index_by_product($product_id = null) {
		$this->set('product_id', $product_id);
		$_GET['product'] = $product_id;
		// check against get params for on-the-fly new search conditions
		$findOptions			= $this->ProductImage->prepareFindOptions($_GET);

		$productImages			= $this->paginate();

		$this->set(compact('productImages'));
		$this->render('admin_index');
	}






/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->ProductImage->recursive = 0;
		$this->set('productImages', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->ProductImage->exists($id)) {
			throw new NotFoundException(__('Invalid product image'));
		}
		$options = array('conditions' => array('ProductImage.' . $this->ProductImage->primaryKey => $id));
		$this->set('productImage', $this->ProductImage->find('first', $options));
	}
/**
 * add method
 *
 * @return void
 */
	public function admin_add_by_product($productId = null) {
		// we are setting the ViewVariable
		$this->set('productId', $productId);
		if ($this->request->is('post')) {

			// posted data is in the form of $this->request->data
			// $this->request->data is in the form of data['Modelname'][n]['fieldname']
			$data = $this->ProductImage->prepareSaveManyWithAttachment($this->request->data, $productId);

			if ($this->ProductImage->saveManyWithAttachment($data)) {
				$this->Session->setFlash(__('The product image has been saved'));
				$this->redirect('/admin/products/'.$productId.'/images');
			} else {
				$this->Session->setFlash(__('The product image could not be saved. Please, try again.'));
			}
		}
		$this->render('admin_add');
	}


/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->ProductImage->create();
			if ($this->ProductImage->save($this->request->data)) {
				$this->Session->setFlash(__('The product image has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product image could not be saved. Please, try again.'));
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
		if (!$this->ProductImage->exists($id)) {
			throw new NotFoundException(__('Invalid product image'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->ProductImage->save($this->request->data)) {
				$this->Session->setFlash(__('The product image has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product image could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('ProductImage.' . $this->ProductImage->primaryKey => $id));
			$this->request->data = $this->ProductImage->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete_by_product($product_id = null, $id = null) {
		$this->ProductImage->id = $id;
		if (!$this->ProductImage->exists()) {
			throw new NotFoundException(__('Invalid product image'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->ProductImage->delete()) {
			$this->Session->setFlash(__('Product image deleted'));
			$this->redirect('/admin/products/'.$product_id.'/images');

			// $this->redirect(array('action' => 'index_by_product', 'id' => $product_id));
		}
		$this->Session->setFlash(__('Product Image was not deleted'));
		$this->redirect(array('action' => 'index_by_product', 'id' =>$product_id));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->ProductImage->id = $id;
		if (!$this->ProductImage->exists()) {
			throw new NotFoundException(__('Invalid product image'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->ProductImage->delete()) {
			$this->Session->setFlash(__('Product image deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Product image was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
