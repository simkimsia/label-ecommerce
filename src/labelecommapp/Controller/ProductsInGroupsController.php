<?php
App::uses('AppController', 'Controller');
/**
 * ProductsInGroups Controller
 *
 * @property ProductsInGroup $ProductsInGroup
 */
class ProductsInGroupsController extends AppController {


	public function beforeFilter() {
		parent::beforeFilter();
	}

//
///**
// * index method
// *
// * @return void
// */
	public function index() {
		$this->ProductsInGroup->recursive = 0;
		$this->set('productsInGroups', $this->paginate());
	}
//
///**
// * view method
// *
// * @throws NotFoundException
// * @param string $id
// * @return void
// */
//	public function view($id = null) {
//		if (!$this->ProductsInGroup->exists($id)) {
//			throw new NotFoundException(__('Invalid products in group'));
//		}
//		$options = array('conditions' => array('ProductsInGroup.' . $this->ProductsInGroup->primaryKey => $id));
//		$this->set('productsInGroup', $this->ProductsInGroup->find('first', $options));
//	}
//
///**
// * add method
// *
// * @return void
// */
//	public function add() {
//		if ($this->request->is('post')) {
//			$this->ProductsInGroup->create();
//			if ($this->ProductsInGroup->save($this->request->data)) {
//				$this->Session->setFlash(__('The products in group has been saved'));
//				$this->redirect(array('action' => 'index'));
//			} else {
//				$this->Session->setFlash(__('The products in group could not be saved. Please, try again.'));
//			}
//		}
//	}
//
///**
// * edit method
// *
// * @throws NotFoundException
// * @param string $id
// * @return void
// */
//	public function edit($id = null) {
//		if (!$this->ProductsInGroup->exists($id)) {
//			throw new NotFoundException(__('Invalid products in group'));
//		}
//		if ($this->request->is('post') || $this->request->is('put')) {
//			if ($this->ProductsInGroup->save($this->request->data)) {
//				$this->Session->setFlash(__('The products in group has been saved'));
//				$this->redirect(array('action' => 'index'));
//			} else {
//				$this->Session->setFlash(__('The products in group could not be saved. Please, try again.'));
//			}
//		} else {
//			$options = array('conditions' => array('ProductsInGroup.' . $this->ProductsInGroup->primaryKey => $id));
//			$this->request->data = $this->ProductsInGroup->find('first', $options);
//		}
//	}
//
///**
// * delete method
// *
// * @throws NotFoundException
// * @param string $id
// * @return void
// */
//	public function delete($id = null) {
//		$this->ProductsInGroup->id = $id;
//		if (!$this->ProductsInGroup->exists()) {
//			throw new NotFoundException(__('Invalid products in group'));
//		}
//		$this->request->onlyAllow('post', 'delete');
//		if ($this->ProductsInGroup->delete()) {
//			$this->Session->setFlash(__('Products in group deleted'));
//			$this->redirect(array('action' => 'index'));
//		}
//		$this->Session->setFlash(__('Products in group was not deleted'));
//		$this->redirect(array('action' => 'index'));
//	}
//
///** 
// * Admin Methods
// *
// * Admin index method
// *
// * @return void
// */
//	public function admin_index() {
//		$this->ProductsInGroup->recursive = 0;
//		$this->set('productsInGroups', $this->paginate());
//	}
//
///**
// * Admin view method
// *
// * @throws NotFoundException
// * @param string $id
// * @return void
// */
//	public function admin_view($id = null) {
//		if (!$this->ProductsInGroup->exists($id)) {
//			throw new NotFoundException(__('Invalid products in group'));
//		}
//		$options = array('conditions' => array('ProductsInGroup.' . $this->ProductsInGroup->primaryKey => $id));
//		$this->set('productsInGroup', $this->ProductsInGroup->find('first', $options));
//	}
//
///**
// * Admin add method
// *
// * @return void
// */
//	public function admin_add() {
//		if ($this->request->is('post')) {
//			$this->ProductsInGroup->create();
//			if ($this->ProductsInGroup->save($this->request->data)) {
//				$this->Session->setFlash(__('The products in group has been saved'));
//				$this->redirect(array('action' => 'index'));
//			} else {
//				$this->Session->setFlash(__('The products in group could not be saved. Please, try again.'));
//			}
//		}
//	}
//
///**
// * Admin edit method
// *
// * @throws NotFoundException
// * @param string $id
// * @return void
// */
//	public function admin_edit($id = null) {
//		if (!$this->ProductsInGroup->exists($id)) {
//			throw new NotFoundException(__('Invalid products in group'));
//		}
//		if ($this->request->is('post') || $this->request->is('put')) {
//			if ($this->ProductsInGroup->save($this->request->data)) {
//				$this->Session->setFlash(__('The products in group has been saved'));
//				$this->redirect(array('action' => 'index'));
//			} else {
//				$this->Session->setFlash(__('The products in group could not be saved. Please, try again.'));
//			}
//		} else {
//			$options = array('conditions' => array('ProductsInGroup.' . $this->ProductsInGroup->primaryKey => $id));
//			$this->request->data = $this->ProductsInGroup->find('first', $options);
//		}
//	}
//
///**
// * Admin delete method
// *
// * @throws NotFoundException
// * @param string $id
// * @return void
// */
//	public function admin_delete($id = null) {
//		$this->ProductsInGroup->id = $id;
//		if (!$this->ProductsInGroup->exists()) {
//			throw new NotFoundException(__('Invalid products in group'));
//		}
//		$this->request->onlyAllow('post', 'delete');
//		if ($this->ProductsInGroup->delete()) {
//			$this->Session->setFlash(__('Products in group deleted'));
//			$this->redirect(array('action' => 'index'));
//		}
//		$this->Session->setFlash(__('Products in group was not deleted'));
//		$this->redirect(array('action' => 'index'));
//	}
}
