<div class="productImages form">
<?php echo $this->Form->create('ProductImage'); ?>
	<fieldset>
		<legend><?php echo __('Edit Product Image'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('order');
		echo $this->Form->input('type');
		echo $this->Form->input('product_id');
		echo $this->Form->input('filename');
		echo $this->Form->input('dir');
		echo $this->Form->input('mimetype');
		echo $this->Form->input('filesize');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('ProductImage.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('ProductImage.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Product Images'), array('action' => 'index')); ?></li>
	</ul>
</div>
