<?php setlocale(LC_MONETARY, null);
$number_of_items = $carts['Cart']['item_count'];?>
<div id="main_container">

<div id="u0" class="u0_container"   >
<div id="u0_img" class="u0_normal detectCanvas"></div>
<div id="u1" class="u1" style="visibility:hidden;"  >
<div id="u1_rtf"></div>
</div>
</div>
<div id="u2" class="u2_container"   >
<div id="u2_img" class="u2_normal detectCanvas"></div>
<div id="u3" class="u3" style="visibility:hidden;"  >
<div id="u3_rtf"></div>
</div>
</div>
<div id="u4" class="u4"  >
<div id="u4_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:18px;font-weight:bold;font-style:normal;text-decoration:none;color:#404040;">Shipping options</span></p></div>
</div>
<div id="u5" class="u5"  >
<div id="u5_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Please choose one of the shipping options below:</span></p></div>
</div>
<form action="/carts/save_address" method = "post" name="shippingOrders" id="shippingForm"> 
<div id="radio_button" style=<?php echo '"font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#404040;
;position:absolute; left:29px; top:'. 231 .'px; width:300px; height:16px; ; ; ;"'?>>
<?php foreach($shipping_options as $key => $shipping) {?>
  <input type="radio" name="data[shipping_option_id][id]" id="<?php echo $shipping['ShippingOption']['name'];?>" value="<?php echo $shipping['ShippingOption']['id'];?>" >
<label for=<?php echo '"'. $shipping['ShippingOption']['name'] .'"';?>> 
    <?php echo  $shipping['ShippingOption']['name'];?>
</label>
<br><br>
<?php }?>
 </div>
<div id="u14" class="u14"  >
<div id="u14_rtf"><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#BFBFBF;">Note: This is a note that adds some details to the list.</span></p></div>
</div>
<div id="u15" class="u15_container"   >
<div id="u15_img" class="u15_normal detectCanvas"></div>
<div id="u16" class="u16" style="visibility:hidden;"  >
<div id="u16_rtf"></div>
</div>
</div>
<div id="u17" class="u17"  >
<div id="u17_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:18px;font-weight:bold;font-style:normal;text-decoration:none;color:#404040;">Shipping address</span></p></div>
</div>
<div id="u18" class="u18_container"   >
<div id="u18_img" class="u18_normal detectCanvas"></div>
<div id="u19" class="u19" style="visibility:hidden;"  >
<div id="u19_rtf"></div>
</div>
</div>
<DIV id="u20" style="" >
<DIV id="pd1u20" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u21" type=text value="" class="u21" data-label="Text"    >

</DIV>
<DIV id="pd0u20" style="" data-label="Disabled">
<INPUT id="shipping_name" name="data[ShippingAddress][first_name]" type=text placeholder="enter text..." class="u22 "  >

</DIV>
</DIV>
<div id="u23" class="u23 "  >
<div id="u23_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Your name (first and last)</span></p></div>
</div>
<div id="u24" class="u24_container"   >
<div id="u24_img" class="u24_normal detectCanvas"></div>
<div id="u25" class="u25" style="visibility:hidden;"  >
<div id="u25_rtf"></div>
</div>
</div>
<DIV id="u26" style="" >
<DIV id="pd1u26" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u27" type=text value="" class="u27" data-label="Text"    >

</DIV>
<DIV id="pd0u26" style="" data-label="Disabled">
<INPUT id="shipping_street" name="data[ShippingAddress][street]" type=text placeholder="enter text..." class="u28 "     >

</DIV>
</DIV>
<div id="u29" class="u29 "  >
<div id="u29_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Shipping address</span></p></div>
</div>
<div id="u30" class="u30_container"   >
<div id="u30_img" class="u30_normal detectCanvas"></div>
<div id="u31" class="u31" style="visibility:hidden;"  >
<div id="u31_rtf"></div>
</div>
</div>
<DIV id="u32" style="" >
<DIV id="pd1u32" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u33" type=text value="" class="u33" data-label="Text"    >

