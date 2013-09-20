<div class="users container_16">
	<div class="grid_16" style="text-align: center; margin-top:100px" > 
		<?php echo $this->element('users_link_bar'); ?>
		<h2 class="titleFont"><?php echo h($users_fullname); ?></h2>
	</div>
	<div class="grid_10 push_5" style="margin-left: 34px; margin-bottom: 20px;margin-top: 30px">
		<?php echo 'You have '.count($users_orders).' order(s) <br/><br/>';?>
		<?php foreach($users_orders as $key => $orders) {?>
		<dl>
			<dt><?php echo __('Order No.'); ?></dt>
			<dd>
				<?php echo h($orders['Order']['order_number']); ?>
				&nbsp;
			</dd>
			<dt><?php echo __('Invoice No.'); ?></dt>
			<dd>
				<?php echo h($orders['Order']['invoice_number']); ?>
				&nbsp;
			</dd>
			<dt><?php echo __('Payment Status'); ?></dt>
			<dd>
				<?php echo h($orders['Order']['payment_status']); ?>
				&nbsp;
			</dd>
		</dl>
		 <?php  echo '<br/> <br/>'; }?>
	</div>
</div>