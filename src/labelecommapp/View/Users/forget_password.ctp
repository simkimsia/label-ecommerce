<?php
echo $this->Form->create('User', array('action' => 'forget_password'));
echo $this->Form->inputs(array(
	'legend' => __('Reset password'),
	'User.email' => array('type' => 'email'),
));
echo $this->Form->end('Submit');
?>