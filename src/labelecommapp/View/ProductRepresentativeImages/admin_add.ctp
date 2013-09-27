<div class="productRepresentativeImages form">
<?php echo $this->Form->create('ProductRepresentativeImage', array('type' => 'file')); ?>
	<fieldset>
		<legend><?php echo __('Add '.$product_name.' Image'); ?></legend>

		<?php $src = h($rep_img['ProductRepresentativeImage']['thumb_url']); ?>&nbsp; <img src="<?php echo $src;?>"/>
		<?php echo $this->Form->input('ProductRepresentativeImage.filename', array('type' => 'file', 'label' => 'Image'));?>
		<?php echo $this->Form->input('ProductRepresentativeImage.product_id', array('type' => 'text' ,'hidden', 'label' => false, 'value' => $product_id));?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Product Representative Images'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Products'), array('controller' => 'products', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Product'), array('controller' => 'products', 'action' => 'add')); ?> </li>
	</ul>
</div>
