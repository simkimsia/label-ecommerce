<div class="users container_16">

	<div class="contentArea">
		<div class="topContent">
		</div>
		<div class="mainContent">

			<div class="grid_16" style="text-align: center;" > 
				<?php echo $this->element('users_link_bar'); ?>
				<h2 class="titleFont"><?php echo h($users_fullname); ?></h2>
			</div>
		<table id="results_list" style="margin-left:100px;">
		<tr>
			<th style="width:200px"><?php echo ('Order Number'); ?></th>
			<th><?php echo ('invoice_number'); ?></th>
			<th><?php echo ('payment_status'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
		</tr>
		<?php foreach ($users_orders as $key => $orders): ?>
			<tr>
				<td><?php echo h($orders['Order']['order_number']); ?>&nbsp;</td>
				<td><?php echo h($orders['Order']['invoice_number']); ?>&nbsp;</td>
				<td><?php echo h($orders['Order']['payment_status']); ?></td>
				
				<td class="actions">
					<?php //echo $this->Html->link(__('Edit'), array('action' => 'edit', $user['User']['id'])); ?>
					<?php //echo $this->Form->postLink(__('Suspend'), array('action' => 'suspend', $user['User']['id']), null, __('Are you sure you want to suspend %s?', $user['User']['short_name'])); ?>
				</td>
			</tr>
		<?php endforeach; ?>
	</table>

		</div> <!-- end of mainContent -->
		<div class="footerContent"></div>
	</div> <!-- end of contentArea -->

</div>