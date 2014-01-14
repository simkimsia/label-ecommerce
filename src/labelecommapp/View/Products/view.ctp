        <div class="contentArea">

          <div class="topContent">
                <div class="chooseadesign"><?php echo $this->Html->image('../img/chooseadesign.png', array('style'=> 'width:400px;height:85px;') ); ?></div>
          </div>
          <div class="mainContent">

            <div class="theContents clearfix">
                <div class="productCircleHolder clearfix" style="width: 900px;margin-left:0px;margin-top:50px;">
                    <?php echo $this->element('scrollable', array('product' => $product)); ?>
                </div>
                <div class="desc" style="font-size:24px;color:#787878;"><?php echo h($product['Product']['name']); ?></div>
                <ul class="productlabels">
                <h2 class="price" style="font-size:40px;font-weight:bold;color:#787878;"><?php
                     $options = array('places' => 0);
                     echo $this->Number->currency($product['Product']['price'], '$', $options); ?></h2>

                    <?php
                        if (count($product['Product']['variants']) != 1) :
                            foreach($product['Product']['variants'] as $index => $variant) :
                                $bold_class = '';
                                if($index == 0) {
                                    $bold_class = 'bold';
                                }

                                ?><li><?php echo $this->Html->link($variant['name'],'/products/view/'.$product['Product']['id'].'#'.$variant['id'], array('class' => 'variant_links ' .$bold_class, 'ref' => '#variant_'.$variant['id'].'_images','id' => 'variant_'.$variant['id']))?></a></li>
                    <?php
                            endforeach;
                        endif;
                    ?>

                </ul>
                <div class="productdetails" style="margin-top:100px;"><!-- <span class="detail"><br/>Details:</span> --><span class="thewords"><br/><br/><br/>
                    <?php
                        $desc_line = preg_split('/(?<=[.?!;:])\s+/', h($product['Product']['description']), -1, PREG_SPLIT_NO_EMPTY);
                        $newlines = array("\r\n", "\n\r", "\r", "\n");
                        foreach ($desc_line as $line) {
                             echo nl2br($line);
                             echo '<br/><br/>';
                        }
                    ?>
                   <br />
               </span>
               </div>
                    <?php if (isset($rep_img)) :?>
                   <img src="<?php echo $rep_img;?>" height="435" width="435" style="margin-left:90px;margin-top:30px;"></img>
                    <?php else:
                    $id = $product['Product']['id'];
                    echo
                        "Admin, you need to <a href=\"/admin/products/$id/rep_img\">upload</a> a Product Rep Image for this Product!";
                    endif; ?>

                   <div class="selected_label_name" style="margin-top:10px;"> You have not selected a design. </div>

                <div class="clearBoth"></div>

                <div>
                    <table cellpadding="0" cellspacing="0" border="0" class="extra_details">
                            <?php
                                echo $this->Form->create('Cart', array(
                                    'action' => 'buy'));
                                echo $this->Form->input('CartsItem.quantity', array(
                                    'type' => 'hidden',
                                    'label' => false,
                                    'div' => false,
                                    'style' => 'width: 50px;',
                                    'value' => 1));
                                echo $this->Form->hidden('CartsItem.foreign_key', array(
                                    'value' => $product['Product']['variants'][0]['id']));
                                echo $this->Form->hidden('CartsItem.model', array(
                                    'value' => 'ProductVariant'));
                                    ?>

                        <tr>
                            <td>
                                <?php
                                $name = $product['Product']['name'];
                                if (strpos($name, 'Split') === 0) {
                                    $display = "Name";
                                } else {
                                    $display = "Line";
                                }

                                    ?>
                                <div class="extra_details_labels">First <?php echo $display; ?></div>
                                <br>
                                <div class="first_line_field">
                                   <?php echo $this->Form->input('CartsItem.first_line', array(
                                    'label' => false,
                                    'div' => false,
                                    'required'
                                   ));?>
                                </div>
                            </td>
                            <td>
                                <div class="extra_details_labels">Font</div>
                                <br>
                                <div class="select_font_field">

                                  <?php echo $this->Form->input('CartsItem.font', array(
                                        'options' => array(
                                            'AmericanTypewriter' => 'American Typewriter',
                                             'Bebas' => 'Bebas',
                                              'BurstMyBubble' => 'Burst My Bubble',
                                              'Chowderhead' => 'Chowderhead',
                                              'Futura Bk BT' => 'Futura Book'
                                        ),
                                        'label' => false,
                                        'div' => false,
                                        'empty' => false,
                                        'required',
                                        'id' => 'font_dropdown'
                                    ));
                                    ?>
                                </div>

                                <div class="font_example" style="margin-left:10px;width: 262px;overflow:hidden;">Preview: <div id="name_example" style="display:inline;" ><div id="font_first_line" style="display:inline">Child</div> <div id="font_second_line" style="display:inline">Label</div></div></div>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <div class="extra_details_labels">
                                    Second <?php echo $display; ?>
                                </div>
                                <br>
                                <div class="second_line_field">
                                    <?php echo $this->Form->input('CartsItem.second_line', array(
                                    'label' => false,
                                    'div' => false,
                                   ));?>
                                </div>
                            </td>
                            <td>
                                 <?php echo $this->Form->input('CartsItem.label_type', array(
                                    'type' => 'hidden',
                                    'label' => false,
                                    'div' => false,

                                ))?>

                                <div style= "border-radius:15px;width:262px;height:70px;padding:5px;  font-size:30px;background-color:#44c8f5;color:#FFFFFF;">

                               <?php
                                echo $this->Form->submit(__('Add to Cart!'), array(
                                    'div' => false,
                                    'style' => 'border:2px dashed white;border-radius:15px;width:262px;height:70px;font-size:30px;background-color:#44c8f5;color:#FFFFFF;margin:0px;'

                                    ));
                                    ?>

                                </div>
                            </td>
                        </tr>
                    </table>
                    <?php echo $this->Form->end();
                            ?>
                </div>
                <!--<div class="searchBox">
                    <form method="post" action="#" class="labelsearch">
                        <input type="text" name="" placeholder="Search Child Label" class="searchLabel" />
                    </form>
                </div> -->
                <div class="clearBoth"></div>
                <div class="productsDescription">
                   <!-- <div class="left">
                        <?php echo $this->Html->image('bigleft.png');?>


                    </div>
                    <div class="right">
                        <?php echo $this->Html->image('bigright.png');?>
                    </div>-->
                </div>
                <div class="clearBoth"></div>
               <!-- <a href="#"><div class="clicktocustomize"></div></a>
                <div class="rocketScience"></div>-->

            </div>
          </div>
          <div class="footerContent" ></div>

          <!-- <div class="addtocart">

          </div> -->

          <div style="height:40px;"></div>



