<?php
/**
 * FindXORCreatableBehavior Behavior class file.
 *
 * Within a single method, we can run a find if exists, else create function.
 *
 * Usage is straightforward:
 * From model: $this->findXORCreate($data, $findFields = array())
 *
 * 
 */
class FindXORCreatableBehavior extends ModelBehavior {

/**
 * Behavior settings
 *
 * @access public
 * @var array
 */
	public $settings = array();

/**
 * Behavior settings
 *
 * @access public
 * @var array
 */
	public $model = null;

/**
 * Configuration method.
 *
 * @param object $Model Model object
 * @param array $config Config array
 * @access public
 * @return boolean
 */
	public function setup(Model $Model, $config = array()) {
		$this->model = $Model;

		return true;
	}

/**
 *
 * Find a record XOR create a new record of this model
 * @param array $data. Should not contain data within the subarray of the mode.
 * @return array Either the found or newly created Model data 
 */
	public function findXORCreate(Model &$model, $data, $findFields = array()) {
		$suppliedData = array();
		if (isset($data[$model->alias])) {
			$suppliedData = $data[$model->alias];
		} else {
			$suppliedData = $data;
		}
		$conditions = array();
		if (empty($findFields)) {
			$conditions = $suppliedData;
		} else {
			foreach($findFields as $field) {
				$conditions[$field] = $suppliedData[$field];
			}
		}
		$found = $model->find('first', array(
			'conditions' => $conditions
		));
		if ($found) {
			return $found;
		} else {
			$model->create();
			$created = $model->save($suppliedData);
			return $created;
		}
	}
}