</DIV>
<DIV id="pd0u32" style="" data-label="Disabled">
<INPUT id="shipping_street2" name="data[ShippingAddress][street2]" type=text placeholder="enter text..." class="u34 "     >

</DIV>
</DIV>
<div id="u35" class="u35 "  >
<div id="u35_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">City</span></p></div>
</div>
<div id="u36" class="u36_container"   >
<div id="u36_img" class="u36_normal detectCanvas"></div>
<div id="u37" class="u37" style="visibility:hidden;"  >
<div id="u37_rtf"></div>
</div>
</div>
<DIV id="u38" style="" >
<DIV id="pd1u38" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u39" type=text value="" class="u39" data-label="Text"    >

</DIV>
<DIV id="pd0u38" style="" data-label="Disabled">
<INPUT id="shipping_zip" name="data[ShippingAddress][zip]" type=text placeholder="enter text..." class="u40 "     >

</DIV>
</DIV>
<div id="u41" class="u41"  >
<div id="u41_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Zip</span></p></div>
</div>
<div id="u42" class="u42 "  >
<div id="u42_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Country</span></p></div>
</div>
<SELECT id="shipping_country" class="u43 "  name="data[ShippingAddress][country]" >
    <?php echo $this->element('country_dropdown');?>
</SELECT>

<DIV id="u44container" style="position:absolute; left:29px; top:971px; width:342px; height:16px; ; ; ;" >
<LABEL for="u44">
<div id="u45" class="u45"  >
<div id="u45_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Save this shipping address for future use</span></p></div>
</div>
</LABEL>
<INPUT id="u44" name="data[ShippingAddress][save]" style="position:absolute; left:-3px; top:-2px;" type="checkbox" value="checked"  checked >
</DIV>
<div id="u46" class="u46"  >
<div id="u46_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Shopping cart</span></p></div>
</div><div id="u47" class="u47" >
<DIV id="u47_line" class="u47_line" ></DIV>
</div>
<div id="u48" class="u48_container"   >
    <a href="/carts/view?step=1">
<div id="u48_img" class="u48_normal detectCanvas"></div>
</a>
<div id="u49" class="u49" style="visibility:hidden;"  >
<div id="u49_rtf"></div>
</div>
</div>
<div id="u50" class="u50_container"   >
    <a href="/carts/view?step=2">
<div id="u50_img" class="u50_normal detectCanvas"></div>
</a>
<div id="u51" class="u51" style="visibility:hidden;"  >
<div id="u51_rtf"></div>
</div>
</div>
<div id="u52" class="u52_container"   >
<div id="u52_img" class="u52_normal detectCanvas"></div>
<div id="u53" class="u53" style="visibility:hidden;"  >
<div id="u53_rtf"></div>
</div>
</div>
<div id="u54" class="u54_container"   >
    <a href="/carts/view?step=4">
