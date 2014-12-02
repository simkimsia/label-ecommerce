<div class="SlideshowPicture form">
<?php echo $this->Form->create('SlideshowPicture', array('type' => 'file')); ?>
	<fieldset>
		<?php echo $this->Form->input('SlideshowPicture.filename', array('type' => 'file', 'label' => 'Image'));?>
		<?php echo $this->Form->input('SlideshowPicture.position', array('div' => false, 'label' => false, 'value' => 6, 'hidden'));?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Back to Products'), array('controller' => 'products', 'action' => 'index')); ?> </li>
		
	</ul>
</div>
