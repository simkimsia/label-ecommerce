<?php
App::uses('AppController', 'Controller');
/**
 * ShippingOptions Controller
 *
 * @property ShippingOption $ShippingOption
 */
class SlideshowPicturesController extends AppController {

/***
*
*
*
*/
	public function beforeFilter() {
		parent::beforeFilter();
	}



/**
 * index method
 *
 * @return void
 */
	public function admin_index() {
		$this->SlideshowPicture->reassignOrder();
		$options = [
			'order' => ['SlideshowPicture.position ASC']
		];

		$all = $this->SlideshowPicture->find('all', $options);
		$this->set('all', $all);
		//$this->ShippingOption->recursive = 0;
		//$this->set('shippingOptions', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		//if (!$this->ShippingOption->exists($id)) {
		//	throw new NotFoundException(__('Invalid shipping option'));
		//}
		//$options = array('conditions' => array('ShippingOption.' . $this->ShippingOption->primaryKey => $id));
		//$this->set('shippingOption', $this->ShippingOption->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function admin_add() {
		if($this->request->is('post')) {
			if(!$this->SlideshowPicture->save($this->request->data)) {
				throw new Exception('unable to save data');
			}
			$this->redirect('/admin/slideshow_pictures/');
		}
		//if ($this->request->is('post')) {
		//	$this->ShippingOption->create();
		//	if ($this->ShippingOption->save($this->request->data)) {
		//		$this->Session->setFlash(__('The shipping option has been saved'));
		//		$this->redirect(array('action' => 'index'));
		//	} else {
		//		$this->Session->setFlash(__('The shipping option could not be saved. Please, try again.'));
		//	}
		//}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		if(!$this->SlideshowPicture->exists($id)) {
			throw new NotFoundException('Cannot find such image');
		}
		$image = $this->SlideshowPicture->findById($id);
		$this->set('image', $image);
		if($this->request->is('post') || $this->request->is('put')) {
			if($this->SlideshowPicture->save($this->request->data)) {
				$this->Session->setFlash('Image has been successfully saved.');
			} else {
				throw new Exception('Unable to save image.');
			}
			$this->redirect('/admin/slideshow_pictures/');
		}
		//if (!$this->ShippingOption->exists($id)) {
		//	throw new NotFoundException(__('Invalid shipping option'));
		//}
		//if ($this->request->is('post') || $this->request->is('put')) {
		//	if ($this->ShippingOption->save($this->request->data)) {
		//		$this->Session->setFlash(__('The shipping option has been saved'));
		//		$this->redirect(array('action' => 'index'));
		//	} else {
		//		$this->Session->setFlash(__('The shipping option could not be saved. Please, try again.'));
		//	}
		//} else {
		//	$options = array('conditions' => array('ShippingOption.' . $this->ShippingOption->primaryKey => $id));
		//	$this->request->data = $this->ShippingOption->find('first', $options);
		//}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		//$this->ShippingOption->id = $id;
		//if (!$this->ShippingOption->exists()) {
		//	throw new NotFoundException(__('Invalid shipping option'));
		//}
		//$this->request->onlyAllow('post', 'delete');
		//if ($this->ShippingOption->delete()) {
		//	$this->Session->setFlash(__('Shipping option deleted'));
		//	$this->redirect(array('action' => 'index'));
		//}
		//$this->Session->setFlash(__('Shipping option was not deleted'));
		//$this->redirect(array('action' => 'index'));
	}

/**
 * re-order slideshow pictures
 */
	public function admin_reorder() {
		$pictures = $this->SlideshowPicture->find('all', ['order' => ['SlideshowPicture.position ASC']]);
		$this->set('pictures', $pictures);
		if($this->request->is('post') || $this->request->is('put')) {
			if(!$this->SlideshowPicture->saveMany($this->request->data)) {
				throw new Exception('unable to save data.');
			}
			$this->SlideshowPicture->reassignOrder();
			$this->redirect('/admin/slideshow_pictures/reorder');
		}
	}

	public function admin_visibility_toggle($id) {
		if(!$this->SlideshowPicture->exists($id)) {
			throw new Exception('no such picture exists.');
		}

		$picture = $this->SlideshowPicture->findById($id);

		if($picture['SlideshowPicture']['position'] > 0) {
			$picture['SlideshowPicture']['position'] = 0;
		} else {
			$picture['SlideshowPicture']['position'] = 9;
		}
		$this->SlideshowPicture->save($picture);
		$this->SlideshowPicture->reassignOrder();
		$this->redirect('/admin/slideshow_pictures/');
	}

	public function admin_move_up($id) {
		$picture = $this->SlideshowPicture->findById($id);
		$neighbors = $this->SlideshowPicture->find('neighbors', [
			'field' => 'position', 'value' => $picture['SlideshowPicture']['position']
		]);
		if(empty($neighbors['prev'])){
			$this->redirect('/admin/slideshow_pictures/');
		}
		$temp = $neighbors['prev']['SlideshowPicture']['position'];
		$neighbors['prev']['SlideshowPicture']['position'] = $picture['SlideshowPicture']['position'];
		$picture['SlideshowPicture']['position']           = $temp;
		$this->SlideshowPicture->save($neighbors['prev']);
		$this->SlideshowPicture->save($picture);
		$this->redirect('/admin/slideshow_pictures/');
	}

	public function admin_move_down($id) {
		$picture = $this->SlideshowPicture->findById($id);
		$neighbors = $this->SlideshowPicture->find('neighbors', [
			'field' => 'position', 'value' => $picture['SlideshowPicture']['position']
		]);
		if(empty($neighbors['next'])){
			$this->redirect('/admin/slideshow_pictures/');
		}
		$temp = $neighbors['next']['SlideshowPicture']['position'];
		$neighbors['next']['SlideshowPicture']['position'] = $picture['SlideshowPicture']['position'];
		$picture['SlideshowPicture']['position']           = $temp;
		$this->SlideshowPicture->save($neighbors['next']);
		$this->SlideshowPicture->save($picture);
		$this->redirect('/admin/slideshow_pictures/');
	}

}
