<div class="productVariants form">
<?php echo $this->Form->create('ProductVariant'); ?>
	<fieldset>
		<legend><?php echo __('Edit Product Variant'); ?></legend>
	<?php
		echo $this->Form->input('id', array('type' => 'hidden', 'value' => $id));
		echo $this->Form->input('product_id', array('type' => 'hidden', 'value' => $product_id ));
		echo $this->Form->input('name');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('ProductVariant.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('ProductVariant.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Product Variants'), '/admin/products/'.$product_id.'/variants'); ?></li>
		<li><?php echo $this->Html->link(__('Images of this variant'), '/admin/products/'.$product_id.'/variants/'.$id.'/images');?></li>
	</ul>
</div>
