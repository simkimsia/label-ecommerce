<div class="users container_16">
	<div class="grid_16" style="text-align: center" > 
		<?php echo $this->element('users_link_bar'); ?>
		<h2 class="titleFont"><?php echo h($user['User']['full_name']); ?></h2>
	</div>
	<div class="grid_10 push_5">
		<dl>
			<dt><?php echo __('Full Name'); ?></dt>
			<dd>
				<?php echo h($user['User']['full_name']); ?>
				&nbsp;
			</dd>
			<dt><?php echo __('Short Name'); ?></dt>
			<dd>
				<?php echo h($user['User']['short_name']); ?>
				&nbsp;
			</dd>
			<dt><?php echo __('Email'); ?></dt>
			<dd>
				<?php echo h($user['User']['email']); ?>
				&nbsp;
			</dd>
			<!--<dt><?php echo __('Title'); ?></dt>
			<dd>
				<?php echo h($user['User']['title']); ?>
				&nbsp;
			</dd>-->
			<dt><?php echo __('Group'); ?></dt>
			<dd>
				<?php echo $this->Html->link($user['Group']['name'], array('controller' => 'groups', 'action' => 'view', $user['Group']['id'])); ?>
				&nbsp;
			</dd>
			
		</dl>
	</div>
</div>