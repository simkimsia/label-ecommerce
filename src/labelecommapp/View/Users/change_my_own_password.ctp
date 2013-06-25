<div class="users container_16">
	<div class="grid_16" style="text-align: center">
		<?php echo $this->element('users_link_bar'); ?>
		<h2 class="titleFont"><?php echo __('Change Password'); ?></h2>
	</div>
	<?php echo $this->Form->create('User'); ?>
		<fieldset class="grid_16">
			<?php
				echo $this->Form->input('id');
				echo $this->Form->input('old_password', array('type' => 'password'));
				echo $this->Form->input('new_password', array('type' => 'password'));
				echo $this->Form->input('confirm_new_password', array('type' => 'password'));
			?>
		</fieldset>
	<?php echo $this->Form->end(__('Change!')); ?>
</div>