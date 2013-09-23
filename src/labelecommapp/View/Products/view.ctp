        <div class="contentArea">
          
          <div class="topContent">
                <div class="chooseadesign"></div>
          </div>
          <div class="mainContent">
            
            <div class="theContents clearfix">
                <div class="productCircleHolder clearfix">
                    <?php echo $this->element('scrollable', array('product' => $product)); ?>
                </div>
                <h2 class="price">$<?php echo h($product['Product']['price']); ?></h2>
                <div class="desc"><?php echo h($product['Product']['name']); ?></div>
                <ul class="productlabels">

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
                <div class="productdetails"><span class="detail"><br/>Details:</span><span class="thewords"><br/><br/><br/>
                    <?php 
                        $desc_line = preg_split('/(?<=[.?!;:])\s+/', h($product['Product']['description']), -1, PREG_SPLIT_NO_EMPTY);
                        foreach ($desc_line as $line){
                             echo $line;
                             echo '<br/><br/>';
                        }
                    ?>
                   <br /></span></div>
                <div class="clearBoth"></div>
                <div class="searchBox">
                    <form method="post" action="#" class="labelsearch">
                        <input type="text" name="" placeholder="Search Child Label" class="searchLabel" />
                    </form>
                </div>
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
          
          <div class="addtocart">
           
                <?php
                    echo $this->Form->create('Cart', array(
                        'action' => 'buy'));
                    echo $this->Form->input('CartsItem.quantity', array(
                        'label' => false,
                        'div' => false,
                        'style' => 'width: 50px;',
                        'default' => 1));
                    echo $this->Form->submit(__('buy'), array(
                        'div' => false,
                        'style' => 'margin-left: 120px;width: 80px; position:relative; top:-36px;'));
                    echo $this->Form->hidden('CartsItem.foreign_key', array(
                        'value' => $product['Product']['variants'][0]['id']));
                    echo $this->Form->hidden('CartsItem.model', array(
                        'value' => 'ProductVariant'));

                    echo $this->Form->end();
                ?>
          </div>

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

        
    });
</script>
<?php $this->end('scriptBottom'); ?>