<p>Dear <?php echo $fullName;?></p>

<p>Thank you for your interest in Child Label products. Your order has been received and will be processed once payment has been confirmed.
<?php if ($cartData['Order']['processor'] == 'BANK_TRANSFER') :?>
	Please make payment to the following:
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
<?php endif; ?>

Below is a confirmation of your order and information on the product(s) you have ordered.</p>


<table style="border-collapse: collapse;width: 679px;border-top-width: 1px;border-top-style: solid;border-top-color: rgb(221,221,221);border-left-width: 1px;border-left-style: solid;border-left-color: rgb(221,221,221);margin-bottom: 20px;font-family: Arial,Helvetica,sans-serif;font-size: 12px;">

	<tr>
		<td colspan="2" style="font-size: 12px;padding: 7px;font-weight: bold;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);background-color: rgb(239,239,239);">

		Order Details</td>
	</tr>

	<tr>
		<td style="font-size: 12px;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);width: 325px;">
			<b>Order ID: </b><?php echo $cartData['Order']['id'];?><br>
			<b>Invoice Number: </b><?php echo $cartData['Order']['invoice_number'];?><br>
			<b>Date Added: </b><?php echo $cartData['Order']['created'];?><br>
			<b>Payment Method: </b><?php echo $cartData['payment_options'];?><br>
			<b>Shipping Method: </b><?php echo $cartData['ShippingOption']['name'];?>
		</td>
		<td style="font-size: 12px;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);width: 325px;">
			<span style="background-color: rgb(255,255,204);color: rgb(34,34,34);">Email:</span><?php echo $email;?><br>
		</td>
	</tr>
</table>


<table style="border-collapse: collapse;width: 679px;border-top-width: 1px;border-top-style: solid;border-top-color: rgb(221,221,221);border-left-width: 1px;border-left-style: solid;border-left-color: rgb(221,221,221);margin-bottom: 20px;font-family: Arial,Helvetica,sans-serif;font-size: 12px;">

	<tr>
		<td style="font-size: 12px;padding: 7px;font-weight: bold;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);width: 325px;background-color: rgb(239,239,239);">
			Payment Address
		</td>
		<td style="font-size: 12px;padding: 7px;font-weight: bold;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);width: 324px;background-color: rgb(239,239,239);">
			Shipping Address
		</td>
	</tr>
	<tr>
		<td style="font-size: 12px;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);width: 325px;">
			<!-- Payment Address-->
			<?php echo $cartData['BillingAddress']['first_name'].' '.$cartData['BillingAddress']['last_name'];?> <br/>
			<?php echo $cartData['BillingAddress']['street'];?><br/>
			<?php echo $cartData['BillingAddress']['street2'];?><br/>
			<?php echo $cartData['BillingAddress']['city'].' '.$cartData['BillingAddress']['zip'];?><br/>
			<?php echo $cartData['BillingAddress']['country'];?>
		</td>
		<td style="font-size: 12px;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);width: 324px;">
			<!-- Shipping Address-->
			<?php echo $cartData['ShippingAddress']['first_name'].' '.$cartData['ShippingAddress']['last_name'];?> <br/>
			<?php echo $cartData['ShippingAddress']['street'];?><br/>
			<?php echo $cartData['ShippingAddress']['street2'];?><br/>
			<?php echo $cartData['ShippingAddress']['city'].' '.$cartData['ShippingAddress']['zip'];?><br/>
			<?php echo $cartData['ShippingAddress']['country'];?>
		</td>
	</tr>
	</table>

	<table style="border-collapse: collapse;width: 679px;border-top-width: 1px;border-top-style: solid;border-top-color: rgb(221,221,221);border-left-width: 1px;border-left-style: solid;border-left-color: rgb(221,221,221);margin-bottom: 20px;font-family: Arial,Helvetica,sans-serif;font-size: 12px;">
		<tr>
			<td style="font-size: 12px;padding: 7px;font-weight: bold;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);background-color: rgb(239,239,239);">
				Product
			</td>
			<td style="font-size: 12px;padding: 7px;font-weight: bold;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);background-color: rgb(239,239,239);">
				Name
			</td>
			<td style="font-size: 12px;text-align: right;padding: 7px;font-weight: bold;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);background-color: rgb(239,239,239);">
				Font
			</td>
			<td style="font-size: 12px;text-align: right;padding: 7px;font-weight: bold;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);background-color: rgb(239,239,239);">
				Quantity
			</td>
			<td style="font-size: 12px;text-align: right;padding: 7px;font-weight: bold;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);background-color: rgb(239,239,239);">
				Price
			</td>

		</tr>
		<?php foreach($cartData['CartsItem'] as $key=>$product):?>
		<!-- Product listing -->
		<tr>
			<td style="font-size: 12px;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);">
				<!-- Product name-->
				<?php echo $product['name'];?>
			</td>
			<td style="font-size: 12px;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);">
				<!-- Product first & second line -->
				First Line: <?php echo $product['first_line'];?> <br/>
				Second Line: <?php echo $product['second_line']; ?> <br/>
			</td>
			<td style="font-size: 12px;text-align: right;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);">
				<!-- Product font-->
				<?php echo $product['font'];?>
			</td>
			<td style="font-size: 12px;text-align: right;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);">
				<!-- Product Quantity-->
				<?php echo $product['quantity']; ?>
			</td>
			<td style="font-size: 12px;text-align: right;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);">
				<!-- Product Price -->
				<?php $options = array('places' => 0);
                     echo $this->Number->currency($product['total'], 'S$', $options); ?>
			</td>
		</tr>
	<?php endforeach;?>
		<!-- End of Product Listing-->
		<!-- footer -->
		<tr>
			<td colspan="4" style="font-size: 12px;text-align: right;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);">
			<!-- Sub total-->
			<b>Sub-Total:</b>
			</td>
			<td style="font-size: 12px;text-align: right;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);">
				<!--Actual Sub-Total price -->
			<?php echo $this->Number->currency($cartData['Cart']['total_price'], 'S$', $options);?>
			</td>

		</tr>
		<tr>
			<td colspan="4" style="font-size: 12px;text-align: right;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);">
				<?php
				if($cartData['ShippingOption']['id'] == 2):?>
				<b>Registered articles are shipped via Singpost and comes with a registered article number for tracking. It takes 2-5 business days.:</b>
				<?php

				else:?>

					<b>
						Free Shipping Via Singpost.:
					</b>
				<?php endif;?>
			</td>
			<td  style="font-size: 12px;text-align: right;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);">

				<?php echo $this->Number->currency($cartData['ShippingOption']['fees'], 'S$', array('places' => 2));?>
			</td>
		</tr>
		<tr>
			<td colspan="4" style="font-size: 12px;text-align: right;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);">
				<b>Total: </b>
			</td>
			<td style="font-size: 12px;text-align: right;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);">
				<!-- Grand total -->
				<?php echo $this->Number->currency($cartData['Cart']['total'], 'S$', array('places' => 2));?>
			</td>
		</tr>
		<!-- End of footer-->
	</table>



	<p style="margin-top: 0px;margin-bottom: 20px;font-family: Arial,Helvetica,sans-serif;font-size: 12px;">
		For any enquiries, feel free to contact us at&nbsp; <a href="mailto:sales@childlabel.com" target="_blank">sales@childlabel.com</a>
	</p>

	<p style="margin-top: 0px;margin-bottom: 20px;font-family: Arial,Helvetica,sans-serif;font-size: 12px;">
		Best Regards, <br>
		Child Label team
	</p>