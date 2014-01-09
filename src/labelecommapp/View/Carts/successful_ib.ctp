<div class="contentArea">
	<div class="topContent">
	</div>
	<div class="mainContent">
		<div id="ib_payment_details" style="font-family:Arial;font-size:18px;font-weight:normal;font-style:normal;text-decoration:none;position:relative;top:10px;left:140px;width:500px;height:285px">
		<div id="successful_icon" style ="position:absolute;left:500px;top:10px">
			<?php echo $this->Html->image('success_icon.png',array('width' => '200px', 'heigth' => '200px'))?>
		</div>
		<div>
			Bank: <?php echo Configure::read('IB_BANK');?> <br><br>
		</div>
		<div>
			Account No: <?php echo Configure::read('ACCOUNT_CODE');?> <br><br>
		</div>
		<div>
			Account Type: <?php echo Configure::read('ACCOUNT_TYPE');?> <br><br>
		</div>
		<div>
			Account Name: <?php echo Configure::read('ACCT_NAME');?> <br><br>
		</div>
		<div>
			</div>
		<div>

		</div>
		<div>
			Congrats! Your order has been captured. <br/> Please make payment via Bank Transfer to DBS Account within 24 hours for your order to be processed.
		</div>
		<div>
		<br />
		<strong>
		<?php
			echo 'Invoice number: '.$invoice_number;
		?>
		</strong>
		<br>
		</div>
		</div>
	</div>
	<div class="footerContent"></div>
</div>