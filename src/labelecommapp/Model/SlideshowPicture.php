<?php
App::uses('AppModel', 'Model');

/**
 * SlideshowPicture Model
 *
 */
class SlideshowPicture extends AppModel {

	public $actsAs = array(
        'Upload.Upload' => array(
            'filename' => array(
                    'thumbnailSizes' => array(
                        'xvga'  => '1024x768',
                        'vga'   => '640x480',
                        'thumb' => '80x80'
                )
            )
        )
    );




    public $virtualFields = array(
        'thumb_url' => 'CONCAT("/files/slideshow_picture/filename/",SlideshowPicture.id,"/thumb_",SlideshowPicture.filename)',
	        'view_url' => 'CONCAT("/files/slideshow_picture/filename/",SlideshowPicture.id,"/",SlideshowPicture.filename)'
	    );

    public function reassignOrder() {
	    $options = [
		    'conditions' => [
			    'SlideshowPicture.position >' => 0,
		    ],
		    'order' => [
			    'SlideshowPicture.position ASC',
		    ]
	    ];
	    $pictures = $this->find('all', $options);
	    $index = 1;
	    foreach($pictures as $key => $picture) {
		    $pictures[$key]['SlideshowPicture']['position'] = $index;
		    $index++;
	    }
	    return $this->saveAll($pictures);
    }

}
