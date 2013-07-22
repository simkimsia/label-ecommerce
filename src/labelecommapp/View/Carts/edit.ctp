<div class="carts form">
<?php echo $this->Form->create('Cart'); ?>
	<fieldset>
		<legend><?php echo __('Edit Cart'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('user_id');
		echo $this->Form->input('cart_item_count');
		echo $this->Form->input('total_amount');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Cart.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('Cart.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Carts'), array('action' => 'index')); ?></li>
	</ul>
</div>
