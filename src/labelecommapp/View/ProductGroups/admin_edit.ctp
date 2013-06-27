<div class="productGroups form">
<?php echo $this->Form->create('ProductGroup'); ?>
	<fieldset>
		<legend><?php echo __('Edit Product Group'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('name');
		echo $this->Form->input('type');
		echo $this->Form->input('created');
		echo $this->Form->input('modified');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('ProductGroup.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('ProductGroup.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Product Groups'), array('action' => 'index')); ?></li>
	</ul>
</div>
