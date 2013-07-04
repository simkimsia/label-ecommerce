<?php
App::uses('AppModel', 'Model');
/**
 * Attachment Model
 *
 */
class Attachment extends AppModel {


	public $actsAs = array(
        'Upload.Upload' => array(
            'attachment' => array(
                'thumbnailSizes' => array(
                    'xvga' => '1024x768',
                    'vga' => '640x480',
                    'thumb' => '80x80',
                ),
            ),
        ),
    );

	public $belongsTo = array(
        'Product' => array(
            'className' => 'Product',
            'foreignKey' => 'foreign_key',
        )
        
    );
/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'name';

}
