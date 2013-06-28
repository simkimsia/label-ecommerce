<div class="productsInGroups view">
<h2><?php  echo __('Products In Group'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($productsInGroup['ProductsInGroup']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Product Id'); ?></dt>
		<dd>
			<?php echo h($productsInGroup['ProductsInGroup']['product_id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Product Group Id'); ?></dt>
		<dd>
			<?php echo h($productsInGroup['ProductsInGroup']['product_group_id']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Products In Group'), array('action' => 'edit', $productsInGroup['ProductsInGroup']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Products In Group'), array('action' => 'delete', $productsInGroup['ProductsInGroup']['id']), null, __('Are you sure you want to delete # %s?', $productsInGroup['ProductsInGroup']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Products In Groups'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Products In Group'), array('action' => 'add')); ?> </li>
	</ul>
</div>
