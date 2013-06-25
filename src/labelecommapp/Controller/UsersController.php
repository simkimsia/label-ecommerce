<?php
App::uses('AppController', 'Controller');
/**
 * Users Controller
 *
 * @property User $User
 */
class UsersController extends AppController {

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
		$this->User->recursive = 0;
		$this->set('users', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->User->exists($id)) {
			throw new NotFoundException(__('Invalid user'));
		}
		$options = array('conditions' => array('User.' . $this->User->primaryKey => $id));
		$this->set('user', $this->User->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->User->create();
			if ($this->User->save($this->request->data)) {
				$this->Session->setFlash(__('The user has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.'));
			}
		}
		$groups = $this->User->Group->find('list');
		$this->set(compact('groups'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->User->exists($id)) {
			throw new NotFoundException(__('Invalid user'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->User->save($this->request->data)) {
				$this->Session->setFlash(__('The user has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('User.' . $this->User->primaryKey => $id));
			$this->request->data = $this->User->find('first', $options);
		}
		$groups = $this->User->Group->find('list');
		$this->set(compact('groups'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->User->id = $id;
		if (!$this->User->exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->User->delete()) {
			$this->Session->setFlash(__('User deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('User was not deleted'));
		$this->redirect(array('action' => 'index'));
	}

/**
 *
 * send email for enquiry
 */
	public function send_enquiry_email() {
		if ($this->request->is('post')) {
			$user = $this->User->findXORCreate($this->data['User'], array('email'));
			App::uses('EnquiryEmail', 'Lib/Email');

			$from = array('email' => $user['User']['email'], 'full_name' => $user['User']['full_name']);
			$email = new EnquiryEmail($from);

			$success = $email->send($this->data['User']['message']);

			if ($success) {
				$this->Session->setFlash('', 
					'status_email',
					array(
					'title' => 'Successfully sent!',
					'content' => 'Check your inbox. We have sent you a copy of the email.'
					)
				);
				$this->redirect('/call');
			} else {
				$this->Session->setFlash('', 
					'status_email',
					array(
					'title' => 'Email not sent!',
					'content' => 'Please try again!'
					)
				);
				$this->redirect('/call');
			}
		}
	}

	public function login() {
		if ($this->request->is('post')) {
			if ($this->Auth->login()) {
				$this->redirect($this->Auth->redirectUrl());
			} else {
				$this->Session->setFlash('Your username or password was incorrect.');
			}
		}
	}

	public function admin_login() {
		if ($this->request->is('post')) {
			$allowThisUser = $this->User->allowEntry($this->data, array(SUPER_ADMIN, CHILDLABEL_ADMIN));
			if ($allowThisUser) {
				if ($this->Auth->login()) {
					$this->redirect($this->Auth->redirectUrl());
				}
			}
			$this->Session->setFlash('Your username or password was incorrect.');
		}
		$this->render('login');
	}

	public function logout() {
		//Leave empty for now.
	}

	public function admin_forget_password() {
		$this->render('forget_password');
	}
}