<div id="u54_img" class="u54_normal detectCanvas"></div>
</a>
<div id="u55" class="u55" style="visibility:hidden;"  >
<div id="u55_rtf"></div>
</div>
</div>
<div id="u56" class="u56"  >
<div id="u56_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Sign in</span></p></div>
</div>
<div id="u57" class="u57"  >
<div id="u57_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">Shipping and billing</span></p></div>
</div>
<div id="u58" class="u58"  >
<div id="u58_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Payment confirmation</span></p></div>
</div>
<DIV id="u59container"  style="position:absolute; left:29px; top:1004px; width:342px; height:16px; ; ; ;" >
<LABEL for="shipping_equal_billing">
<div id="u60" class="u60"  >
<div id="u60_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Billing address same as shipping</span></p></div>
</div>
</LABEL>
<INPUT id="shipping_equal_billing" name="data[shipping_equal_billing]" style="position:absolute; left:-3px; top:-2px;" type="checkbox" value="checked"   >
</DIV>
<DIV id="u61container" style="position:absolute; left:513px; top:971px; width:342px; height:16px; ; ; ;" >
<LABEL for="u61">
<div id="u62" class="u62"  >
<div id="u62_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Save this billing address for future use</span></p></div>
</div>
</LABEL>
<INPUT id="u61" name="data[BillingAddress][save]" style="position:absolute; left:-3px; top:-2px;" type="checkbox" value="checked"  checked >
</DIV>
<div id="u63" class="u63"  >
<div id="u63_rtf"><p style="text-align:left;"><span style="font-family:Helvetica;font-size:18px;font-weight:bold;font-style:normal;text-decoration:none;color:#404040;">Billing address</span></p></div>
</div><div id="u64" class="u64" >
<DIV id="u64_line" class="u64_line" ></DIV>
</div>
<div id="u65" class="u65_container submitForShipping" >
<div id="u65_img" class="u65_normal detectCanvas"></div>
<div id="u66" class="u66" style="visibility:hidden;"  >
<div id="u66_rtf"></div>
</div>
</div>
<div id="u67" class="u67 submitForShipping"  >
<div id="u67_rtf"><p style="text-align:center;"><span style="font-family:Helvetica;font-size:13px;font-weight:bold;font-style:normal;text-decoration:none;color:#FFFFFF;">Review order</span></p></div>
</div>
<div id="u68" class="u68_container"   >
<div id="u68_img" class="u68_normal detectCanvas"></div>
<div id="u69" class="u69" style="visibility:hidden;"  >
<div id="u69_rtf"></div>
</div>
</div>
<DIV id="u70" style="" >
<DIV id="pd1u70" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u71" type=text value="" class="u71" data-label="Text"    >

</DIV>
<DIV id="pd0u70" style="" data-label="Disabled">
<INPUT id="shipping_city" name="data[ShippingAddress][city]" type=text placeholder="enter text..." class="u72"     >

</DIV>
</DIV>
<?php if(!empty($shipping_addresses)){
    ?>
<div id="u74" class="u74"  >
<div id="u74_rtf"><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Use previously saved address:</span></p></div>
</div>

<SELECT id="u73" class="u73"   >
    <?php foreach($shipping_addresses as $index => $address):
        $format = '%1$s %2$s %3$s %4$s';
        $display = sprintf($format, $address['first_name'], $address['street'], $address['street2'], $address['zip']);
        $selected = ($index == 0)? ' selected' : '';
        ?>
        <OPTION value="<?php echo $index; ?>" <?php //echo $selected; ?>><?php echo $display; ?></OPTION>

    <?php endforeach; ?>
    <OPTION value="dash" disabled>---</OPTION>
    <OPTION value="new" >new address</OPTION>
</SELECT>
<?php }?>
<div id="u75" class="u75_container billing_related"   >
<div id="u75_img" class="u75_normal detectCanvas"></div>
<div id="u76" class="u76" style="visibility:hidden;"  >
<div id="u76_rtf"></div>
</div>
</div>
<DIV id="u77" style="" >
<DIV id="pd1u77" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u78" type=text value="" class="u78" data-label="Text"    >

</DIV>
<DIV id="pd0u77" style="" data-label="Disabled">
<INPUT id="billing_name" name="data[BillingAddress][first_name]" type=text placeholder="enter text..." class="u79 billing_related"     >

</DIV>
</DIV>
<div id="u80" class="u80 billing_related"  >
<div id="u80_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Your name (first and last)</span></p></div>
</div>
<div id="u81" class="u81_container billing_related"   >
<div id="u81_img" class="u81_normal detectCanvas"></div>
<div id="u82" class="u82" style="visibility:hidden;"  >
<div id="u82_rtf"></div>
</div>
</div>
<DIV id="u83" style="" >
<DIV id="pd1u83" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u84" type=text value="" class="u84" data-label="Text"    >

