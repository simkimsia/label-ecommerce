<div class="users form">
	<div class="contentArea">
		<div class="topContent">
		</div>
		<div class="mainContent">
<?php echo $this->Form->create('User', array('style' => 'height:369px;width:845px;margin-left:62px;', 'onsubmit' => "return validateForm();")); ?>
	
		<div style="color:#0099CC">Registration!</div>
		<br>
	<?php
		echo $this->Form->input('full_name');
		echo $this->Form->input('short_name');
		echo $this->Form->input('email');
		echo $this->Form->input('password');
		echo $this->Form->input("confirm_password", array('type' => 'password'));
		echo $this->Form->input('token', array('type'=>'hidden', 'value' => 'NULL'));
		echo $this->Form->input('group_id', array('type' => 'hidden', 'value' => '2'));
	?>
	
<?php echo $this->Form->end(__('Submit')); ?>

		</div>
	<div class="footerContent"></div>
	</div>
</div>

