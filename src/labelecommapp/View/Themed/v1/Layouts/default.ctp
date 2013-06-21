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
<link rel="shortcut icon" href="<?php echo $this->Html->assetUrl('img/favicon.ico'); ?>"/>
<?php echo $this->Html->css('childlabel'); ?>
<!-- Stylesheets Start End //-->
<?php echo $this->Html->script('jquery-1.9.0.min'); ?>
<?php echo $this->Html->script('jquery.nivo.slider'); ?>
<?php echo $this->Html->css('themes/default/default'); ?>
<?php echo $this->Html->css('themes/light/light'); ?>
<?php echo $this->Html->css('themes/dark/dark'); ?>
<?php echo $this->Html->css('themes/bar/bar'); ?>
<?php echo $this->Html->css('nivo-slider'); ?>

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
</head>
<body>
<div id="childContainer">
    <div class="childHolder">


        
        <ul id="menuBar">
          <li>
            <a href="shop.html"><div class="shop">shop</div></a>
            <div id="dropDownMenu" class="menu_items">
              <div class="arrowHolder">
                <?php echo $this->Html->image('arrow.png'); ?>
                </div>
              <ul class="internalLinks">
                <li>
                    <strong>Child Label Packs (Stickers)</strong>
                    <ul>
                      <li><a href="#">Round Labels</a></li>
                      <li><a href="#">Small Rectangle</a></li>
                      <li><a href="#">Chinese Name Labels</a></li>
                      <li><a href="#">Birthday Labels</a></li>
                      <li><a href="#">Book Labels</a></li>
                      <li><a href="#">Split Dual Name Pack</a></li>
                      <li><a href="#">Split English/Chinese Name Pack</a></li>
                    </ul>
                </li>
                <li><strong>Child Label Packs (Iron Ons)</strong>
                  <ul>
                      <li><a href="#">Round Labels</a></li>
                      <li><a href="#">Small Rectangle</a></li>
                      <li><a href="#">Chinese Name Labels</a></li>
                      <li><a href="#">Split Dual Name Pack</a></li>
                      <li><a href="#">Split English/Chinese Name Pack</a></li>
                    </ul>
                </li>
                <li><strong>Value Packs</strong>
                  <ul>
                      <li><a href="#">Get Me Started Pack</a></li>
                      <li><a href="#">Variety Pack</a></li>
                      <li><a href="#">Give Me Everything Pack</a></li>
                    </ul>
                </li>
              </ul>
            </div>
          </li>
          <a href="about.html"><li class="about">about</li></a>
          <a href="faq.html"><li class="faqs">faqs</li></a>
          <a href="call.html"><li class="call">call</li></a>
        </ul>

        <div class="topRightArea">
            <div class="topBtn">
              <div class="circleBtn "><a href="#" class="spacer">My<br />Account</a></div>
              <div class="circleBtn"><a href="#">My<br />Cart <span>Item 0</span></a></div>
            </div>
            <div class="btmBtn">
              <a href="#"><div class="FBtn">Love</div></a>
              <a href="#"><div class="TWBtn">Twitter</div></a>
            </div>
        </div>

        <a href="index.html"><div class="topleftIcon"></div></a>

        <div class="topMenuHolder"></div>

        <div class="bannerHolder theme-default">
          <div id="slider" class="nivoSlider">
              <a href="#">
              <?php echo $this->Html->image('banner3.jpg', array('data-thumb' => 'banner1.jpg')); ?>

                <!-- <img src="img/banner3.jpg" data-thumb="img/banner1.jpg" alt="" /> -->
              </a>

              <a href="#">
                  <?php echo $this->Html->image('banner2.jpg', array('data-thumb' => 'banner2.jpg')); ?>
              <!-- <img src="img/banner2.jpg" data-thumb="img/banner2.jpg" alt="" /> -->
              </a>
          </div>
        </div>

        <div class="featuredProducts clearfix">

          <ul class="clearfix">
            <li class="clearfix">
              <a href="#"><div class="learnmoreHolder">Learn More</div></a>
              <div class="productHolder">Rocket Science</div>
              <?php echo $this->Html->image('productimg1.png', array('width' => '260')); ?>
            </li>

            <li class="clearfix">
              <a href="#"><div class="learnmoreHolder">Learn More</div></a>
              <div class="productHolder">Under the Sea</div>
              <?php echo $this->Html->image('productimg2.png', array('width' => '260')); ?>
            </li>

            <li class="noright clearfix">
              <a href="#"><div class="learnmoreHolder">Learn More</div></a>
              <div class="productHolder">VROOM!</div>
              <?php echo $this->Html->image('productimg3.png', array('width' => '260')); ?>
            </li>
          </ul>
        </div>

        <div class="contentArea">
          <div class="shorttext">Here at Child Label, we believe that every child<br />needs labels. Here's is why</div>
          <div class="contents">
            <div class="leftcontent">
              <h3 class="notop">Labeling is FUN!</h3>
              <p>Our labels are such a hit because they’re gorgeous, they’re sticky and they’re uniquely yours. The only thing more fun than a cute sticker is a cute sticker with your kid’s name on it, so they can stake claim to everything they own.</p>

              <h3>Stuff won't be taken by mistake.</h3>
              <p>There are probably 20 of the same water bottles at your child’s playgroup and the last thing you want is your kid drinking out of someone else’s bottle by mistake.</p>
            </div>

            <div class="centercontent">

              <h3 class="notop">Stuff won’t be taken intentionally. </h3>
              <p>This is also known as stealing. Everyone knows that people are less likely to steal a bottle with your kid’s name labeled clearly on it. They’d have to spend all that time trying to it off cleanly and people who steal just don’t have that kind of time. </p>

              <h3>Great as presents.</h3>
              <p>Child Labels make awesome presents for little friends. If you’re planning a party, these individually customized 
                names will make fantastic party packs.
              </p>

            </div>

            <div class="rightcontent noright">

              <h3 class="notop">Oh so PRETTY!</h3>
              <p>After buying those designer eco-friendly kid items, you want to label them with designer stickers made by tiny slave bunnies. Basically, you want to label everything with awesome designer stickers made by tiny slave bunnies. </p>

              <h3>Chinese characters.</h3>
              <p>Prefer your name to be printed in Chinese,没问题! We offer both English and Chinese characters so you can mix and match.</p>
            </div>
          </div>
        </div>
    
        <div style="clear:both;"></div>
        <div id="footerNav">
            <div class="col1">
              <strong>Stickers</strong><br/>
                <a href="#">Round Labels</a></br>
                <a href="#">Small Rectangle</a></br>
                <a href="#">Chinese Name Labels</a></br>
                <a href="#">Birthday Labels</a></br>
                <a href="#">Book Labels</a></br>
                <a href="#">Split Dual Name Pack</a></br>
                <a href="#">Split English/Chinese Name Pack</a></br>
            </div>

            <div class="col1">
              <strong>Iron-Ons</strong><br/>
                <a href="#">Round Labels</a></br>
                <a href="#">Small Rectangle</a></br>
                <a href="#">Chinese Name Labels</a></br>
                <a href="#">Split Dual Name Pack</a></br>
                <a href="#">BSplit English/Chinese Name Pack</a></br>
            </div>

            <div class="col1">
              <strong>Value Packs</strong><br/>
                <a href="#">Get Me Started Pack</a></br>
                <a href="#">Variety Pack</a></br>
                <a href="#">Chinese Name Labels</a></br>
                <a href="#">Birthday Labels</a></br>
                <a href="#">Book Labels</a></br>
                <a href="#">Split Dual Name Pack</a></br>
                <a href="#">Split English/Chinese Name Pack</a></br>
            </div>

            <div class="col1">
              <strong>Navigation</strong><br/>
                <a href="#">About</a><br/>
                <a href="#">FAQs</a><br/>
                <a href="#">Contact</a><br/>
                <a href="#">Facebook</a><br/>
                <a href="#">Twitter</a><br/>
            </div>
        </div>


        <div style="clear:both;"></div>
        <div class="leffooter">&copy; Child Label Pte Ltd All Rights Reserved</div>
    </div><!-- End Child Holder -->



</div>
</body>
</html>