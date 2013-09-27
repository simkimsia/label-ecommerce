<div class="productRepresentativeImages index">
	<h2><?php echo __('Product Representative Images'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('product_id'); ?></th>
			<th><?php echo $this->Paginator->sort('filename'); ?></th>
			<th><?php echo $this->Paginator->sort('dir'); ?></th>
			<th><?php echo $this->Paginator->sort('mimetype'); ?></th>
			<th><?php echo $this->Paginator->sort('filesize'); ?></th>
			<th><?php echo $this->Paginator->sort('created'); ?></th>
			<th><?php echo $this->Paginator->sort('modified'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php foreach ($productRepresentativeImages as $productRepresentativeImage): ?>
	<tr>
		<td><?php echo h($productRepresentativeImage['ProductRepresentativeImage']['id']); ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($productRepresentativeImage['Product']['name'], array('controller' => 'products', 'action' => 'view', $productRepresentativeImage['Product']['id'])); ?>
		</td>
		<td><?php echo h($productRepresentativeImage['ProductRepresentativeImage']['filename']); ?>&nbsp;</td>
		<td><?php echo h($productRepresentativeImage['ProductRepresentativeImage']['dir']); ?>&nbsp;</td>
		<td><?php echo h($productRepresentativeImage['ProductRepresentativeImage']['mimetype']); ?>&nbsp;</td>
		<td><?php echo h($productRepresentativeImage['ProductRepresentativeImage']['filesize']); ?>&nbsp;</td>
		<td><?php echo h($productRepresentativeImage['ProductRepresentativeImage']['created']); ?>&nbsp;</td>
		<td><?php echo h($productRepresentativeImage['ProductRepresentativeImage']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $productRepresentativeImage['ProductRepresentativeImage']['id'])); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $productRepresentativeImage['ProductRepresentativeImage']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $productRepresentativeImage['ProductRepresentativeImage']['id']), null, __('Are you sure you want to delete # %s?', $productRepresentativeImage['ProductRepresentativeImage']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	));
	?>	</p>
	<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Product Representative Image'), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Products'), array('controller' => 'products', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Product'), array('controller' => 'products', 'action' => 'add')); ?> </li>
	</ul>
</div>
