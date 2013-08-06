<?php
App::uses('AppController', 'Controller');
/**
 * ShippingOptions Controller
 *
 * @property ShippingOption $ShippingOption
 */
class ShippingOptionsController extends AppController {

/**
 * index method
 *
 * @return void
 */
	public function admin_index() {
		$this->ShippingOption->recursive = 0;
		$this->set('shippingOptions', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		if (!$this->ShippingOption->exists($id)) {
			throw new NotFoundException(__('Invalid shipping option'));
		}
		$options = array('conditions' => array('ShippingOption.' . $this->ShippingOption->primaryKey => $id));
		$this->set('shippingOption', $this->ShippingOption->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->ShippingOption->create();
			if ($this->ShippingOption->save($this->request->data)) {
				$this->Session->setFlash(__('The shipping option has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The shipping option could not be saved. Please, try again.'));
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
	public function admin_edit($id = null) {
		if (!$this->ShippingOption->exists($id)) {
			throw new NotFoundException(__('Invalid shipping option'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->ShippingOption->save($this->request->data)) {
				$this->Session->setFlash(__('The shipping option has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The shipping option could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('ShippingOption.' . $this->ShippingOption->primaryKey => $id));
			$this->request->data = $this->ShippingOption->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		$this->ShippingOption->id = $id;
		if (!$this->ShippingOption->exists()) {
			throw new NotFoundException(__('Invalid shipping option'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->ShippingOption->delete()) {
			$this->Session->setFlash(__('Shipping option deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Shipping option was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
