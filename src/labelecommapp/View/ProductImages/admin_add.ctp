<div class="productImages form">
<?php   echo $this->Form->create('ProductImage', array('type' => 'file'));?>
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
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Product Variants'), '/admin/products/'.$productId.'/images'); ?></li>
	</ul>
</div>
