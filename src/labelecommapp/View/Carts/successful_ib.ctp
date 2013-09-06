<div id="ib_payment_details" style="font-family:Arial;font-size:18px;font-weight:normal;font-style:normal;text-decoration:none;position:relative;top:100px;left:200px;width:500px;height:300px">
<div id="successful_icon" style ="position:absolute;left:500px;top:-20px">
	<?php echo $this->Html->image('success_icon.png',array('width' => '200px', 'heigth' => '200px'))?>
</div>
<div>
	Bank: <?php echo Configure::read('IB_BANK');?> <br><br>
</div>
<div>
	Branch: <?php echo Configure::read('BRANCH_CODE');?> <br><br>
</div>
<div>
	Account Name: <?php echo Configure::read('ACCT_NAME');?> <br><br>
</div>
<div>
	</div>
<div>

</div>
<div>
<?php 
	echo 'Invoice number: '.$invoice_number;
?>
<br>
</div>
</div>