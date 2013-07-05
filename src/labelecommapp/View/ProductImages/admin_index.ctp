<div class="productImages index">
	<h2><?php echo __('Product Images'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo ('Product Image'); ?></th>
			

			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr> 
	<?php foreach ($productImages as $productImage): ?>
	<tr>
		 <td><?php $src = h($productImage['ProductImage']['thumb_url']); ?>&nbsp; <img src="<?php echo $src;?>"/></td>
		
		<td class="actions">
			
			<?php echo $this->Html->link(__('Change'), 
			array(
				'action' => 'edit_by_product',
				'product_id'=>$product_id,
				'id'=>$productImage['ProductImage']['id'])
			); ?>
			<?php echo $this->Form->postLink(__('Delete'),
			 array(
			 	'action' => 'delete_by_product', 
			 	'product_id' => $product_id,
				 'id' =>$productImage['ProductImage']['id']
				 ),
			  null,
			   __('Are you sure you want to delete # %s?',
			    $productImage['ProductImage']['id'])); 
		   ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>
</div>

