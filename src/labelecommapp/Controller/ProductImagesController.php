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
	public function admin_index_by_product($product_id = null, $product_variant_id = null) {
		$this->set('product_id', $product_id);
		$this->set('product_variant_id', $product_variant_id);
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
	public function admin_view_by_product($product_id = null, $product_variant_id = null) {
		$this->set('product_id', $product_id);
		$this->set('product_variant_id', $product_variant_id);
		
		$this->set('productImages', $this->ProductImage->find('all', array(
			'conditions' => array(
				'ProductImage.product_id'         => $product_id,
				'ProductImage.product_variant_id' => $product_variant_id
				),
			'order' => array('ProductImage.order')
			)
		));
		
		$this->render('admin_view');
	}
/**
 * add method
 *
 * @return void
 */



	public function admin_add_by_product($product_id = null, $product_variant_id = null) {
		// we are setting the ViewVariable
		$this->set('product_id', $product_id);
		$this->set('product_variant_id', $product_variant_id);
		if ($this->request->is('post')) {

			// posted data is in the form of $this->request->data
			// $this->request->data is in the form of data['Modelname'][n]['fieldname']
			$options = compact('product_id', 'product_variant_id');

			$data = $this->ProductImage->prepareSaveManyWithAttachment($this->request->data, $options);

			if ($this->ProductImage->saveManyWithAttachment($data)) {
				$this->Session->setFlash(__('The product image has been saved'));
				$this->redirect('/admin/products/'.$product_id.'/variants/'.$product_variant_id.'/images');
			} else {
				$this->Session->setFlash(__('The product image could not be saved. Please, try again.'));
			}
		}
		$this->render('admin_add');
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit_by_product($product_id = null, $product_variant_id = null, $id = null) {
		if (!$this->ProductImage->exists($id)) {
			throw new NotFoundException(__('Invalid product image'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			$options = compact('product_id', 'product_variant_id');
			$data    = $this->ProductImage->prepareSaveManyWithAttachment($this->request->data, $options);

			if ($this->ProductImage->saveManyWithAttachment($data)) {
				$this->Session->setFlash(__('The product image has been saved'));
			} else {
				$this->Session->setFlash(__('The product image could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('ProductImage.' . $this->ProductImage->primaryKey => $id));
			$this->request->data = $this->ProductImage->find('first', $options);
		}
		$this->redirect('/admin/products/'.$product_id.'/variants/'.$product_variant_id.'/images');
		
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete_by_product($product_id = null, $product_variant_id = null, $id = null) {
		$this->ProductImage->id = $id;
		if (!$this->ProductImage->exists()) {
			throw new NotFoundException(__('Invalid product image'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->ProductImage->deleteAndReorder($product_variant_id, $id)) {
			$this->Session->setFlash(__('Product image deleted'));

		}else{
			$this->Session->setFlash(__('Product Image was not deleted'));
		}
		$this->redirect('/admin/products/'.$product_id.'/variants/'.$product_variant_id.'/images');
	}

/*
*
* swap order method
*
*
*/

	public function admin_swap_order($product_id, $product_variant_id, $currentLeftElem, $currentRightElem){

		if($currentLeftElem == 0){
			$this->Session->setFlash('Cannot swap. Already first item.');
			$this->redirect('/admin/products/'.$product_id.'/variants/'.$product_variant_id.'/images');
		}

		if($currentRightElem == 0){
			$this->Session->setFlash('Cannot swap. Already last item.');
			$this->redirect('/admin/products/'.$product_id.'/variants/'.$product_variant_id.'/images');
		}		
		// find out the left, right and order of $currentLeftElem
		$currentLeft = $this->ProductImage->getOrderStats($currentLeftElem);
		// find out the left, right and order of $currentRightElem
		$currentRight = $this->ProductImage->getOrderStats($currentRightElem);
		// determine the left, right, and order of $newLeftElem
		$result = $this->ProductImage->swap($currentLeft, $currentRight);
		// determine the left, right, and order of $newRightElem


		if($result){
			$this->Session->setFlash(__('Swapped'));
		}else {
			$this->Session->setFlash(__('Not Swapped'));
		}


		$this->redirect('/admin/products/'.$product_id.'/variants/'.$product_variant_id.'/images');
	}
}
