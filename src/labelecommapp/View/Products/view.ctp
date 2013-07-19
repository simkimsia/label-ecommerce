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
                            foreach($product['Product']['variants'] as $variant){
                                ?><li><a href="/products/view/2"><?php echo $variant['name']?></a></li>
                            
                       
                    <?php } }?>
                    <!-- <li><a href="/products/view/2">Circle Labels</a></li>
                    <li><a href="/products/view/1">Small Rectangle</a></li>
                    <li><a href="/products/view/3">Small Rectangle (Chinese)</a></li>
                    <li><a href="/products/view/4">Birthday Large</a></li>
                    <li><a href="/products/view/5">Book Labels</a></li>
                    <li><a href="/products/view/6">Split Dual Name Pack</a></li>
                     <li><a href="/products/view/7">Split English/Chinese name pack</a></li> -->
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
                    <div class="left">
                        <?php echo $this->Html->image('bigleft.png');?>

                        
                    </div>
                    <div class="right">
                        <?php echo $this->Html->image('bigright.png');?>
                    </div>
                </div>
                <div class="clearBoth"></div>
                <a href="#"><div class="clicktocustomize"></div></a>
                <div class="rocketScience"></div>
                
            </div>
          </div>
          <div class="footerContent">
            
          </div>
          
          <div class="addtocart">
                <form method="post" action="#" class="addtocartBox">
                    <input type="text" name="" value="0" disabled="disabled" class="addtocartinput" />
                </form>
          </div>
          
          <div class="topContent secondrow">
          </div>
          <div class="mainContent">
            
            <div class="theContents fixheight clearfix">
                <div class="cartHolder">
                    <div class="cartInfo">
                        <a href="#"><div class="leftArrow"></div></a>
                            <div class="cartblocker">
                                 <ul class="cartProductList">
                                    <li>
                                        <?php echo $this->Html->image('productimgsmall.png', array('width'=>'135'));?>
                                        <br />
                                        <div class="qtydesc">qty:<input type="text" name="" value="03" disabled="disabled" class="cartNo" /><a href="#">
                                        <?php echo $this->Html->image('basketicon.png' ,array('width'=>'10'));?>
                                    </a></div>
                                    </li>
                                    <li>
                                    <?php echo $this->Html->image('productimgsmall.png' ,array('width'=>'135'));?>

                                        <br />
                                    <div class="qtydesc">qty:<input type="text" name="" value="03" disabled="disabled" class="cartNo" /><a href="#">
                                        <?php echo $this->Html->image('basketicon.png' ,array('width'=>'10'));?>

                                    </a></div>
                                    </li>
                                    <li>
                                        <?php echo $this->Html->image('productimgsmall.png' ,array('width'=>'135'));?>
                                        <br />
                                        <div class="qtydesc">qty:<input type="text" name="" value="03" disabled="disabled" class="cartNo" />
                                        <?php $this->Html->image('basketicon.png' ,array('width' =>'10', 'class'=> 'dustbinleft'));?>

                                        </div>
                                    </li>
                                    <li>

                                        <?php echo $this->Html->image('productimgsmall.png' ,array('width'=>'135'));?>

                                        <br />
                                        <div class="qtydesc">qty:<input type="text" name="" value="03" disabled="disabled" class="cartNo" /><a href="#">
                                            <?php echo $this->Html->image('basketicon.png' ,array('width'=>'10', 'class' => 'dustbinleft'));?>

                                        </a></div>
                                    </li>
                                 </ul>          
                            </div>
                        <a href="#"><div class="rightArrow"></div></a>
                    </div>
                    
                    <div class="rightInfo">
                    <span class="amount">$19.95</span><br />
                    <span class="totalamount">Total amount</span> <span class="minitext">(w/GST &amp; Shipping)</span>
                        <div class="plane">
                            <div class="shippingfees">Shipping<br />$1.50</div>
                        </div>
                    </div>
                    <div class="rightdivider">
                        <?php $this->Html->image('divider.png' ,array('class'=>''));?>

                    </div>
                </div>
            </div>
          </div>
          <div class="footerContent">
            <div class="checkout"><a href="#">
                    <?php $this->Html->image('checkoutbtn.png');?>

            </a></div>
          </div>
        </div>
<?php echo $this->Html->script('jquery.tools.min', array('block' => 'scriptBottom')); ?>
<?php $this->append('scriptBottom'); ?>
<script>
    $(document).ready(function() {
        $(".scrollable").scrollable();
    });
</script>
<?php $this->end('scriptBottom'); ?>