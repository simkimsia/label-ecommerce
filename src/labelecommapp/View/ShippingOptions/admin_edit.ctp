<div class="shippingOptions form">
<?php echo $this->Form->create('ShippingOption'); ?>
	<fieldset>
		<legend><?php echo __('Edit Shipping Option'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('name');
		echo $this->Form->input('period');
		echo $this->Form->input('fees');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('ShippingOption.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('ShippingOption.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Shipping Options'), array('action' => 'index')); ?></li>
	</ul>
</div>
