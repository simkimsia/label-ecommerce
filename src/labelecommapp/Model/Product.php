<?php
App::uses('AppModel', 'Model');
/**
 * Product Model
 *
 */
class Product extends AppModel {

	 public $hasMany = array(
        'ProductImage' => array(
            'className' => 'Attachment',
            'foreignKey' => 'foreign_key',
            'conditions' => array(
                'Attachment.model' => 'Product',
            ),
        ),
    );




/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'name';
	public function createWithAttachments($data) {
    // Sanitize your images before adding them
	    $images = array();
	    if (!empty($data['ProductImage'][0])) {
	      foreach ($data['ProductImage'] as $i => $image) {
	        if (is_array($data['ProductImage'][$i])) {
	          // Force setting the `model` field to this model
	          $image['model'] = 'Product';

	          // Unset the foreign_key if the user tries to specify it
	          if (isset($image['foreign_key'])) {
	            unset($image['foreign_key']);
	          }

	          $images[] = $image;
	        }
	      }
	    }
	    $data['ProductImage'] = $images;

	    // Try to save the data using Model::saveAll()
	    $this->create();
	    if ($this->saveAll($data)) {
	      return true;
	    }

	    // Throw an exception for the controller
	    throw new Exception(__("This post could not be saved. Please try again"));
	}
}
