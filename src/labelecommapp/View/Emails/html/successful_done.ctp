<p>Dear <?php echo $fullName;?></p>

<p>Thank you for your interest in Child Label products. Your order has been received and will be processed once payment has been confirmed. Below is a confirmation of your order and information on the product(s) you have ordered.</p>


<table style="border-collapse: collapse;width: 679px;border-top-width: 1px;border-top-style: solid;border-top-color: rgb(221,221,221);border-left-width: 1px;border-left-style: solid;border-left-color: rgb(221,221,221);margin-bottom: 20px;font-family: Arial,Helvetica,sans-serif;font-size: 12px;">

	<tr>
		<td colspan="2" style="font-size: 12px;padding: 7px;font-weight: bold;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);background-color: rgb(239,239,239);">

		Order Details</td>
	</tr>

	<tr>
		<td style="font-size: 12px;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);width: 325px;">
			<b>Order ID: </b><?php echo $cartData['Order']['id'];?><br>
			<b>Date Added: </b><?php echo $cartData['Order']['created'];?><br>
			<b>Payment Method: </b><?php echo $cartData['payment_options'];?><br>
			<b>Shipping Method: </b><?php echo $cartData['ShippingOption']['id'];?>
		</td>
		<td style="font-size: 12px;padding: 7px;border-right-width: 1px;border-right-style: solid;border-right-color: rgb(221,221,221);border-bottom-width: 1px;border-bottom-style: solid;border-bottom-color: rgb(221,221,221);color: rgb(102,102,102);width: 325px;">
			<span style="background-color: rgb(255,255,204);color: rgb(34,34,34);">Email:</span>daphne@motherinc.org<br>
			<b>Telephone: </b>90233755
		</td>
	</tr>
</table>