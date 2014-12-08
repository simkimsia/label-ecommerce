<?php
/**
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
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

$cakeDescription = __d('cake_dev', 'ChildLabel: admin panel');
?>
<!DOCTYPE html>
<html>
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $cakeDescription ?>:
		<?php echo $title_for_layout; ?>
	</title>
	<?php
		//echo $this->Html->meta('icon');

		echo $this->Html->css('cake.generic');

		echo $this->Html->css('960');
		echo $this->Html->css('fonts');
		echo $this->Html->css('useful');

		echo $this->Html->script('navbar/jquery.color-RGBa-patch.js', array("block" => "scriptBottom"));
		echo $this->Html->script('navbar/navbar_initialize.js', array("block" => "scriptBottom"));
		echo $this->Html->css('navbar');

		echo $this->fetch('css');
		echo $this->fetch('scriptTop');
		echo $this->fetch('script');
	?>
	<link rel="shortcut icon" href="<?php echo $this->Html->assetUrl('img/favicon.ico?v=2'); ?>"/>
	<style type="text/css">
		@keyframes fade {
			0% { opacity: 0; }
			100% { opacity: 1; display: block; }
		}

		@-moz-keyframes fade {
			0% { opacity: 0; }
			100% { opacity: 1; display: block; }
		}

		@-webkit-keyframes fade {
			0% { opacity: 0; }
			100% { opacity: 1; display: block; }
		}

		@keyframes fadeOut {
			0% { opacity: 1; display: block;}
			100% { opacity: 0; }
		}

		@-moz-keyframes fadeOut {
			0% { opacity: 1; display: block; }
			100% { opacity: 0; }
		}

		@-webkit-keyframes fadeOut {
			0% { opacity: 1; display: block; }
			100% { opacity: 0; }
		}

		/* table related css  */
		table#results_list {
			border-collapse: collapse;
			width: 100%;
			margin-top: 1%;
		}
		table#results_list tr:nth-of-type(2n+1) {
			background: none repeat scroll 0 0 #EEEEEE;
		}
		table#results_list th {
			background: none repeat scroll 0 0 #333333;
			color: white;
			font-weight: bold;
		}
		table#results_list th a{
			color: white;
		}
		table#results_list td, th {
			border: 1px solid #CCCCCC;
			padding: 6px;
			text-align: left;
		}
		table#results_list td * {
			margin: 0px;
			padding: 0px;
		}
		table#results_list td ul {
			margin-left: 30px;
			padding: 0px;
		}
		table#results_list tr.selected { background: #B7DDF2; } /* Use a real colour */
		table#results_list tr.* { background: transparent; }

		input.check{
			margin: 0px;
			padding: 0px;
		}

		.is-visible {
			opacity: 1;
			animation: fade 2s;
			-moz-animation: fade 2s;
			-webkit-animation: fade 2s;
		}

		.is-hidden {
			/*opacity: 0;*/
			animation: fadeOut 2s;
			-moz-animation: fadeOut 2s;
			-webkit-animation: fadeOut 2s;
		}

		.is-removed {
			display: none;
		}

		#note {
			position: fixed;
			z-index: 6001;
			top: 0;
			left: 0;
			right: 0;
			background: #fde073;
			text-align: center;
			line-height: 2.5;
			overflow: hidden;
			-webkit-box-shadow: 0 0 5px black;
			-moz-box-shadow:    0 0 5px black;
			box-shadow:         0 0 5px black;
		}

		#note1 {
			position: fixed;
			z-index: 6001;
			top: 0;
			left: 0;
			right: 0;
			background: #fde073;
			text-align: center;
			line-height: 2.5;
			overflow: hidden;
			-webkit-box-shadow: 0 0 5px black;
			-moz-box-shadow:    0 0 5px black;
			box-shadow:         0 0 5px black;
		}


		.half {
			width: 50%;
		}
		.checkboxwidth {
			width: 2%;
		}
		.itemnowidth {
			width: 5%;
		}
		.quantitywidth {
			width: 7%;
		}
		.tenth {
			width: 10%;
		}
		.fifth {
			width: 20%;
		}
		.third {
			width: 33%;
		}
		.quarter {
			width: 25%;
		}

	</style>
