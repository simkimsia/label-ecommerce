<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="robots" content="index, follow" />
  <meta name="keywords" content="" />
  <meta name="title" content="" />
  <meta name="description" content="" />
  <title></title>

<!-- Stylesheets Start //-->
<link rel="shortcut icon" href="<?php echo $this->Html->assetUrl('img/cake.icon.png'); ?>"/>
<?php echo $this->Html->css('childlabel'); ?>
<!-- Stylesheets Start End //-->
<?php echo $this->Html->script('jquery-1.10.2'); ?>
<?php echo $this->Html->script('jquery.nivo.slider'); ?>
<?php echo $this->Html->css('themes/default/default'); ?>
<?php echo $this->Html->css('themes/light/light'); ?>
<?php echo $this->Html->css('themes/dark/dark'); ?>
<?php echo $this->Html->css('themes/bar/bar'); ?>
<?php echo $this->Html->css('nivo-slider'); ?>
<?php echo $this->Html->css('jquerytools'); ?>
<?php echo $this->Html->script('libs/alertify/0.3.10/alertify.min', array('block' => 'libScriptBottom')); ?>
<?php echo $this->Html->css('alertify/0.3.10/themes/alertify.default'); ?>
</head>
<body>
  <?php echo $this->Session->flash(); ?>
<div id="childContainer">
    <div class="childHolder">


        
        <ul id="menuBar">
          <li>
            <a href="/products/view/1"><div class="shop">shop</div></a>
            <div id="dropDownMenu" class="menu_items">
              <div class="arrowHolder">
                <?php echo $this->Html->image('arrow.png'); ?>
                </div>
              <ul class="internalLinks">
                <li>
                    <strong>Child Label Packs (Stickers)</strong>
                    <ul>
                      <li><a href="/products/view/2">Circle Labels</a></li>
                      <li><a href="/products/view/1">Rectangle Labels</a></li>
                      <li><a href="/products/view/3">Chinese Labels</a></li>
                      <li><a href="/products/view/4">Birthday Labels</a></li>
                      <li><a href="/products/view/5">Book Labels</a></li>
                      <li><a href="/products/view/6">Split Dual Name Pack</a></li>
                      <li><a href="/products/view/7">Split English/Chinese Pack</a></li>
                    </ul>
                </li>
                <li><strong>Child Label Packs (Iron Ons)</strong>
                  <ul>
                      <li><a href="/products/view/9">Circle Labels</a></li>
                      <li><a href="/products/view/8">Rectangle Labels</a></li>
                      <li><a href="/products/view/15">Chinese Labels</a></li>
                      <li><a href="/products/view/10">Split Dual Name Pack</a></li>
                      <li><a href="/products/view/11">Split English/Chinese Pack</a></li>
                    </ul>
                </li>
                <li><strong>Value Packs</strong>
                  <ul>
                      <li><a href="/products/view/12">Get Me Started Pack</a></li>
                      <li><a href="/products/view/14">Give Me Everything Pack</a></li>
                    </ul>
                </li>
              </ul>
            </div>
          </li>
          <a href="/about">
            <li class="about">about</li>
          </a>
          <a href="/faq">
            <li class="faqs">faqs</li>
          </a>
          <a href="/call">
            <li class="call">call</li>
          </a>
        </ul>

        <div class="topRightArea">
            <div class="topBtn">
              <div class="circleBtn "><a href="#" class="spacer">My<br />Account</a></div>
              <div class="circleBtn"><a href="#">My<br />Cart <span>Item 0</span></a></div>
            </div>
            <div class="btmBtn">
              <a href="https://www.facebook.com/childlabel"><div class="FBtn">Love</div></a>
              <a href="https://www.twitter.com/childlabel"><div class="TWBtn">Twitter</div></a>
            </div>
        </div>

        <a href="/"><div class="topleftIcon"></div></a>

        <div class="topMenuHolder"></div>

        <?php echo $this->fetch('content'); ?>

        <div id="footerNav">
            <div class="col1">
              <strong>Stickers</strong><br/>
              <?php // foreach ($productsForSale as $product): ?>
                <?php //echo $this->Html->link(__($product['Product']['name']), array('controller' => 'products', 'action' => 'view', $product['Product']['id'])); ?>
              <?php //endforeach; ?>
                <a href="/products/view/2">Circle Labels</a></br>
                <a href="/products/view/1">Rectangle Labels</a></br>
                <a href="/products/view/3">Chinese Labels</a></br>
                <a href="/products/view/4">Birthday Labels</a></br>
                <a href="/products/view/5">Book Labels</a></br>
                <a href="/products/view/6">Split Dual Name Pack</a></br>
                <a href="/products/view/7">Split English/Chinese Pack</a></br>
            </div>

            <div class="col1">
              <strong>Iron Ons</strong><br/>
                <a href="/products/view/9">Circle Labels</a></br>
                <a href="/products/view/8">Rectangle Labels</a></br>
                <a href="/products/view/10">Chinese Labels</a></br>
                <a href="/products/view/15">Split Dual Name Pack</a></br>
                <a href="/products/view/11">Split English/Chinese Pack</a></br>
            </div>

            <div class="col1">
              <strong>Value Packs</strong><br/>
                <a href="/products/view/12">Get Me Started Pack</a></br>
                <a href="/products/view/14">Give Me Everything Pack</a></br>
             
            </div>

            <div class="col1">
              <strong>Navigation</strong><br/>
                <a href="/about">About</a><br/>
                <a href="/faq">FAQs</a><br/>
                <a href="/call">Contact</a><br/>
                <a href="#">Facebook</a><br/>
                <a href="#">Twitter</a><br/>
            </div>
        </div>


        <div style="clear:both;"></div>
        <div class="leffooter">&copy; Child Label Pte Ltd All Rights Reserved</div>
    </div><!-- End Child Holder -->



</div>
<?php echo $this->fetch('libScriptBottom'); ?>
<script type="text/javascript">
$(window).load(function() {
    $('#slider').nivoSlider();
});

$(function() { 
      $('#dropDownMenu').hide();
      $("#menuBar > li")
        .mouseenter(function() {
          $(".menu_items", this).show();
        })
        .mouseleave(function() {
          $(".menu_items", this).hide();
        });
    });

</script>
<?php echo $this->fetch('scriptBottom'); ?>
</body>
</html>