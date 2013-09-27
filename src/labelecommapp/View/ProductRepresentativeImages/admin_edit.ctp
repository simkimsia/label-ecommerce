<div class="productRepresentativeImages form">
<?php echo $this->Form->create('ProductRepresentativeImage'); ?>
	<fieldset>
		<legend><?php echo __('Edit Product Representative Image'); ?></legend>
	<?php
		echo $this->Form->input('id');
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

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('ProductRepresentativeImage.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('ProductRepresentativeImage.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Product Representative Images'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Products'), array('controller' => 'products', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Product'), array('controller' => 'products', 'action' => 'add')); ?> </li>
	</ul>
</div>
