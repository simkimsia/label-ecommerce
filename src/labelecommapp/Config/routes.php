<?php
/**
 * Routes configuration
 *
 * In this file, you set up routes to your controllers and their actions.
 * Routes are very important mechanism that allows you to freely connect
 * different urls to chosen controllers and their actions (functions).
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
 * @package       app.Config
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
/**
 * Here, we are connecting '/' (base path) to controller called 'Pages',
 * its action called 'display', and we pass a param to select the view file
 * to use (in this case, /app/View/Pages/home.ctp)...
 */

	Router::parseExtensions('json');
	Router::parseExtensions('csv');


	Router::connect('/', array('controller' => 'pages', 'action' => 'display', 'index'));

	Router::connect('/call', array('controller' => 'pages', 'action' => 'display', 'call'));

	Router::connect('/about', array('controller' => 'pages', 'action' => 'display', 'about'));

	Router::connect('/faq', array('controller' => 'pages', 'action' => 'display', 'faq'));

	Router::connect('/thankyou', array('controller' => 'pages', 'action' => 'display', 'thankyou'));

	Router::connect('/enquiry_email/add', array('controller' => 'users', 'action' => 'send_enquiry_email'));

	Router::connect('/admin', array('controller' => 'products', 'action' => 'index', 'admin' => true, 'prefix' => 'admin'));

	Router::connect('/admin/home', array('controller' => 'pages', 'action' => 'display', 'admin_home', 'admin' => true, 'prefix' => 'admin'));

	// customized routes for faq and about

/**
 * ...and connect the rest of 'Pages' controller's urls.
 */
	//Router::connect('/pages/*', array('controller' => 'pages', 'action' => 'thankyou'));

	Router::connect('/admin/products/:product_id/variants/add',
		array(
			'controller' => 'product_variants',
			'action'     => 'add_by_product',
			'admin'      => true,
			'prefix'     => 'admin'
			),
		array(
			'pass'       => array('product_id'),
			'product_id' => '[0-9]+'
		)
	);

	Router::connect('/admin/products/:product_id/variants',
		array(
			'controller' => 'product_variants',
			'action'     => 'index_by_product', "[method]" => "GET",
			'admin'      => true,
			'prefix'     => 'admin'
			),
		array(
			'pass'       => array('product_id'),
			'product_id' => '[0-9]+'
		)
	);

	Router::connect('/admin/products/:product_id/variants/:id',
		array(
			'controller' => 'product_variants',
			'action'     => 'edit_by_product',
			'admin'      => true,
			'prefix'     => 'admin'
			),
		array(
			'pass'       => array('product_id', 'id'),
			'product_id' => '[0-9]+',
			'id'         => '[0-9]+'
		)
	);

	Router::connect('/admin/products/:product_id/variants/:id/delete',
	array(
		'controller' => 'product_variants',
		'action'     => 'delete_by_product',
		'admin'      => true,
		'prefix'     => 'admin'
		),
	array(
		'pass'       => array('product_id', 'id'),
		'product_id' => '[0-9]+',
		'id'         => '[0-9]+'
		)
	);

	Router::connect('/admin/products/:product_id/variants/:product_variant_id/images/add',
		array(
			'controller' => 'product_images',
			'action'     => 'add_by_product',
			'admin'      => true,
			'prefix'     => 'admin'
			),
		array(
			'pass'               => array('product_id', 'product_variant_id'),
			'product_id'         => '[0-9]+',
			'product_variant_id' => '[0-9]+'
		)
	);

	Router::connect('/admin/products/:product_id/variants/:product_variant_id/images',
		array(
			'controller' => 'product_images',
			'action'     => 'view_by_product',
			'admin'      => true,
			'prefix'     => 'admin'
			),
		array(
			'pass'               => array('product_id','product_variant_id'),
			'product_id'         => '[0-9]+',
			'product_variant_id' => '[0-9]+'
		)
	);

	Router::connect('/admin/products/:product_id/variants/:product_variant_id/images/:id',
		array(
			'controller' => 'product_images',
			'action'     => 'edit_by_product',
			'admin'      => true,
			'prefix'     => 'admin'
			),
		array(
			'pass'               => array('product_id','product_variant_id', 'id'),
			'product_id'         => '[0-9]+',
			'product_variant_id' => '[0-9]+',
			'id'                 => '[0-9]+'
		)
	);

	Router::connect('/admin/products/:product_id/variants/:product_variant_id/images/:id/delete',
	array(
		'controller' => 'product_images',
		'action'     => 'delete_by_product',
		'admin'      => true,
		'prefix'     => 'admin'
		),
	array(
		'pass'       => array('product_id','product_variant_id', 'id'),
		'product_id' => '[0-9]+',
		'product_variant_id' => '[0-9]+',
		'id'         => '[0-9]+'
		)
	);

	Router::connect('/admin/products/:product_id/variants/:product_variant_id/images/swap/:left/:right',
		array(
			'controller' => 'product_images',
			'action'     => 'swap_order',
			'admin'      => true,
			'prefix'     => 'admin'
			),
		array(
			'pass'               => array('product_id','product_variant_id', 'left', 'right'),
			'product_id'         => '[0-9]+',
			'product_variant_id' => '[0-9]+',
			'left'               => '[0-9]+',
			'right'              => '[0-9]+'
			)
		);

	Router::connect('/admin/products/:product_id/variants/:left/:right',
		array(
			'controller' => 'product_variants',
			'action'     => 'swap_order',
			'admin'      => true,
			'prefix'     => 'admin'
			),
		array(
			'pass'               => array('product_id', 'left', 'right'),
			'product_id'         => '[0-9]+',
			'left'               => '[0-9]+',
			'right'              => '[0-9]+'
			)
		);

	//url for adding items to cart
	Router::connect('/cart/:product_variant_id',
		array(
		'controller' => 'cart_items',
		'action'     => 'add_item'

		),

		array(
			'pass' => array('product_variant_id'),
			'product_variant_id' => '[0-9]+'
			)

	);

		Router::connect('/cart/remove/:product_variant_id/:hashed',
		array(
			'controller' => 'cart_items',
			'action'     => 'remove_item'

		),

		array(
			'pass'               => array('product_variant_id'),
			'product_variant_id' => '[0-9]+',
			'hashed'  => 'val-[\d]+'
			)

	);

	Router::connect('/admin/products/:product_id/rep_img/',
	array(
			'controller' => 'product_representative_images',
			'action' => 'add',
			'admin' => true,
			'prefix' => 'admin'
		),
	array(
			'pass'               => array('product_id'),
			'product_id'         => '[0-9]+',

		)

	);

	Router::connect('/admin/products/:product_id/rep_img/:id/delete',
	array(
			'controller' => 'product_representative_images',
			'action' => 'delete',

			'admin' => true,
			'prefix' => 'admin'
		),
	array(
			'pass'               => array('product_id'),
			'product_id'         => '[0-9]+',
			'id'				 => '[0-9]+'

		)

	);





/**
 * Load all plugin routes. See the CakePlugin documentation on
 * how to customize the loading of plugin routes.
 */
	CakePlugin::routes();

/**
 * Load the CakePHP default routes. Only remove this if you do not want to use
 * the built-in default routes.
 */
	require CAKE . 'Config' . DS . 'routes.php';
