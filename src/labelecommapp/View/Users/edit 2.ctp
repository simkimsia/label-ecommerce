<div class="users container_16">
	<div class="grid_16" style="text-align: center">
		<?php echo $this->element('users_link_bar'); ?>
		<h2 class="titleFont"><?php echo __('Edit User'); ?></h2>
	</div>
	<?php echo $this->Form->create('User'); ?>
		<fieldset class="grid_16">
			<?php
				echo $this->Form->input('id');
				echo $this->Form->input('full_name');
				echo $this->Form->input('short_name');
				echo $this->Form->input('email');
				echo $this->Form->input('title');
				if ($this->action == 'edit') {
					if ($authUser['group_id'] == SALES_MANAGERS || $authUser['group_id'] == ADMINISTRATORS){
						echo $this->Form->input('group_id');
					}
				}
			?>
		</fieldset>
	<?php echo $this->Form->end(__('Submit')); ?>
</div>
