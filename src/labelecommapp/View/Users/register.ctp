<div class="users form">
<?php echo $this->Form->create('User', array('style' => 'margin-top:60px;', 'onsubmit' => "return validateForm();")); ?>
	<fieldset>
		<legend><?php echo __('Add User'); ?></legend>
	<?php
		echo $this->Form->input('full_name');
		echo $this->Form->input('short_name');
		echo $this->Form->input('email');
		echo $this->Form->input('password');
		echo $this->Form->input("confirm_password", array('type' => 'password'));
		echo $this->Form->input('token', array('type'=>'hidden', 'value' => 'NULL'));
		echo $this->Form->input('group_id', array('type' => 'hidden', 'value' => '2'));
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>

</div>
