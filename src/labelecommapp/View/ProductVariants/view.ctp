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

