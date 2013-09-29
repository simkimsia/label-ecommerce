<div class="products form">
<?php echo $this->Form->create('Product'); ?>
	<fieldset>
		<legend><?php echo __('Edit Product'); ?></legend>

		<a href="/admin/products/<?php echo $id?>/rep_img/"><?php if(isset($rep_img)):?><img src="<?php echo $rep_img?>" height="200" width="200"/>Click image to change
		<?php else:?>
		Click here to upload new image
	<?php endif;?>
		</a>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('name');
		echo $this->Form->input('description');

	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>

<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Product.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('Product.id'))); ?></li>
		<li><?php echo $this->Html->link(__('Back to Products'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('Show its Variants'), '/admin/products/'.$id.'/variants');?></li>
	</ul>
</div>
