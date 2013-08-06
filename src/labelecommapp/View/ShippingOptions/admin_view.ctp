<div class="shippingOptions view">
<h2><?php  echo __('Shipping Option'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($shippingOption['ShippingOption']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Name'); ?></dt>
		<dd>
			<?php echo h($shippingOption['ShippingOption']['name']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Period'); ?></dt>
		<dd>
			<?php echo h($shippingOption['ShippingOption']['period']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Fees'); ?></dt>
		<dd>
			<?php echo h($shippingOption['ShippingOption']['fees']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Shipping Option'), array('action' => 'edit', $shippingOption['ShippingOption']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Shipping Option'), array('action' => 'delete', $shippingOption['ShippingOption']['id']), null, __('Are you sure you want to delete # %s?', $shippingOption['ShippingOption']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Shipping Options'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Shipping Option'), array('action' => 'add')); ?> </li>
	</ul>
</div>
