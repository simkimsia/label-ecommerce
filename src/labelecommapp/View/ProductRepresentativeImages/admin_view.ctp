<div class="productRepresentativeImages view">
<h2><?php  echo __('Product Representative Image'); ?></h2>
	<dl>

	 	<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($productRepresentativeImage['ProductRepresentativeImage']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Product'); ?></dt>
		<dd>
			<?php echo $this->Html->link($productRepresentativeImage['Product']['name'], array('controller' => 'products', 'action' => 'view', $productRepresentativeImage['Product']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Filename'); ?></dt>
		<dd>
			<?php echo h($productRepresentativeImage['ProductRepresentativeImage']['filename']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Dir'); ?></dt>
		<dd>
			<?php echo h($productRepresentativeImage['ProductRepresentativeImage']['dir']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Mimetype'); ?></dt>
		<dd>
			<?php echo h($productRepresentativeImage['ProductRepresentativeImage']['mimetype']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Filesize'); ?></dt>
		<dd>
			<?php echo h($productRepresentativeImage['ProductRepresentativeImage']['filesize']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Created'); ?></dt>
		<dd>
			<?php echo h($productRepresentativeImage['ProductRepresentativeImage']['created']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modified'); ?></dt>
		<dd>
			<?php echo h($productRepresentativeImage['ProductRepresentativeImage']['modified']); ?>
			&nbsp;
		</dd>
	</dl> 
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Product Representative Image'), array('action' => 'edit', $productRepresentativeImage['ProductRepresentativeImage']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Product Representative Image'), array('action' => 'delete', $productRepresentativeImage['ProductRepresentativeImage']['id']), null, __('Are you sure you want to delete # %s?', $productRepresentativeImage['ProductRepresentativeImage']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Product Representative Images'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Product Representative Image'), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Products'), array('controller' => 'products', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Product'), array('controller' => 'products', 'action' => 'add')); ?> </li>
	</ul>
</div>
