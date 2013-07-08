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
				$id = $productImage['ProductImage']['id'];
				echo $this->Form->create('ProductImage', array('type' => 'file', 
					'url' => Router::url(array(
						'action' => 'edit_by_product',
						'controller' => 'product_images',
						'product_id' => $product_id,
						 'id' => $id
						))
					));
				echo $this->Form->input('ProductImage.'.$id.'.id', array('type' => 'hidden', 'value' => $id));
				echo $this->Form->input('ProductImage.'.$id.'.filename', array('type' => 'file', 'label' => false));
				echo $this->Form->end(__('Submit'));
			?>
		</td>
		<td class="actions">
			
			<?php echo $this->Form->postLink(__('Delete'),
			 array(
			 	'action' => 'delete_by_product', 
			 	'product_id' => $product_id,
				 'id' => $id
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

<div class="productImages form">
<?php   echo $this->Form->create('ProductImage', array('type' => 'file', 'url' => Router::url(array('action' => 'add_by_product',
		'controller' => 'product_images',
		'product_id' => $product_id))));?>
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

