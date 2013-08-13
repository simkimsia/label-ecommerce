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
		$this->Auth->allow('send_enquiry_email',
			'admin_forget_password',
			'reset_password'); 
	}

/**
 * index method
 *
 * @return void
 */
	public function admin_index() {
		$this->User->recursive = 0;
		$this->set('users', $this->paginate());
		$this->render('index');
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
	public function admin_add() {
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
		$this->render('add');
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
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
		$this->render('edit');
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

	protected function _comeFromCartStep2($referer) {
		return (strpos($referer, 'step=2') !== false);
	}

	public function login() {
		if ($this->request->is('post')) {
			if ($this->Auth->login()) {
				$referer = $this->referer();
				$redirectTo = $this->Auth->redirectUrl();
				if ($this->_comeFromCartStep2($referer)) {
					$redirectTo = '/carts/view?step=3';
				}
				$this->redirect($redirectTo);
			} else {
				$this->Session->setFlash('Your username or password was incorrect.');
			}
		}
	}

	public function admin_login() {
		if ($this->request->is('post')) {
			$allowThisUser = $this->User->allowEntry($this->data, array(SUPER_ADMIN, SHOP_ADMIN));
			if ($allowThisUser) {
				if ($this->Auth->login()) {
					$this->redirect($this->Auth->redirectUrl());
				}
			}
			$this->Session->setFlash('Your username or password was incorrect.');
		}
		$this->render('login'); // i am rendering the view called login.ctp
	}


	public function admin_logout($message = 'Good-Bye') {
		$this->Session->setFlash($message);
		$this->redirect($this->Auth->logout());
	}

	public function logout($message = 'Good-Bye') {
		$this->Session->setFlash($message);
		$this->redirect($this->Auth->logout());
	}

/**
 * view_my_own_profile method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view_my_own_profile() {
		$this->User->recursive = 0;
		$options = array('conditions' => array('User.' . $this->User->primaryKey => $this->Auth->user('id')));
		$this->set('user', $this->User->find('first', $options));
		$this->render('view');
	}

/**
 * edit_my_own_profile method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit_my_own_profile() {
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->User->save($this->request->data)) {
				$this->Session->setFlash(__('The user has been saved'));
				$this->redirect(array('action' => 'admin_view_my_own_profile'));
			} else {

				$this->Session->setFlash(__('The user could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('User.' . $this->User->primaryKey => $this->Auth->user('id')));
			$this->request->data = $this->User->find('first', $options);
		}
		$groups = $this->User->Group->find('list');
		$this->set(compact('groups'));
		$this->render('edit');
	}

/**
 * change_my_own_password method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_change_my_own_password() {
		if ($this->request->is('post') || $this->request->is('put')) {
			$message = $this->User->changePassword($this->request->data);
			$this->Session->setFlash($message);
			$this->redirect(array('action' => 'admin_view_my_own_profile'));
		} else {
			$options = array('conditions' => array('User.' . $this->User->primaryKey => $this->Auth->user('id')));
			$this->request->data = $this->User->find('first', $options);
		}
		$this->render('change_my_own_password');
	}


/**
 * forget_password method
 *
 * @return void
 */
	public function admin_forget_password() {
		if ($this->request->is('post')) {
			$email = $this->request->data['User']['email'];
			$emailExist = $this->User->checkEmailExists($email);

			if ($emailExist === true) {
				//concat datetime and email, and hash them to create token
				$userData = $this->User->findXORCreateToken($email);

				//send email with token
				$this->User->sendToken($userData);
				$this->Session->setFlash('The reset link has been sent to your email. Please check your email and click the link.');
				$this->redirect(array('action' => 'login'));
			} else {
				$this->Session->setFlash('Did you enter a valid email address?');
			}
		}
		$this->render('forget_password');
	}

/**
 * reset_password method
 *
 * @return void
 */
	public function reset_password() {
		if(isset($_GET['token'])){
			$userData = $this->User->findByToken($_GET['token']);
			$validToken = $userData;
			$this->set('token', $_GET['token']);
		} else {
			$validToken = false;
		}

		if (!$validToken) {
			$this->Session->setFlash('Invalid link. Please Login.');
			$this->redirect(array('action' => 'login'));
		}

		if ($this->request->is('get')) {
			if ($validToken) {
				$this->request->data = $userData;
			}
		} else if ($this->request->is('post') || $this->request->is('put')) {
			try {
				$result = $this->User->resetPassword($this->request->data);
				$errorMessage = "Not successful";
			} catch(CakeException $error) {
				$result = false;
				$errorMessage = $error->getMessage();
			}

			if ($result) {
				$this->Session->setFlash('Password successfully changed');
				$this->redirect(array('action' => 'login'));
			} else {
				$this->Session->setFlash($errorMessage);
			}
		}
		$this->render('reset_password');
	}
}
