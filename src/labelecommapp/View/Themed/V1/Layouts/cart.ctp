<html>
<head>
    <title>Classic Step <?php echo $step; ?></title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta http-equiv="imagetoolbar" content="no"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <!-- only need pagespecific -->
    <?php echo $this->Html->css('cart_step_'. $step .'/axurerp_pagespecificstyles'); ?>
    <?php echo $this->Html->css('axure/axure_rp_page'); ?>
<!--[if IE 6]>
    <link href="Classic_Step_1_files/axurerp_pagespecificstyles_ie6.css" type="text/css" rel="stylesheet">
<![endif]-->
</head>
<body>
	<?php echo $this->fetch('content');?>
	<?php echo $this->Html->script('jquery-1.10.2'); ?>
	<?php echo $this->fetch('scriptBottom'); ?>
</body>
</html>