</head>
<body>
	<div id="container">
		<div id="header">
			<h1><?php echo $this->Html->link($cakeDescription, '/admin/products');


					if (!empty($authUser)){
						echo "<div style='float:right'>";
						echo "Logged in as ";
						echo $this->Html->link($authUser['short_name'], array('controller' => 'users', 'action' => 'view_my_own_profile'));
						echo " | ";
						echo $this->Html->link(('Logout'), array('controller' => 'users', 'action' => 'logout'));
						echo "</div>";
					}

			?></h1>
		</div>
		<?php
			if (!empty($authUser)) :
					$dashboardTabs = array('Home', 'Orders', 'Shipping', 'Products', 'Users', 'Slideshow');
					$dashboardLinks = array(
							'Home'      => '/admin/home',
							'Orders'    => '/admin/cart/orders',
							'Shipping'  => '/admin/shipping_options',
							'Products'  => '/admin/products',
							'Users'     => '/admin/users',
							'Slideshow' => '/admin/slideshow_pictures',
							);

					$groupID = $authUser['Group']['id'];

					switch ($groupID) {
						case SUPER_ADMIN:
							$group = "Super Admins";
							break;
						case SHOP_ADMIN:
							$group = "Shop Admins";
							break;
						case CUSTOMER:
							$group = "Customer";
							break;
					}
			?>

			<div class="nav-wrap">
				<ul class="group" id="nav-bar">
					<?php
						$currentController = $this->request->controller;
						if (strtolower($currentController) === 'pages') {
							$currentController = 'home';
						}
						if (strtolower($currentController) === 'product_variants') {
							$currentController = 'products';
						}
						if (strtolower($currentController) === 'shipping_options') {
							$currentController = 'shipping';
						}
						if (strtolower($currentController) === 'product_images') {
							$currentController = 'products';
						}
						foreach ($dashboardTabs as $tab) {
							$class = "";
							$highlightTab = (strcasecmp($currentController, $tab) === 0);
							if ($highlightTab) {
								$class = "class='current_page_item_two'";
							}
							echo "<li $class>";

							echo $this->Html->link($tab, $dashboardLinks[$tab]);
							echo "</li>";
						}
					?>
				</ul>
			</div>
		<?php endif; // if not empty authUser ?>
		<div id="content">

			<?php echo $this->Session->flash(); ?>

			<?php echo $this->fetch('content'); ?>
		</div>
		<div id="footer">
			<?php
			/*
			echo $this->Html->link(
					$this->Html->image('cake.power.gif', array('alt' => $cakeDescription, 'border' => '0')),
					'http://www.cakephp.org/',
					array('target' => '_blank', 'escape' => false)
				);
			*/
			?>
		</div>
	</div>
	<?php //echo $this->element('sql_dump'); ?>
	<?php echo $this->element('constants'); ?>
		<?php echo $this->AssetCompress->script('backbone-base'); ?>
		<script type="text/javascript">
			window.triggerNotes = [];
			$(function(){
				var el = document.getElementById("note");
				if (el != null) {
					el.className = 'is-visible';
					setTimeout(function () {
						el.className = 'is-hidden';
						setTimeout(function () {
							el.className = 'is-removed';
						}, 2000);
					}, 3000);
				}
				$(document).ajaxStart(function() {
					var el = document.getElementById("note1");
					if (el != null) {
						el.innerHTML = "Loading...";
						el.className = 'is-visible';
					}
				});
				$(document).ajaxStop(function() {
					var el = document.getElementById("note1");
					if (el != null) {
						el.className = 'is-hidden';
						setTimeout(function () {
							el.className = 'is-removed';
							var notes = window.triggerNotes;
							for (var i = 0; i < notes.length; i++) {
								$.triggerNote(notes[i], i);
							}
							window.triggerNotes = [];
						}, 2000);
					}
				});
			});
			$(document).ready(function() {
				$.triggerNote = function(message, messageIndex) {
					var el = document.getElementById("note1");
					messageIndex += 1;
					var showDuration = messageIndex * 3000;
					var removeDuration = messageIndex * 2000;
					if (el.className == 'is-removed' || el.className == 'is-hidden') {
						el.innerHTML = message;
						el.className = 'is-visible';
						setTimeout(function () {
							el.className = 'is-hidden';
							setTimeout(function () {
								el.className = 'is-removed';
							}, removeDuration);
						}, showDuration);
					}
				}
			});
		</script>
		<?php echo $this->fetch('libScriptsBottom'); ?>
		<?php echo $this->fetch('scriptBottom'); ?>
</body>
</html>
