<div class="productVariants form">
<?php echo $this->Form->create('ProductVariant'); ?>
	<fieldset>
		<legend><?php echo __('Add Product Variant'); ?></legend>
	<?php
		echo $this->Form->input('product_id', array('type' => 'hidden', 'value' => $productId));
		echo $this->Form->input('name');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Product Variants'), array('action' => 'index_by_product', 'id' => $productId)); ?></li>
	</ul>
</div>