</DIV>
<DIV id="pd0u83" style="" data-label="Disabled">
<INPUT id="billing_street" name="data[BillingAddress][street]" type=text placeholder="enter text..." class="u85 billing_related"     >

</DIV>
</DIV>
<div id="u86" class="u86"  >
<div id="u86_rtf"><p style="text-align:right;"><span id="billing_address_label" style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Billing address</span></p></div>
</div>
<div id="u87" class="u87_container billing_related"   >
<div id="u87_img" class="u87_normal detectCanvas"></div>
<div id="u88" class="u88" style="visibility:hidden;"  >
<div id="u88_rtf"></div>
</div>
</div>
<DIV id="u89" style="" >
<DIV id="pd1u89" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u90" type=text value="" class="u90" data-label="Text"    >

</DIV>
<DIV id="pd0u89" style="" data-label="Disabled">
<INPUT id="billing_street2" name="data[BillingAddress][street2]" type=text placeholder="enter text..." class="u91 billing_related">

</DIV>
</DIV>
<div id="u92" class="u92 billing_related"  >
<div id="u92_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">City</span></p></div>
</div>
<div id="u93" class="u93_container billing_related"   >
<div id="u93_img" class="u93_normal detectCanvas"></div>
<div id="u94" class="u94" style="visibility:hidden;"  >
<div id="u94_rtf"></div>
</div>
</div>
<DIV id="u95" style="" >
<DIV id="pd1u95" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u96" type=text value="" class="u96" data-label="Text"    >

</DIV>
<DIV id="pd0u95" style="" data-label="Disabled">
<INPUT id="billing_zip" name="data[BillingAddress][zip]" type=text placeholder="enter text..." class="u97 billing_related"     >

</DIV>
</DIV>
<div id="u98" class="u98 billing_related" >
<div id="u98_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Zip</span></p></div>
</div>
<div id="u99" class="u99 billing_related"  >
<div id="u99_rtf"><p style="text-align:right;"><span style="font-family:Helvetica;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Country</span></p></div>
</div>
<SELECT id="billing_country" class="u100 billing_related"   name="data[BillingAddress][country]">
    <?php echo $this->element('country_dropdown');?>
</SELECT>

<div id="u101" class="u101_container billing_related"   >
<div id="u101_img" class="u101_normal detectCanvas"></div>
<div id="u102" class="u102" style="visibility:hidden;"  >
<div id="u102_rtf"></div>
</div>
</div>
<DIV id="u103" style="" >
<DIV id="pd1u103" style="visibility:hidden;" data-label="Enabled">
<INPUT id="u104" type=text value="" class="u104" data-label="Text"    >

</DIV>
<DIV id="pd0u103" style="" data-label="Disabled">
<INPUT id="billing_city" name="data[BillingAddress][city]" type=text placeholder="enter text..." class="u105 billing_related"     >

