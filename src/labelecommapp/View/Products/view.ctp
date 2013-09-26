        <div class="contentArea">
          
          <div class="topContent">
                <div class="chooseadesign"></div>
          </div>
          <div class="mainContent">
            
            <div class="theContents clearfix">
                <div class="productCircleHolder clearfix">
                    <?php echo $this->element('scrollable', array('product' => $product)); ?>
                </div>
                <div class="desc" style="font-size:24px;"><?php echo h($product['Product']['name']); ?></div>
                <ul class="productlabels">
                <h2 class="price" style="font-size:69px;font-weight:bold;"><?php
                     $options = array('places' => 0);
                     echo $this->Number->currency($product['Product']['price'], '$', $options); ?></h2>

                    <?php 
                        if(count($product['Product']['variants']) != 1){

                            foreach($product['Product']['variants'] as $index => $variant) {
                                $bold_class = '';
                                if($index == 0) {

                                    $bold_class = 'bold';

                                } 
                              
                                ?><li><?php echo $this->Html->link($variant['name'],'/products/view/'.$product['Product']['id'].'#'.$variant['id'], array('class' => 'variant_links ' .$bold_class, 'ref' => '#variant_'.$variant['id'].'_images','id' => 'variant_'.$variant['id']))?></a></li>
                            
                       
                    <?php } }?>

                </ul>
                <div class="productdetails"><!-- <span class="detail"><br/>Details:</span> --><span class="thewords"><br/><br/><br/>
                    <?php 
                        $desc_line = preg_split('/(?<=[.?!;:])\s+/', h($product['Product']['description']), -1, PREG_SPLIT_NO_EMPTY);
                        foreach ($desc_line as $line){
                             echo $line;
                             echo '<br/><br/>';
                        }
                    ?>
                   <br /></span></div>
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
                                <div class="extra_details_labels">First Line</div>
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
                                              'FuturaBook' => 'Futura Book'
                                        ),
                                        'label' => false,
                                        'div' => false,
                                        'empty' => false,
                                        'required',
                                        'id' => 'font_dropdown'
                                    ));
                                    ?>
                                </div>
                                <div class="font_example" style="margin-left:10px;width: 262px;overflow:hidden;">Preview: <div id="name_example" style="display:inline;" ><div id="font_first_line" style="display:inline">Nathan</div> <div id="font_second_line" style="display:inline">Summers</div></div></div>
                            </td>
                            
                        </tr>
                        
                        <tr>
                            <td>
                                <div class="extra_details_labels">
                                    Second Line
                                </div>
                                <br>
                                <div class="second_line_field">
                                    <?php echo $this->Form->input('CartsItem.second_line', array(
                                    'label' => false,
                                    'div' => false,
                                    'required'
                                   ));?>
                                </div>
                            </td>
                            <td>
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
        $(".scrollable").scrollable();
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
           console.log($(this).val());
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
                str = 'Nathan';
                
            }
            $('#font_first_line').text(str);
        });

        $('#CartsItemSecondLine').on('input', function(){
            var str = $(this).val();
            if(str == ''){
                str = 'Summers';
               
            }
            $('#font_second_line').text(str);
        });
        

    });
</script>
<?php $this->end('scriptBottom'); ?>