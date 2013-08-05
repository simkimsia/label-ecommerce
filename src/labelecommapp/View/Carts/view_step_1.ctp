<?php setlocale(LC_MONETARY, null); 
	$number_of_items = $carts['Cart']['item_count'];?>
<div id="main_container">

<div id="u0" class="u0_container"   >
<div id="u0_img" class="u0_normal detectCanvas"></div>
<div id="u1" class="u1" style="visibility:hidden;"  >
<div id="u1_rtf"></div>
</div>
</div>
<div id="u2" class="u2_container" style=<?php echo '"top:'.(518+(($number_of_items-1)*149)).'px"';?>  >
<div id="u2_img" class="u2_normal detectCanvas"></div>
<div id="u3" class="u3" style="visibility:hidden;"  >
	<div id="u3_rtf"></div>
	</div>
</div>
<div id="u4" class="u4" style=<?php echo '"top:'.(524+(($number_of_items-1)*149)).'px"';?> >
<div id="u4_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#666666;">Go back shopping</span></p></div>
</div>

<div id="u11" class="u11_container"   >
<div id="u11_img" class="u11_normal detectCanvas"></div>
<div id="u12" class="u12" style="visibility:hidden;"  >
<div id="u12_rtf"></div>
</div>
</div>
<div id="u13" class="u13"  >
<div id="u13_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:12px;font-weight:bold;font-style:normal;text-decoration:none;color:#666666;">Product</span></p></div>
</div>
<div id="u14" class="u14"  >
<div id="u14_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:12px;font-weight:bold;font-style:normal;text-decoration:none;color:#666666;">Item Price</span></p></div>
</div>

<div  class="u20"  >
<div ><p style="text-align:center;"><span style="font-family:Helvetica;font-size:12px;font-weight:bold;font-style:normal;text-decoration:none;color:#666666;">Quantity</span></p></div>
</div>

<div class="u24"   >
<div ><p style="text-align:center;"><span style="font-family:Helvetica;font-size:12px;font-weight:bold;font-style:normal;text-decoration:none;color:#666666;">Price</span></p></div>
</div>

