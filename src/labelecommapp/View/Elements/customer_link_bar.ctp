<?php
	if (!empty($authUser)) {

		$message = 'Edit Profile';
		if ($this->params['action'] == 'edit_my_own_profile') {
			echo "<strong>" . $message . "</strong>";
		} else {
			echo $this->Html->link($message, array('action' => 'edit_my_own_profile'));
		}


		echo ' | ';

		$message = 'View Order History';
		if ($this->params['action'] == 'view_my_own_profile') {
			echo "<strong>" . $message . "</strong>";
		} else {
			echo $this->Html->link($message, array('action' => 'view_my_own_profile'));
		}

		echo ' | ';

		$message = 'Change Password';

		if ($this->params['action'] == 'change_my_own_password') {
			echo "<strong>" . $message . "</strong>";
		} else {
			echo $this->Html->link($message, array('action' => 'change_my_own_password'));
		}
		$message = 'Logout';
			echo ' | ';
			if ($this->params['action'] == 'logout') {
				echo "<strong>" . $message . "</strong>";
			} else {
				echo $this->Html->link($message, array('action' => 'logout'));
			}



	 }else {
		echo $this->Html->link('Login', array(
			'controller' => 'users',
			'action' => 'login'
		));
	}
?>