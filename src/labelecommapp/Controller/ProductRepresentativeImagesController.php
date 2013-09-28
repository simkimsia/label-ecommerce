<?php
App::uses('AppController', 'Controller');
/**
 * ProductRepresentativeImages Controller
 *
 * @property ProductRepresentativeImage $ProductRepresentativeImage
 */
class ProductRepresentativeImagesController extends AppController {


/**
 * index method
 *
 * @return void
 */
	public function admin_index() {
		$this->ProductRepresentativeImage->recursive = 0;
		$this->set('productRepresentativeImages', $this->paginate());
		$this->render('index');
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($product_id = null) {
	
		$options = array('conditions' => array('ProductRepresentativeImage.product_id'  => $product_id));
		$result = $this->ProductRepresentativeImage->find('first', $options);
		if(empty($result)){
			throw new NotFoundException(__('Invalid product representative image'));
		}
		$this->set('productRepresentativeImage', $this->ProductRepresentativeImage->find('first', $options));
		$this->render('admin_view');
	}

/**
 * add method
 *
 * @return void
 */
	public function admin_add($product_id=null) {
		$this->set('product_id', $product_id);
		$product_name = $this->ProductRepresentativeImage->getProductName($product_id);
		$this->set('product_name', $product_name);
		$rep_img = array('ProductRepresentativeImage' => array('thumb_url' => ''));
		$conditions = array('conditions' => array('ProductRepresentativeImage.product_id' => $product_id));
		$result = $this->ProductRepresentativeImage->find('first', $conditions);
		$this->set('id', $result['ProductRepresentativeImage']['id']);
		if(empty($result)){
			$this->set('rep_img', $rep_img );
		}else {
			$this->set('rep_img', $result);
		}
		if ($this->request->is('post')) {

			if(empty($result)){
				$this->ProductRepresentativeImage->create();
				if ($this->ProductRepresentativeImage->save($this->request->data)) {
				$this->Session->setFlash(__('The product representative image has been created and saved.'));
				}
			} else {
				$id = $result['ProductRepresentativeImage']['id'];
				$data = $this->request->data;
				$data['ProductRepresentativeImage']['id'] = $id;
				if($this->ProductRepresentativeImage->save($data)){
					$this->Session->setFlash(__('The product representative image has been overwritten.'));

				}else{
					$this->Session->setFlash(__('The product representative image could not be saved. Please, try again.'));
				}
			}
				$this->redirect('/admin/products/'.$product_id.'/rep_img/');
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
	public function admin_edit($product_id = null ,$id = null) {
		if (!$this->ProductRepresentativeImage->exists($id)) {
			throw new NotFoundException(__('Invalid product representative image'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->ProductRepresentativeImage->saveWithProduct($this->request->data, $product_id)) {
				$this->Session->setFlash(__('The product representative image has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The product representative image could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('ProductRepresentativeImage.' . $this->ProductRepresentativeImage->primaryKey => $id));
			$this->request->data = $this->ProductRepresentativeImage->find('first', $options);
		}
		$this->render(array('action' => 'edit'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete($product_id=null,$id = null) {
		$this->ProductRepresentativeImage->id = $id;
		if (!$this->ProductRepresentativeImage->exists()) {
			throw new NotFoundException(__('Invalid product representative image'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->ProductRepresentativeImage->delete()) {
			$this->Session->setFlash(__('Product representative image deleted'));
		}else {
			$this->Session->setFlash(__('Product representative image was not deleted'));
		}
		$this->redirect('/admin/products'.$product_id.'/rep_img/');
	}

}
