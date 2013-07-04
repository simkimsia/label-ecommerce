
<div class="productGroups view">
<h2><?php  echo __('Product Group'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($productGroup['ProductGroup']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Name'); ?></dt>
		<dd>
			<?php echo h($productGroup['ProductGroup']['name']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Type'); ?></dt>
		<dd>
			<?php echo h($productGroup['ProductGroup']['type']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Created'); ?></dt>
		<dd>
			<?php echo h($productGroup['ProductGroup']['created']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modified'); ?></dt>
		<dd>
			<?php echo h($productGroup['ProductGroup']['modified']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<!--
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Product Group'), array('action' => 'edit', $productGroup['ProductGroup']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Product Group'), array('action' => 'delete', $productGroup['ProductGroup']['id']), null, __('Are you sure you want to delete # %s?', $productGroup['ProductGroup']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Product Groups'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Product Group'), array('action' => 'add')); ?> </li>
	</ul>
</div>
-->