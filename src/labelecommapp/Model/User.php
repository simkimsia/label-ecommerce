<?php
App::uses('AppModel', 'Model');
App::uses('AuthComponent', 'Controller/Component');
App::uses('CakeSession', 'Model/Datasource');
App::uses('StringLib', 'UtilityLib.Lib');
App::uses('PasswordEmail', 'Lib/Email');

/**
 * User Model
 *
 * @property Group $Group
 */
class User extends AppModel {

	 public $validate = array(
	    	'full_name' => array(
	    		'rule' => 'notEmpty',
	    		'required' => true

    		),
	    	'short_name' => array(
	    		'rule' => 'notEmpty',
	    		'required' => true
    		),
	    	'email' => array(
	    		'rule' => 'notEmpty',
	    		'required' => true

    		),
	    	'password' => array(
	    		'rule' => 'notEmpty',
	    		'required' => true
    		)

	);


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
 * hasMany associations
 *
 * @var array
 */
	public $hasMany = array(
		'Order' => array(
		    'className' => 'Cart.Order',
		    'foreignKey' => 'user_id',
		    'dependent' => false,
		    'conditions' => '',
		    'fields' => '',
		    'order' => '',
		    'limit' => '',
		    'offset' => '',
		    'exclusive' => '',
		    'finderQuery' => '',
		    'counterQuery' => ''
		),
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
		$this->Behaviors->disable('Acl');
		return true;
	}
/**
 * Called after each successful save operation.
 *
 * @param boolean $created True if this save created a new record
 * @return void
 * @link http://book.cakephp.org/2.0/en/models/callback-methods.html#aftersave
 */
	 public function afterSave($created) {
	 	if ($created && $this->data['User']['email_to_user']) {
	 	 $newPassword = $this->data['User']['original_password'];
	 	 $recipient = array(
		 	 'full_name' => $this->data['User']['full_name'],
		 	 'email' => $this->data['User']['email']
	 	 );
	 	 $email = new PasswordEmail($recipient);
	 	 $email->sendNewPassword($newPassword);
	 	}
	 	$user_id	= AuthComponent::user('id');
	 	if ($user_id > 0) {
	 	 $user	 = $this->safeRead($user_id);
	 	 CakeSession::write('Auth.User', $user);
	 	}
	 	$this->Behaviors->enable('Acl');
	 	return true;
	 }

/**
 *
 * will remove the password and merge All the models that User belongsTo
 */
	 public function safeRead($id) {
	 	$this->recursive = 0;
	 	$result = $this->find('first', array(
	 	 'conditions' => array('User.id' => $id),
	 	 'contain' => null
	 	));

	 	$user = $result['User'];
	 	unset($user['password']);
	 	unset($result['User']);
	 	return array_merge($user, $result);
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
 * this is for registration
 */
	public function createAndSave($data) {
		$this->create();
		$newPassword = StringLib::generateRandom();
		$data['User']['original_password'] = $newPassword;
		$data['User']['password'] = $newPassword;
		return $this->save($data);
	}

/** 
 * 
 * this is needed for User to change her own password
 */
	public function changePassword($data) {
		//hash input password
		$hashedPWD = AuthComponent::password($data['User']['old_password']);

		//check if in the DB for the UserID
		//1 means yes, 0 means no
		$checkIfPWDInDB = $this->find('count', array(
			'conditions' => array(
				'User.password =' => $hashedPWD,
				'User.id =' => $data['User']['id']
				)
			)
		);

		if ($checkIfPWDInDB == 1) {
			$old = true;
		} else {
			$message = 'Your old password does not match.';
			$old = false;
		}

		//check if new pwd matches confirm pwd
		if ($data['User']['new_password'] == $data['User']['confirm_new_password']) {
			$confirm = true;
		} else {
			$message = 'Your new passwords do not match.';
			$confirm = false;
		}

		if ($old && $confirm) {
			//save the pwd if successful
			$data['User']['password'] = $data['User']['new_password'];
			$this->save($data);
			return 'Password successfully changed!';
		} else {
			return $message;
		}
	}

/**
 *
 * Checks the database to see if the email provided exists. If there is, return true.
 *
 * @param String $email Email Provided
 * @return Boolean True if email exists, else return false
 */
	public function checkEmailExists($email) {
		$emailExists = $this->find('count', array(
			'conditions' => array(
				'email' => $email)
			)
		);

		return ($emailExists === 1);
	}

/**
 *
 * Makes a token using the email given and the current dateTime
 *
 * @param String $email Email Provided
 * @return String $token The token
 */
	public function createToken($email) {
		$dateTime = date('Y-m-d H:i:s');

		$plaintext = $email . $dateTime;

		$token = Security::hash($plaintext, 'sha1', true);

		return $token;
	}
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
