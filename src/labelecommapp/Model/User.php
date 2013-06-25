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
}
