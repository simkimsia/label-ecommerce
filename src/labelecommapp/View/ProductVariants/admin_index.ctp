<div class="productVariants index">
	<h2><?php echo __('Product Variants'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('product_id'); ?></th>
			<th><?php echo $this->Paginator->sort('created'); ?></th>
			<th><?php echo $this->Paginator->sort('modified'); ?></th>
			<th><?php echo $this->Paginator->sort('name'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php foreach ($productVariants as $productVariant): ?>
		<?php
			$id    = $productVariant['ProductVariant']['id'];
			$left  = $productVariant['ProductVariant']['left'];
			$right = $productVariant['ProductVariant']['right'];
		?>
	<tr>
		<td><?php echo h($productVariant['ProductVariant']['id']); ?>&nbsp;</td>
		<td><?php echo h($productVariant['ProductVariant']['product_id']); ?>&nbsp;</td>
		<td><?php echo h($productVariant['ProductVariant']['created']); ?>&nbsp;</td>
		<td><?php echo h($productVariant['ProductVariant']['modified']); ?>&nbsp;</td>
		<td><?php echo h($productVariant['ProductVariant']['name']); ?>&nbsp;</td>
		<td class="actions">

			<?php echo $this->Html->link(__('Up'), array(
				'action'             => 'swap_order',
				'product_id'         => $product_id,
				'left'               => $left,
				'right'              => $id
				)); 
				?>
			<?php echo $this->Html->link(__('Down'), array(
				'action'             => 'swap_order',
				'product_id'         => $product_id,
				'left'               => $id,
				'right'              => $right
				)); ?>
			
			<?php echo $this->Html->link(__('Edit'), 
			array(
				'action' => 'edit_by_product',
				'product_id'=>$product_id,
				'id'=>$productVariant['ProductVariant']['id'])
			); ?>

			<?php echo $this->Html->link(__('Images'), '/admin/products/'.$product_id.'/variants/'.$productVariant['ProductVariant']['id'].'/images'
			); ?>


			<?php echo $this->Form->postLink(__('Delete'),
			 array(
			 	'action' => 'delete_by_product', 
			 	'product_id' => $product_id,
				 'id' =>$productVariant['ProductVariant']['id']
				 ),
			  null,
			   __('Are you sure you want to delete # %s?',
			    $productVariant['ProductVariant']['name'])); 
		   ?>
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
		<li>
			<?php echo $this->Html->link(__('Back to Edit this product'), '/admin/products/edit/'.$product_id); ?>
		</li>
		<li>
			<?php echo $this->Html->link(__('Back to Products'), '/admin/products/');?>
		</li>

	</ul>
</div>

<div class="productVariants form">
<?php echo $this->Form->create('ProductVariant', array('type' => 'text', 'url' => Router::url(array('action' => 'add_by_product',
							 'controller' => 'product_variants',
							 'product_id' => $product_id)))); ?>
	<fieldset>
		<legend><?php echo __('Add Product Variant'); ?></legend>
	<?php
		echo $this->Form->input('product_id', array('type' => 'hidden', 'value' => $product_id));
		echo $this->Form->input('name');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>


