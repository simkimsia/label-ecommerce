<?php
App::uses('AppController', 'Controller');
/**
 * ProductVariants Controller
 *
 * @property ProductVariant $ProductVariant
 */
class ProductVariantsController extends AppController {

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
		$this->ProductVariant->recursive = 0;
		$this->set('productVariants', $this->paginate());
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
		$findOptions			= $this->ProductVariant->prepareFindOptions($_GET);

		/* start of possible Component method 
		* $findOptions is a param and $products is the return
		*/
		// back up a copy of the original pagination settings to restore later
		$originalPaginateSettings	= $this->paginate;
		// merge the latest new conditions with the original
		$this->paginate			= array_merge($this->paginate, $findOptions);

		// run the paginate find
		$productVariants			= $this->paginate();
		// pagination counting is auto created inside $this->request['paging']

		// restore the paginate back to the original settings
		$this->paginate			= $originalPaginateSettings;
		/* end of possible Component method */

		$this->set(compact('productVariants'));
		$this->render('admin_index');
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->ProductVariant->exists($id)) {
			throw new NotFoundException(__('Invalid product variant'));
		}
		$options = array('conditions' => array('ProductVariant.' . $this->ProductVariant->primaryKey => $id));
		$this->set('productVariant', $this->ProductVariant->find('first', $options));
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
			// $this->request->data is in the form of data['Modelname']['fieldname']
			$this->request->data['ProductVariant']['product_id'] = $productId;

			$this->ProductVariant->create();
			if ($this->ProductVariant->save($this->request->data)) {
				$this->Session->setFlash(__('The product variant has been saved'));
				$this->redirect('/admin/products/'.$productId.'/variants');
				// $this->redirect(array('action' => 'index_by_product', 'id' => $product_id));
			} else {
				$this->Session->setFlash(__('The product variant could not be saved. Please, try again.'));
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
	public function admin_edit_by_product($product_id = null, $id = null) {
		if (!$this->ProductVariant->exists($id)) {
			throw new NotFoundException(__('Invalid product variant'));
		}
		$this->set('product_id', $product_id);
		$this->set('id', $id);
		if ($this->request->is('post') || $this->request->is('put')) {
			$this->request->data['ProductVariant']['product_id'] = $product_id;
			$this->request->data['ProductVariant']['id'] = $id;
			if ($this->ProductVariant->save($this->request->data)) {
				$this->Session->setFlash(__('The product variant has been saved'));
				$this->redirect('/admin/products/'.$product_id.'/variants');
			// $this->redirect(array('action' => 'index_by_product', 'id' => $product_id));

			} else {
				$this->Session->setFlash(__('The product variant could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('ProductVariant.' . $this->ProductVariant->primaryKey => $id));
			$this->request->data = $this->ProductVariant->find('first', $options);
		}
		$this->render('admin_edit');
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete_by_product($product_id = null, $id = null) {
		$this->ProductVariant->id = $id;
		if (!$this->ProductVariant->exists()) {
			throw new NotFoundException(__('Invalid product variant'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->ProductVariant->delete()) {
			$this->Session->setFlash(__('ProductVariant variant deleted'));
			$this->redirect('/admin/products/'.$product_id.'/variants');

			// $this->redirect(array('action' => 'index_by_product', 'id' => $product_id));
		}
		$this->Session->setFlash(__('ProductVariant variant was not deleted'));
		$this->redirect(array('action' => 'index_by_product', 'id' =>$product_id));
	}



	
}
