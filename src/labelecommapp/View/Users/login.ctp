
<div class="contentArea">
	<div class="topContent">
	</div>
	<div class="mainContent">
<?php
echo $this->Form->create('User', array('action' => 'login', 'style' => "height:200px;width:845px;margin-left:62px;"));?>

	<div style="color:#0099CC">Log in!</div>
	<br>
	<?php
	echo $this->Form->input('email');
	echo $this->Form->input('password');


echo $this->Html->link('Forgot Password?', array('controller' => 'users', 'action' => 'forget_password'));
echo $this->Form->end('Login');
?>
<br/>
	</div>
	<div class="footerContent"></div>
</div>
