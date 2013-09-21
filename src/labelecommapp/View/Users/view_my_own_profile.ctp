<div class="users ">

	<div class="contentArea">
		<div class="topContent">
		</div>
		<div class="mainContent">

			<div class="" style="text-align:center;" > 
				<?php echo $this->element('customer_link_bar'); ?>
				<h2 class="titleFont"><?php echo h($authUser['full_name']); ?></h2>
			</div>
		<table id="results_list" class="" style="width:440px;margin-left:290px;">
		<tr>
			<th style="width:200px"><?php echo $this->Paginator->sort('invoice_number'); ?></th>
			<th><?php echo $this->Paginator->sort('payment_status'); ?></th>
			
		</tr>
		<?php foreach ($users_orders as $key => $orders): ?>
			<tr>
				
				<td><?php echo h($orders['Order']['invoice_number']); ?>&nbsp;</td>
				<td><?php echo h($orders['Order']['payment_status']); ?></td>
				
				
			</tr>
		<?php endforeach; ?>
	</table>
	<p style="margin-left:215px">
		<?php
			echo $this->Paginator->counter(array(
				'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
			));
		?>
	</p>
	<div class="paging" style="width:440px;margin-left:21%;">
		<?php
			echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
			echo $this->Paginator->numbers(array('separator' => ''));
			echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
		?>
	</div>

		</div> <!-- end of mainContent -->
		<div class="footerContent"></div>
	</div> <!-- end of contentArea -->

</div>