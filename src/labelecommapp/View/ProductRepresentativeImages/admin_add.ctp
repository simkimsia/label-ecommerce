<div class="productRepresentativeImages form">
<?php echo $this->Form->create('ProductRepresentativeImage', array('type' => 'file')); ?>
	<fieldset>
		<legend><?php echo __('Add '.$product_name.' Image'); ?></legend>

		<?php $src = h($rep_img['ProductRepresentativeImage']['view_url']); ?>&nbsp; <img src="<?php echo $src;?>"height="200" width="200"/>
		<?php echo $this->Form->input('ProductRepresentativeImage.filename', array('type' => 'file', 'label' => 'Image'));?>
		<?php echo $this->Form->input('ProductRepresentativeImage.product_id', array('type' => 'text' ,'hidden', 'label' => false, 'value' => $product_id));?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Back to Products'), array('controller' => 'products', 'action' => 'index')); ?> </li>
		
	</ul>
</div>