</DIV>
</DIV>
<?php if(!empty($billing_addresses)) {?>
<div id="u107" class="u107 billing_related"  >
<div id="u107_rtf"><p style="text-align:left;"><span style="font-family:Arial;font-size:13px;font-weight:normal;font-style:normal;text-decoration:none;color:#333333;">Use previously saved address:</span></p></div>
</div>
<SELECT id="u106" class="u106 billing_related"   >
    <?php foreach($billing_addresses as $index => $address):
        $format = '%1$s %2$s %3$s %4$s';
        $display = sprintf($format, $address['first_name'], $address['street'], $address['street2'], $address['zip']);
        $selected = ($index == 0)? ' selected' : '';

        ?>
        <OPTION value="<?php echo $index; ?>"<?php //echo $selected; ?> ><?php echo $display; ?></OPTION>

    <?php endforeach; ?>

    <OPTION value="dash" disabled>---</OPTION>
    <OPTION value="new" >new address</OPTION>
</SELECT>

<?php }?>
</div>
<?php $this->append('scriptBottom'); ?>
<script type="text/javascript">
        var shipping_addresses =  null;
        var billing_addresses =  null;
        var selectedBillingIndex = null;
        var selectedBilling = null;
        var selectedShippingIndex = null;
        var selectedShipping = null;
    $(document).ready(function() {
        initializeAddresses();

        $(".submitForShipping").click(function() {
            console.log("oi!!");
            // what happens when click on u153
            $("#shippingForm").submit();
        });

        $("#shipping_equal_billing").click(function () {
            if ($(this).is(':checked')) {
                hideBilling();
            } else {
                showBilling();
            }
        });

        function initializeAddresses() {
            shipping_addresses =  JSON.parse('<?php echo json_encode($shipping_addresses); ?>');
            billing_addresses =  JSON.parse('<?php echo json_encode($billing_addresses); ?>');
            if(shipping_addresses.length != 0) {
                selectedShippingIndex = $("#u73").val();
                selectedShipping = shipping_addresses[selectedShippingIndex];
                $("#u73").change(function() {
                    console.log("change shipping!!");
                    // what happens when click on u153
                    selectedShippingIndex = $(this).val();
                    if(selectedShippingIndex == 'new') {
                        clearForm('shipping');
                    }else {
                        selectedShipping = shipping_addresses[selectedShippingIndex];
                        console.log(selectedShipping);
                        fillInForm('shipping');
                    }
                });

                fillInForm('shipping');

            }
            if(billing_addresses.length != 0) {
                selectedBillingIndex = $("#u106").val();
                selectedBilling = billing_addresses[selectedBillingIndex];
                $("#u106").change(function() {
                    console.log("change billing!!");
                    // what happens when click on u153
                    selectedBillingIndex = $(this).val();
                    if(selectedBillingIndex == 'new') {
                        clearForm('billing');
                    }else {
                        selectedBilling = billing_addresses[selectedBillingIndex];
                        console.log(selectedBilling);
                        fillInForm('billing');
                    }

                });

            fillInForm('billing');
            }
        }

        function fillInForm(type) {
            if (type == 'shipping') {
                $("#shipping_name").val(selectedShipping['first_name']);
                $("#shipping_street").val(selectedShipping['street']);
                $("#shipping_street2").val(selectedShipping['street2']);
                $("#shipping_city").val(selectedShipping['city']);
                $("#shipping_country").val(selectedShipping['country']);
                $("#shipping_zip").val(selectedShipping['zip']);

            }
            if (type == 'billing') {
                $("#billing_name").val(selectedBilling['first_name']);
                $("#billing_street").val(selectedBilling['street']);
                $("#billing_street2").val(selectedBilling['street2']);
                $("#billing_city").val(selectedBilling['city']);
                $("#billing_country").val(selectedBilling['country']);
                $("#billing_zip").val(selectedBilling['zip']);

            }

        }

        function clearForm(type) {
            if (type == 'shipping') {
                $("#shipping_name").val('');
                $("#shipping_street").val('');
                $("#shipping_street2").val('');
                $("#shipping_city").val('');
                $("#shipping_country").val('SG');
                $("#shipping_zip").val('');

            }
            if (type == 'billing') {
                $("#billing_name").val('');
                $("#billing_street").val('');
                $("#billing_street2").val('');
                $("#billing_city").val('');
                $("#billing_country").val('SG');
                $("#billing_zip").val('');

            }

        }

        function hideBilling() {
            
            $("#billing_address_label").text("Your billing address same as shipping");
            $("#u86").css("width", 250);

            // things to hide
          
            $(".billing_related").hide();
        }

        function showBilling() {
            $(".billing_related").show();
            $("#billing_address_label").text("Billing Address");
            $("#u86").css("width", 105);
        }
    });


</script>
<?php $this->end('scriptBottom'); ?>