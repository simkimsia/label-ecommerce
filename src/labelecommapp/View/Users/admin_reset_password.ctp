<?php
echo $this->Form->create('User', array(
  'url' => Router::url(array(
    'action' => 'reset_password',
    'controller' => 'users',
    'prefix' => 'admin',
    'admin' => true,
    '?' => array('token' => $token)
  ))
));
echo $this->Form->inputs(array(
  'legend' => __('Please choose a new password'),
  'User.id' => array('type' => 'hidden'),
  'User.new_password' => array('type' => 'password'),
  'User.confirm_new_password' => array('type' => 'password'),
));
echo $this->Form->end('Submit');
?>