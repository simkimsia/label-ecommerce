<div class="productsInGroups form">
<?php echo $this->Form->create('ProductsInGroup'); ?>
	<fieldset>
		<legend><?php echo __('Add Products In Group'); ?></legend>
	<?php
		echo $this->Form->input('product_id');
		echo $this->Form->input('product_group_id');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Products In Groups'), array('action' => 'index')); ?></li>
	</ul>
</div>
