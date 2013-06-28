<?php
App::uses('AppController', 'Controller');
/**
 * ProductGroups Controller
 *
 * @property ProductGroup $ProductGroup
 */
class ProductGroupsController extends AppController {

/***
*
*
*
*/
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
		$this->ProductGroup->recursive = 0;
		$this->set('productGroups', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->ProductGroup->exists($id)) {
			throw new NotFoundException(__('Invalid product group'));
		}
		$options = array('conditions' => array('ProductGroup.' . $this->ProductGroup->primaryKey => $id));
		$this->set('productGroup', $this->ProductGroup->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->ProductGroup->create();
			if ($this->ProductGroup->save($this->request->data)) {
				$this->Session->setFlash(__('The product group has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product group could not be saved. Please, try again.'));
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
		if (!$this->ProductGroup->exists($id)) {
			throw new NotFoundException(__('Invalid product group'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->ProductGroup->save($this->request->data)) {
				$this->Session->setFlash(__('The product group has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product group could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('ProductGroup.' . $this->ProductGroup->primaryKey => $id));
			$this->request->data = $this->ProductGroup->find('first', $options);
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
		$this->ProductGroup->id = $id;
		if (!$this->ProductGroup->exists()) {
			throw new NotFoundException(__('Invalid product group'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->ProductGroup->delete()) {
			$this->Session->setFlash(__('Product group deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Product group was not deleted'));
		$this->redirect(array('action' => 'index'));
	}


/**
*
*	Admin methods
*
*/

	/**
 * Admin index method
 *
 * @return void
 */
	public function admin_index() {
		$this->ProductGroup->recursive = 0;
		$this->set('productGroups', $this->paginate());
	}

/**
 * Admin view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		if (!$this->ProductGroup->exists($id)) {
			throw new NotFoundException(__('Invalid product group'));
		}
		$options = array('conditions' => array('ProductGroup.' . $this->ProductGroup->primaryKey => $id));
		$this->set('productGroup', $this->ProductGroup->find('first', $options));
	}

/**
 * Admin add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->ProductGroup->create();
			if ($this->ProductGroup->save($this->request->data)) {
				$this->Session->setFlash(__('The product group has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product group could not be saved. Please, try again.'));
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
		if (!$this->ProductGroup->exists($id)) {
			throw new NotFoundException(__('Invalid product group'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->ProductGroup->save($this->request->data)) {
				$this->Session->setFlash(__('The product group has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product group could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('ProductGroup.' . $this->ProductGroup->primaryKey => $id));
			$this->request->data = $this->ProductGroup->find('first', $options);
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
		$this->ProductGroup->id = $id;
		if (!$this->ProductGroup->exists()) {
			throw new NotFoundException(__('Invalid product group'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->ProductGroup->delete()) {
			$this->Session->setFlash(__('Product group deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Product group was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
