<?php
echo $this->Form->create('User', array('action' => 'login'));
echo $this->Form->inputs(array(
	'legend' => __('Login'),
	'User.email' => array('type' => 'email'),
	'User.password'
));
echo $this->Html->link('Forgot Password?', array('controller' => 'users', 'action' => 'forget_password'));
echo $this->Form->end('Login');
?>