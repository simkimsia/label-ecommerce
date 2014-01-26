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
    <?php echo $this->Html->script('jquery-1.10.2'); ?>
    <?php echo $this->Html->script('libs/alertify/0.3.10/alertify.min', array('block' => 'libScriptBottom')); ?>
    <?php echo $this->Html->css('alertify/0.3.10/themes/alertify.core'); ?>
    <?php echo $this->Html->css('alertify/0.3.10/themes/alertify.default'); ?>
    <link rel="shortcut icon" href="<?php echo $this->Html->assetUrl('img/favicon.ico?v=2'); ?>"/>
</head>
<body vlink="#FFFFFF" link="#FFFFFF" alink="#FFFFFF">
    <?php $session = $this->Session->flash('flash', array('element' => 'flash_blank')); ?>
	<?php echo $this->fetch('content');?>
	<?php echo $this->Html->script('jquery-1.10.2'); ?>
    <?php echo $this->fetch('libScriptBottom'); ?>
    <script type="text/javascript">
        // alertify the Session
        var sessionMsg = '<?php echo $session; ?>';
        if (sessionMsg != "") {
          alertify.success(sessionMsg);
        }
    </script>
    <?php echo $this->fetch('scriptBottom'); ?>
</body>
</html>







