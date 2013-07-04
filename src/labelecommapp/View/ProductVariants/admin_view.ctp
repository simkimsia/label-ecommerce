<div class="productVariants view">
<h2><?php  echo __('Product Variant'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($productVariant['ProductVariant']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Product Id'); ?></dt>
		<dd>
			<?php echo h($productVariant['ProductVariant']['product_id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Created'); ?></dt>
		<dd>
			<?php echo h($productVariant['ProductVariant']['created']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modified'); ?></dt>
		<dd>
			<?php echo h($productVariant['ProductVariant']['modified']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Product Variant'), array('action' => 'edit', $productVariant['ProductVariant']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Product Variant'), array('action' => 'delete', $productVariant['ProductVariant']['id']), null, __('Are you sure you want to delete # %s?', $productVariant['ProductVariant']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Product Variants'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Product Variant'), array('action' => 'add')); ?> </li>
	</ul>
</div>
