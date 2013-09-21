<?php
	if (!empty($authUser)) {
		$message = 'Edit Profile';
		if ($this->params['action'] == 'edit_my_own_profile') {
			echo "<strong>" . $message . "</strong>";
		} else {
			echo $this->Html->link($message, array('action' => 'edit_my_own_profile'));
		}

		$message = 'Change Password';
		echo ' | ';
		if ($this->params['action'] == 'change_my_own_password') {
			echo "<strong>" . $message . "</strong>";
		} else {
			echo $this->Html->link($message, array('action' => 'change_my_own_password'));
		}

		if ($authUser['group_id'] == SUPER_ADMIN) {
			$message = 'All Users';
			echo ' | ';
			if ($this->params['action'] == 'index') {
				echo "<strong>" . $message . "</strong>";
			} else {
				echo $this->Html->link($message, array('action' => 'index'));
			}
		} else if ($authUser['group_id'] == SHOP_ADMIN) {
			$message = 'ChildLabel Users';
			echo ' | ';
			if ($this->params['action'] == 'index') {
				echo "<strong>" . $message . "</strong>";
			} else {
				echo $this->Html->link($message, array('action' => 'index'));
			}
		}
		if ($authUser['group_id'] == SHOP_ADMIN || $authUser['group_id'] == SUPER_ADMIN) {
			$message = 'Add User';
			echo ' | ';
			if ($this->params['action'] == 'add') {
				echo "<strong>" . $message . "</strong>";
			} else {
				echo $this->Html->link($message, array('action' => 'add'));
			}
		}
			$message = 'Logout';
			echo ' | ';
			if ($this->params['action'] == 'logout') {
				echo "<strong>" . $message . "</strong>";
			} else {
				echo $this->Html->link($message, array('action' => 'logout'));
			}			

		}

	 else {
		echo $this->Html->link('Login', array(
			'controller' => 'users',
			'action' => 'login'
		));
	}
?>