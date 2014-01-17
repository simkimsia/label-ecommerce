<div class="users container_16" style="margin-top:77px">
  <div class="grid_16" style="text-align: center">
    <?php echo $this->element('customer_link_bar'); ?>
    <h2 class="titleFont"><?php echo __('Change Password'); ?></h2>
  </div>
  <?php echo $this->Form->create('User'); ?>
    <fieldset class="grid_16">
      <?php
        echo $this->Form->input('id');
        echo $this->Form->input('short_name', array('length' => '20'));
        echo $this->Form->input('full_name');
      ?>
    </fieldset>
  <?php echo $this->Form->end(__('Change!')); ?>
</div>