<div class="SlideshowPicture form">
<?php echo $this->Form->create('SlideshowPicture', array('type' => 'file')); ?>
	<fieldset>
		<legend><?php echo __('Change Image '. $image['SlideshowPicture']['position']); ?></legend>
		<div>
		<?php 
		if($image['SlideshowPicture']['position'] > 0) {
			echo '<strong style="color:green;font-size:20px">Showing</strong>';
		}else {
			echo '<strong style="color:red;">Hidden</strong>';
		}
		?>
		</div>
		<?php $src = h($image['SlideshowPicture']['view_url']); ?>&nbsp; <img src="<?php echo $src;?>"height="200" width="200"/>
		<?php echo $this->Form->input('SlideshowPicture.filename', array('type' => 'file', 'label' => 'Image'));?>
		<?php echo $this->Form->input('SlideshowPicture.id', array('type' => 'text' ,'hidden', 'label' => false, 'value' => $image['SlideshowPicture']['id']));?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Back to Products'), array('controller' => 'products', 'action' => 'index')); ?> </li>
		
	</ul>
</div>
