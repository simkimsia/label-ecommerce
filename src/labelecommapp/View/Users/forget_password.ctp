<?php
$admin = $this->request->params['admin'];
$formAttributes = array('action' => 'forget_password');
if (!$admin) {
  $formAttributes['style'] = 'margin-top:100px;';
}
echo $this->Form->create('User', $formAttributes);
echo '<h1>Forgotten Password? Enter here</h1>';
echo $this->Form->inputs(array(
	'User.email' => array('type' => 'email'),
  'fieldset' => false,
));
echo $this->Form->end('Submit');
?>