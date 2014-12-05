<?php
App::uses('AppController', 'Controller');
/**
 * ShippingOptions Controller
 *
 * @property ShippingOption $ShippingOption
 */
class SlideshowPicturesController extends AppController {

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
	}

	public function admin_visibility_toggle($id) {
		if(!$this->SlideshowPicture->exists($id)) {
			throw new Exception('no such picture exists.');
		}

		$picture = $this->SlideshowPicture->findById($id);

		if($picture['SlideshowPicture']['position'] > 0) {
			$picture['SlideshowPicture']['position'] = null;
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
