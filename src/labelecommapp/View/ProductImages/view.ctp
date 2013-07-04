<div class="productImages view">
<h2><?php  echo __('Product Image'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($productImage['ProductImage']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Order'); ?></dt>
		<dd>
			<?php echo h($productImage['ProductImage']['order']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Type'); ?></dt>
		<dd>
			<?php echo h($productImage['ProductImage']['type']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Product Id'); ?></dt>
		<dd>
			<?php echo h($productImage['ProductImage']['product_id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Filename'); ?></dt>
		<dd>
			<?php echo h($productImage['ProductImage']['filename']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Dir'); ?></dt>
		<dd>
			<?php echo h($productImage['ProductImage']['dir']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Mimetype'); ?></dt>
		<dd>
			<?php echo h($productImage['ProductImage']['mimetype']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Filesize'); ?></dt>
		<dd>
			<?php echo h($productImage['ProductImage']['filesize']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Created'); ?></dt>
		<dd>
			<?php echo h($productImage['ProductImage']['created']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modified'); ?></dt>
		<dd>
			<?php echo h($productImage['ProductImage']['modified']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Product Image'), array('action' => 'edit', $productImage['ProductImage']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Product Image'), array('action' => 'delete', $productImage['ProductImage']['id']), null, __('Are you sure you want to delete # %s?', $productImage['ProductImage']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Product Images'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Product Image'), array('action' => 'add')); ?> </li>
	</ul>
</div>
