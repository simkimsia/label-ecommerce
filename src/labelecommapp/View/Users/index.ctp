<div class="users container_16">
	<div class="grid_16" style="text-align: center" > 
		<?php echo $this->element('users_link_bar'); ?>
		<h2 class="titleFont"><?php echo __('Users'); ?></h2>
	</div>
	<table id="results_list">
		<tr>
			<th><?php echo $this->Paginator->sort('email'); ?></th>
			<th><?php echo $this->Paginator->sort('short_name'); ?></th>
			<th><?php echo $this->Paginator->sort('full_name'); ?></th>
			<th><?php echo $this->Paginator->sort('group_id'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
		</tr>
		<?php foreach ($users as $user): ?>
			<tr>
				<td><?php echo h($user['User']['email']); ?>&nbsp;</td>
				<td><?php echo $this->Html->link($user['User']['short_name'], array('action' => 'view', $user['User']['id'])); ?></td>
				<td><?php echo h($user['User']['full_name']); ?>&nbsp;</td>
				<td><?php echo $this->Html->link($user['Group']['name'], array('controller' => 'groups', 'action' => 'view', $user['Group']['id'])); ?></td>
				<td><?php echo h($user['User']['title']); ?>&nbsp;</td>
				<td class="actions">
					<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $user['User']['id'])); ?>
					<?php echo $this->Form->postLink(__('Suspend'), array('action' => 'suspend', $user['User']['id']), null, __('Are you sure you want to suspend %s?', $user['User']['short_name'])); ?>
				</td>
			</tr>
		<?php endforeach; ?>
	</table>
	<p>
		<?php
			echo $this->Paginator->counter(array(
				'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
			));
		?>
	</p>
	<div class="paging">
		<?php
			echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
			echo $this->Paginator->numbers(array('separator' => ''));
			echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
		?>
	</div>
</div>