<?php 
	foreach($carts['CartsItem'] as $key => $cartItems){ 

	?>
<div class="item">
<!-- photo here -->
<div class="u5_container" style=<?php echo '"top:'.(176+$key*149).'px"';?>>
	<div class="u5_img u5_normal detectCanvas"></div>
	<div class="u6" style="visibility:hidden;"  >
		<div></div>
	</div>
</div>
<div class="u7_container" style=<?php echo '"top:'.(177+$key*149).'px"';?>>
	<div class="u7_img u7_normal detectCanvas"></div>
	<div class="u8" style="visibility:hidden;"  >
		<div></div>
	</div>
</div>
<div class="u9_container" style=<?php echo '"top:'.(182+$key*149).'px"';?>>

	<?php // let's prepare the image

	// if the image is present, we will not use placeholder and we will add top: 4px and left: 4px;
	$imagePresent = (strpos($cartItems['image'], '/files/product_image/filename') !== false);

	$backgroundImage = 'background-image: url(\'' . $cartItems['image'] . '\');';
	if ($imagePresent) {
		$backgroundImage .= 'top: 4px; left: 4px;';
	}
	$style = '"' . $backgroundImage . '"';
	?>

	<div class="u9_img u9_normal detectCanvas" style=<?php echo $style;?>></div>
	<div class="u10" style="visibility:hidden;"  >
		<div></div>
	</div>
</div>
<!-- end photo here -->
<div  class="u15"  style=<?php echo '"top:'.(179+$key*149).'px"';?>>
<div ><p style="text-align:left;"><span style="font-family:Helvetica;font-size:18px;font-weight:bold;font-style:normal;text-decoration:none;color:#404040;"></span><?php echo $cartItems['name']?></p></div>
</div>
<div  class="u16"  style=<?php echo '"top:'.(209+$key*149).'px"';?>>
<div ><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Product Description</span></p></div>
</div>
<div  class="u17"  style=<?php echo '"top:'.(233+$key*149).'px"';?>>
<div ><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">SKU: #3439913975</span></p></div>
</div>
<div  class="u18" style=<?php echo '"top:'.(257+$key*149).'px"';?> >
<div ><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Size: M</span></p></div>
</div>
<div class="u19"  style=<?php echo '"top:'.(182+$key*149).'px"';?> >
<div ><p style="text-align:left;"><span style="font-family:Helvetica;font-size:15px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;"><?php echo money_format("$%i", $cartItems['price']);?></span></p></div>
</div>

<INPUT  type=text value=<?php echo '"'.$cartItems['quantity'].'"'?> class="u21"  style=<?php echo '"top:'.(178+$key*149).'px"';?>     >

<div  class="u22"  style=<?php echo '"top:'.(213+$key*149).'px"';?> >
<div ><p style="text-align:center;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:underline;color:#00438A;">Update</span></p></div>
</div>
<div  class="u23"  style=<?php echo '"top:'.(233+$key*149).'px"';?> >
<div ><p style="text-align:center;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:underline;color:#00438A;">Remove</span></p></div>
</div>

<div class="u25"  style=<?php echo '"top:'.(182+$key*149).'px"';?> >
<div ><p style="text-align:left;"><span style="font-family:Helvetica;font-size:15px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;"><?php $qty_price = $cartItems['quantity'] * $cartItems['price'];  echo money_format("$%i", $qty_price)?></span></p></div>
</div>
<div id="u56" class="u56" style=<?php echo '"top:'.(300+$key*149).'px"';?>>
<DIV id="u56_line" class="u56_line" ></DIV>
</div><div id="u57" class="u57" style=<?php echo '"top:'.(151+$key*149).'px"';?>>
<DIV id="u57_line" class="u57_line" ></DIV>
</div>
</div>
<?php  } ?>
<div id="u26" class="u26_container"  style=<?php echo '"top:'.(301+(($number_of_items-1)*149)).'px"';?> >
<div id="u26_img" class="u26_normal detectCanvas"></div>
<div id="u27" class="u27" style=<?php echo '"visibility:hidden;top:'.( 49 +(($number_of_items-1)*149)).'px"';?>   >
<div id="u27_rtf"></div>
</div>
</div>
<div id="u28" class="u28" style=<?php echo '"top:'.(324+(($number_of_items-1)*149)).'px"';?>>
<div id="u28_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:15px;font-weight:normal;font-style:normal;text-decoration:none;color:#666666;">Subtotal</span></p></div>
</div>
<div id="u29" class="u29"  style=<?php echo '"top:'.(324+(($number_of_items-1)*149)).'px"';?>>
<div id="u29_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:15px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;"><?php echo money_format("$%i", $carts['Cart']['total']);?></span></p></div>
</div>
<div id="u30" class="u30"  style=<?php echo '"top:'.(354+(($number_of_items-1)*149)).'px"';?>>
<div id="u30_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:15px;font-weight:normal;font-style:normal;text-decoration:none;color:#666666;">Shipping</span></p></div>
</div>
<div id="u31" class="u31"  style=<?php echo '"top:'.(354+(($number_of_items-1)*149)).'px"';?>>
<div id="u31_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:15px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">$15.00</span></p></div>
</div>
<div id="u32" class="u32"  style=<?php echo '"top:'.(384+(($number_of_items-1)*149)).'px"';?> >
<div id="u32_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:15px;font-weight:normal;font-style:normal;text-decoration:none;color:#666666;">Taxes</span></p></div>
</div>
<div id="u33" class="u33"  style=<?php echo '"top:'.(384+(($number_of_items-1)*149)).'px"';?> >
<div id="u33_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:15px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">$4.00</span></p></div>
</div>
<div id="u34" class="u34_container"   style=<?php echo '"top:'.(419+(($number_of_items-1)*149)).'px"';?> >
<div id="u34_img" class="u34_normal detectCanvas"></div>
<div id="u35" class="u35" style=<?php echo '"visibility:hidden;top:'.(29+(($number_of_items-1)*149)).'px"';?>  >
<div id="u35_rtf"></div>
</div>
</div>
<div id="u36" class="u36" style=<?php echo '"top:'.(445+(($number_of_items-1)*149)).'px"';?>  >
<div id="u36_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:18px;font-weight:bold;font-style:normal;text-decoration:none;color:#404040;">TOTAL</span></p></div>
</div>
<div id="u37" class="u37"  style=<?php echo '"top:'.(444+(($number_of_items-1)*149)).'px"';?> >
<div id="u37_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:20px;font-weight:bold;font-style:normal;text-decoration:none;color:#FFFFFF;"><?php echo money_format("$%i", $carts['Cart']['total_price']);?></span></p></div>
</div>
<div id="u38" class="u38_container"   style=<?php echo '"top:'.(518+(($number_of_items-1)*149)).'px"';?>>
<div id="u38_img" class="u38_normal detectCanvas"></div>
<div id="u39" class="u39" style=<?php echo '"visibility:hidden;top:'.(6+(($number_of_items-1)*149)).'px"';?>  >
<div id="u39_rtf"></div>
</div>
</div>
<div id="u40" class="u40" style=<?php echo '"top:'.(524+(($number_of_items-1)*149)).'px"';?> >
<div id="u40_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:13px;font-weight:bold;font-style:normal;text-decoration:none;color:#FFFFFF;">Proceed to checkout</span></p></div>
</div><div id="u41" class="u41" style=<?php echo '"top:'.(514+(($number_of_items-1)*149)).'px"';?> >
<DIV id="u41_line" class="u41_line" ></DIV>
</div>
<div id="u42" class="u42"  >
<div id="u42_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">Shopping cart</span></p></div>
</div><div id="u43" class="u43" >
<DIV id="u43_line" class="u43_line" ></DIV>
</div>
<div id="u44" class="u44_container"   >
<div id="u44_img" class="u44_normal detectCanvas"></div>
<div id="u45" class="u45" style="visibility:hidden;"  >
<div id="u45_rtf"></div>
</div>
</div>
<div id="u46" class="u46_container"   >
<a href="/carts/view?step=2"><div id="u46_img" class="u46_normal detectCanvas"></div></a>
<div id="u47" class="u47" style="visibility:hidden;"  >
<div id="u47_rtf"></div>
</div>
</div>
<div id="u48" class="u48_container"   >
<a href="/carts/view?step=3"><div id="u48_img" class="u48_normal detectCanvas"></div></a>
<div id="u49" class="u49" style="visibility:hidden;"  >
<div id="u49_rtf"></div>
</div>
</div>
<div id="u50" class="u50_container"   >
<a href="/carts/view?step=4"><div id="u50_img" class="u50_normal detectCanvas"></div></a>
<div id="u51" class="u51" style="visibility:hidden;"  >
<div id="u51_rtf"></div>
</div>
</div>
<div id="u52" class="u52"  >
<div id="u52_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Sign in</span></p></div>
</div>
<div id="u53" class="u53"  >
<div id="u53_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Shipping and billing</span></p></div>
</div>
<div id="u54" class="u54"  >
<div id="u54_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Payment confirmation</span></p></div>
</div>
</div>