<?php echo $this->Html->script('jquery.tools.min', array('block' => 'scriptBottom')); ?>
<?php $this->append('scriptBottom'); ?>
<script>
    $(document).ready(function() {
		//
		var isMobile = {
			Android: function() {
				return navigator.userAgent.match(/Android/i);
			},
			BlackBerry: function() {
				return navigator.userAgent.match(/BlackBerry/i);
			},
			iOS: function() {
				return navigator.userAgent.match(/iPhone|iPad|iPod/i);
			},
			Opera: function() {
				return navigator.userAgent.match(/Opera Mini/i);
			},
			Windows: function() {
				return navigator.userAgent.match(/IEMobile/i);
			},
			any: function() {
				return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
			}
		};

		if(isMobile.any()){
			// Mobile!
			/* document.write("This is mobile."); */
		} else {
			// Not mobile
			/* document.write("This is desktop."); */
		}
		//
        var scrollableObject = $(".scrollable").scrollable();
        var instance = scrollableObject.eq(0).data("scrollable");
        var notSelectedImage = true;
        var rightArrow1TemporarilyHide = false;
        var leftArrowTemporarilyHide = false;

        <?php $gotMultipleVariants = (count($product['Product']['variants']) > 1);?>
        var multipleVariants = <?php if ($gotMultipleVariants) {echo "true";} else {echo "false"; } ?>;
        if (multipleVariants) {
            $(".productCircleHolder").css("width", 720);
            $(".productCircleHolder").css("margin-left", 180);
            $(".scrollable").css("width", 630);
            $(".rightArrow1").css("margin-left", 605);
        }
        if(window.location.hash) {

            var hash = window.location.hash;

            var the_scrollable = '#variant_'+ hash.substr(1) +'_images';
            $(".variant_images_scrollable").hide();
            $(the_scrollable).show();

            var the_variant_link = '#variant_'+hash.substr(1);
            $(".variant_links").css('font-weight', 'normal');
            $(the_variant_link).css('font-weight', 'bold');
            $("#CartsItemForeignKey").val(hash.substr(1));

        }
        $(".variant_links").click(function (e){

            var the_scrollable = $(e.target).attr('ref');

            $(".variant_images_scrollable").hide();
            $(the_scrollable).show();
            $(".variant_links").css('font-weight', 'normal');
            $(e.target).css('font-weight', 'bold');
            var variant_id = e.target.id.substr(8);
            $("#CartsItemForeignKey").val(variant_id);
        });

        $('#font_dropdown option').each(function() {
        $(this).css('font', $(this).val());
    // add $(this).val() to your list
        });
        $('#name_example').css("font-family", $('#font_dropdown').val());
        $('#font_dropdown').change(function(){

            // $('#font_dropdown option:selected').each(function(){
            //     str = $(this).val();
            // });
            $('#name_example').css("font-family", $(this).val());
        });
        $('#CartsItemFirstLine').on('input',function(){
           var str = $(this).val();
            if(str == ''){
                str = 'Child';
                $('#font_second_line').text("Label");
            } else {
                $('#font_second_line').text("");
            }
            $('#font_first_line').text(str);
        });

        $('#CartsItemSecondLine').on('input', function(){
            var str = $(this).val();
            if(str == '' && $('#CartsItemFirstLine').val() == ''){
                str = 'Label';
            }
            $('#font_second_line').text(str);
        });

        // implement function to select image on click.
        $('.item_page').on("click", "img", function(){
            // disable scrollable by hiding the arrows
            if (notSelectedImage) {
                notSelectedImage = false;
                // turn off keyboard to prevent scrolling via cursor keys
                instance.getConf().keyboard = false;
                // make the rest images permanent border white
                makeOtherImagesBorderWhite($(this));
                // make the rest images all faded away;
                makeOtherImagesFaded($(this));
                // make the selected image permanently border blue
                highlightLabel($(this));
                var cleanedSource = cleanFilename($(this).attr('src'));
                $('#CartsItemLabelType').val(cleanedSource);
                $('.selected_label_name').html('You have selected: <strong>' + cleanedSource + '</strong>');
                if ($('.rightArrow1').is(':visible')) {
                    $('.rightArrow1').hide();
                    rightArrow1TemporarilyHide = true;
                }
                // do same for left arrow
                if ($('.leftArrow').is(':visible')) {
                    $('.leftArrow').hide();
                    leftArrowTemporarilyHide = true;
                }
            } else if (notSelectedImage == false) { // to de-select the image
                notSelectedImage = true;
                instance.getConf().keyboard = true;
                resetSelectedLabel();
                // need to remove the filename chosen
                $('#CartsItemLabelType').val("");
                $('.selected_label_name').text("You have not selected a design.");
                if (rightArrow1TemporarilyHide) {
                    $('.rightArrow1').show();
                    rightArrow1TemporarilyHide = false;
                }
                // do same for left arrow
                if (leftArrowTemporarilyHide) {
                    $('.leftArrow').show();
                    leftArrowTemporarilyHide = false;
                }
            }

        });

        function defaultSelectLabel(){
            highlightLabel($('.item_page img:first-child'));
            var defaultSelection = cleanFilename($('.item_page img:first-child').attr('src'));
            $('#CartsItemLabelType').val(defaultSelection);
        }
        // function to highlight selected label.
        function highlightLabel(obj){
            obj.css('border-style','solid');
            obj.css('border-color', '#44c8f5');
        }

        //function to reset the all the border highlight
        function resetSelectedLabel(){
            $('.item_page').children().removeAttr('style');
            $('.item_page').children().removeClass('faded');
        }

        function makeOtherImagesFaded(exceptThis){
            $('.item_page').children().not(exceptThis).addClass('faded');
        }

        function makeOtherImagesBorderWhite(exceptThis){
            $('.item_page').children().not(exceptThis).css('border-color', 'white');
        }

        function basename(str) {
            var base = new String(str).substring(str.lastIndexOf('/') + 1);
            if(base.lastIndexOf(".") != -1)
               base = base.substring(0, base.lastIndexOf("."));
           return base;
        }

        function cleanFilename(str) {
           var decodedStr = decodeURIComponent(str);
           var filename = basename(decodedStr);
           if(filename.indexOf(".") > -1){
               var cleaned = filename.split(".");
               return cleaned[0];
           }

           return filename;

        }


    });
</script>
<?php $this->end('scriptBottom'); ?>
