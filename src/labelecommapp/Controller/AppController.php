<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
App::uses('Controller', 'Controller');

/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package		app.Controller
 * @link		http://book.cakephp.org/2.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller {

	public $components = array(
		'Cart.CartManager' => array(
			'afterAddItemRedirect' => '{referer}#{id}'),
		'RequestHandler',
		'Session',
		'Acl',
		'Auth' => array(
			'authorize' => array(
				'Actions' => array('actionPath' => 'controllers')
			),
			'authenticate' => array(
				'Form' => array(
					'fields' => array('username' => 'email')
				)
			)
		)
	);

	public $helpers = array(
		'Html', 'Form', 'Session',
		'AssetCompress.AssetCompress',
		'Cart.Cart'
	);

	public $authUser = null;

	protected function _setAuthUser() {
	$this->authUser = $this->Auth->user();
	// we want to access the logged in user in the View
	$this->set(array('authUser' => $this->authUser));
	}

	public function beforeFilter() {
		$this->_determineTheme();
		$this->_prepareLogin();
		$this->_setAuthUser();
		$this->_extractCartData();
	}
	protected function _extractCartData() {
		//Configure AuthComponent
		$cart = $this->Session->read('Cart.Cart');
		$cartItemCount = 0;
		if(isset($cart['item_count'])){
			$cartItemCount = $cart['item_count'];

		}

		$this->set('cartItemCount', $cartItemCount);
	}


	protected function _prepareLogin() {
		//Configure AuthComponent
		$this->Auth->loginAction = array('controller' => 'users', 'action' => 'login');
		$this->Auth->logoutRedirect = array('controller' => 'users', 'action' => 'login');
		$this->Auth->loginRedirect = array('controller' => 'products', 'action' => 'index');
	}

	protected function _determineTheme() {
		if (isset($this->request->params['admin'])) {
            // choose the right theme
			$this->theme = false;
			$this->layout = 'admin';
        } else {
        	// choose the right theme
			$this->theme = 'V1';
        }
	}
}
