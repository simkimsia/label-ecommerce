<div class="productImages index">
	<h2><?php echo __('Product Images'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo ('Product Image'); ?></th>
			
			<th><?php echo ('Change image'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr> 
	<?php foreach ($productImages as $productImage): ?>
	<tr>
		 <td><?php $src = h($productImage['ProductImage']['thumb_url']); ?>&nbsp; <img src="<?php echo $src;?>"/></td>
		
		<td>
			<?php
				$id    = $productImage['ProductImage']['id'];
				$left  = $productImage['ProductImage']['left'];
				$right = $productImage['ProductImage']['right'];
				echo $this->Form->create('ProductImage', array('type' => 'file', 
					'url' => Router::url(array(
							'action'             => 'edit_by_product',
							'controller'         => 'product_images',
							'product_id'         => $product_id,
							'product_variant_id' => $product_variant_id,
							'id'                 => $id
						))
					));
				echo $this->Form->input('ProductImage.'.$id.'.id', array('type' => 'hidden', 'value' => $id));

				echo $this->Form->input('ProductImage.'.$id.'.filename', array('type' => 'file', 'label' => false));
				echo $this->Form->end(__('Submit'));
			?>
		</td>
		<td class="actions">
			<?php echo $this->Html->link(__('Up'), array(
				'action'             => 'swap_order',
				'product_id'         => $product_id,
				'product_variant_id' => $product_variant_id,
				'left'               => $left,
				'right'              => $id
				)); 
				?>
			<?php echo $this->Html->link(__('Down'), array(
				'action'             => 'swap_order',
				'product_id'         => $product_id,
				'product_variant_id' => $product_variant_id,
				'left'               => $id,
				'right'              => $right
				)); ?>
			<?php echo $this->Form->postLink(__('Delete'),array(
				'action'             => 'delete_by_product', 
				'product_id'         => $product_id,
				'product_variant_id' => $product_variant_id,
				'id'                 => $id,

				 ),
			  null,
			   __('Are you sure you want to delete # %s?',
			    $id)); 
		   ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>

</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li>
			<?php echo $this->Html->link(__('List Products'), array('controller' => 'products', 'action' => 'index')); ?>
		</li>
		<li>
			<?php echo $this->Html->link(__('List This Product Variants'), '/admin/products/'.$product_id.'/variants'); ?>
		</li>
		<li>
			<?php echo $this->Html->link(__('Edit This Product'), '/admin/products/edit/'.$product_id);
			?>
		</li>
		<li>
			<?php echo $this->Html->link(__('Edit This Variant'), '/admin/products/'.$product_id.'/variants/'.$product_variant_id);

			?>
		</li>
		<li>
			<?php echo $this->Form->postLink(__('Delete This Variant'),
			 array(
					'controller' => 'product_variants',
					'action'     => 'delete_by_product', 
					'product_id' => $product_id,
					'id'         => $product_variant_id
				 ),
			  null,
			   __('Are you sure you want to delete this variant?')); 
		   ?>
		</li>




	</ul>
</div>

<div class="productImages form">
<?php   echo $this->Form->create('ProductImage', array('type' => 'file', 'url' => Router::url(array('action' => 'add_by_product',
		'controller'         => 'product_images',
		'product_id'         => $product_id,
		'product_variant_id' => $product_variant_id)
				)
			)

		)

		;?>
	<fieldset>
		<legend><?php echo __('Add Product Image'); ?></legend>
	<?php
		
		echo $this->Form->input('ProductImage.0.filename', array('type' => 'file', 'label' => 'Image'));
		echo $this->Form->input('ProductImage.1.filename', array('type' => 'file', 'label' => 'Image'));
		echo $this->Form->input('ProductImage.2.filename', array('type' => 'file', 'label' => 'Image'));
		echo $this->Form->input('ProductImage.3.filename', array('type' => 'file', 'label' => 'Image'));

?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>

