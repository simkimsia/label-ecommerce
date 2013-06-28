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
	public function add() {
		if ($this->request->is('post')) {
			$this->ProductVariant->create();
			if ($this->ProductVariant->save($this->request->data)) {
				$this->Session->setFlash(__('The product variant has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product variant could not be saved. Please, try again.'));
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
		if (!$this->ProductVariant->exists($id)) {
			throw new NotFoundException(__('Invalid product variant'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->ProductVariant->save($this->request->data)) {
				$this->Session->setFlash(__('The product variant has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product variant could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('ProductVariant.' . $this->ProductVariant->primaryKey => $id));
			$this->request->data = $this->ProductVariant->find('first', $options);
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
		$this->ProductVariant->id = $id;
		if (!$this->ProductVariant->exists()) {
			throw new NotFoundException(__('Invalid product variant'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->ProductVariant->delete()) {
			$this->Session->setFlash(__('ProductVariant variant deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('ProductVariant variant was not deleted'));
		$this->redirect(array('action' => 'index'));
	}





/**
 * Admin Methods
 *
 * Admin index method
 *
 * @return void
 */
	public function admin_index() {
		$this->ProductVariant->recursive = 0;
		$this->set('productVariants', $this->paginate());
	}

/**
 * Admin view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		if (!$this->ProductVariant->exists($id)) {
			throw new NotFoundException(__('Invalid product variant'));
		}
		$options = array('conditions' => array('ProductVariant.' . $this->ProductVariant->primaryKey => $id));
		$this->set('productVariant', $this->ProductVariant->find('first', $options));
	}

/**
 * Admin add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->ProductVariant->create();
			if ($this->ProductVariant->save($this->request->data)) {
				$this->Session->setFlash(__('The product variant has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product variant could not be saved. Please, try again.'));
			}
		}
	}

/**
 * Admin edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		if (!$this->ProductVariant->exists($id)) {
			throw new NotFoundException(__('Invalid product variant'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->ProductVariant->save($this->request->data)) {
				$this->Session->setFlash(__('The product variant has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product variant could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('ProductVariant.' . $this->ProductVariant->primaryKey => $id));
			$this->request->data = $this->ProductVariant->find('first', $options);
		}
	}

/**
 * Admin delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		$this->ProductVariant->id = $id;
		if (!$this->ProductVariant->exists()) {
			throw new NotFoundException(__('Invalid product variant'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->ProductVariant->delete()) {
			$this->Session->setFlash(__('ProductVariant variant deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('ProductVariant variant was not deleted'));
		$this->redirect(array('action' => 'index'));
	}


	
}








