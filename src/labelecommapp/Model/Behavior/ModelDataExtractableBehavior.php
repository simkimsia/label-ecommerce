<?php
/**
 * Retrieve expected model data Behavior class file.
 *
 * Adds ability to first extract model data by looking for subarray first
 *
 * Usage is straightforward:
 * From model: $this->extractModelData($array); // array = the array which you may or may not have subarray
 *
 * 
 */
class ModelDataExtractableBehavior extends ModelBehavior {

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
 * Extract a data based on Model alias
 * @param array $data. Data array
 * @param string $alias. Optional. Default null. If null, we use the $model->alias
 * @return array Either the subarray or the entire array.
 */
	public function extractModelData(Model &$model, $data, $alias = null) {
		if ($alias == null) {
			$alias = $model->alias;
		}
		$suppliedData = array();
		if (isset($data[$alias])) {
			$suppliedData = $data[$alias];
		} else {
			$suppliedData = $data;
		}
		return $suppliedData;
	}
}