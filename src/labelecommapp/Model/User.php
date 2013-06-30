<?php
App::uses('AppModel', 'Model');
App::uses('AuthComponent', 'Controller/Component');
/**
 * User Model
 *
 * @property Group $Group
 */
class User extends AppModel {

/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'short_name';


	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'Group' => array(
			'className' => 'Group',
			'foreignKey' => 'group_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);

/**
 *
 * Acl related code
 */
	public $actsAs = array('Acl' => array('type' => 'requester'));

	public function parentNode() {
		if (!$this->id && empty($this->data)) {
			return null;
		}
		if (isset($this->data['User']['group_id'])) {
			$groupId = $this->data['User']['group_id'];
		} else {
			$groupId = $this->field('group_id');
		}
		if (!$groupId) {
			return null;
		} else {
			return array('Group' => array('id' => $groupId));
		}
	}

	public function bindNode($user) {
		return array('model' => 'Group', 'foreign_key' => $user['User']['group_id']);
	}
/**
 * end of Acl related code
 */

/**
 *
 * beforeSave function
 */
	public function beforeSave($options = array()) {
		if (isset($this->data['User']['password'])) {
			$this->data['User']['password'] = AuthComponent::password($this->data['User']['password']);
		}
		return true;
	}

/**
 *
 * retrieve user data by email
 */
	public function getByEmail($data = array()) {
		$loginData = $this->extractModelData($data);
		if (isset($loginData['email'])) {
			$user = $this->findByEmail($loginData['email']);
			return $user;
		}
		return false;
	}

/**
 *
 * check $data and see if we can allow user to gain access based on a whitelist
 * array $data Any data array where we expect email, password
 * 
 */
	public function allowEntry($data, $allowedGroups = array()) {
		if (empty($deniedGroups)) {
			return true;
		}
		$user = $this->getByLogin($data);
		if ($user) {
			$groupId = $user['User']['group_id'];

			if (in_array($groupId, $allowedGroups)) {
				return true;
			}
		}

		return false;
	}

// password related functions
/**
 *
 * searches the users table for a token, given the email. If token is empty, create a new one and return it.
 *
 * @param String $email Email Provided
 * @return Array $userData containing full_name, email and token
 */
	public function findXORCreateToken($email){
		$userData = $this->find('first', array(
			'conditions' => array('User.email' => $email),
			'fields' => array('User.id', 'User.full_name', 'User.token', 'User.email')
		));

		if ($userData['User']['token'] === null || empty($userData['User']['token'])) {
			$token = $this->createToken($email);
			$this->id = $userData['User']['id'];
			$this->saveField('token', $token, array(
				'callbacks' => false, 
				'validate' => false
			));
			$userData['User']['token'] = $token;
		}
		$userData = Hash::extract($userData, 'User');
		return $userData;
	}

/**
 *
 * Sends the user a token to reset password
 *
 * @param Array $userData Array containing full_name, email and token
 * @return void 
 */
	public function sendToken($userData){
		$recipient = array(
			'full_name' => $userData['full_name'],
			'email' => $userData['email'],
		);
		$email = new PasswordEmail($recipient);
		$email->sendToken($userData['token']);
	}

/**
 *
 * Resets the password
 *
 * @param Array $data Array containing id, new_password, confirm_new_password
 * @return mixed return user data array or true if successful. false otherwise
 * @throws CakeException when passwords don't match
 */
	public function resetPassword($data){
		//check if new pwd matches confirm pwd
		if ($data['User']['new_password'] == $data['User']['confirm_new_password']) {
			//save the pwd if successful
			$data['User']['password'] = $data['User']['new_password'];
			$data['User']['token'] = null;
			$result = $this->save($data);
			return $result;
		} else {
			throw new CakeException ('Your new passwords do not match.');
		}
	}
// end of password related function
}
