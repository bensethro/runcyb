<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' />
<title><?php wp_title('|', true, 'right'); ?></title>
<meta name="description" content="Beics Brenin, Cycle Shop Coed Y Brenin" />
<meta name="keywords" content="Beics Brenin, Beics Brenin Bike Shop, Bike Shop Coed Y Brenin, Bike Shop Wales, Mountain Bikes, Hire Bikes Coed Y Brenin, Bike Accessories, DYFI Enduro, howies DYFI Enduro, Coed Y Brenin Enduro" />
<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/style.css">

<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>

<link rel="shortcut icon" href="<?php bloginfo('template_url'); ?>/favicon.png">

<!-- THESE NEED CHANGING!!! -->
<link rel="apple-touch-icon-precomposed" href="<?php bloginfo('template_url'); ?>/apple-touch-icon.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php bloginfo('template_url'); ?>/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php bloginfo('template_url'); ?>/apple-touch-icon-114x114.png">

<!--[if IE 8]><link rel="stylesheet" type="text/css" href="<?php bloginfo('template_url'); ?>/ie.css"><![endif]-->
<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/fontello.css">
<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/animation.css"><!--[if IE 7]><link rel="stylesheet" href="css/fontello-ie7.css"><![endif]-->
    <script>
      function toggleCodes(on) {
        var obj = document.getElementById('icons');
        
        if (on) {
          obj.className += ' codesOn';
        } else {
          obj.className = obj.className.replace(' codesOn', '');
        }
      }
    </script>


<script src="<?php bloginfo('template_url'); ?>/js/modernizr.custom.js"></script>

<script type="text/javascript">

$(document).ready(function() {
    $(window).scroll(function(e) {
        var s = $(window).scrollTop(),
            d = $(document).height(),
            c = $(window).height(),
            opacityVal = (s / 150);

        $('.fade-image').css('opacity', opacityVal);
    });
});

</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

<div id="wrap">
  <div id="main">

  <header id="site-header" class="site-header large">
    <div class="container">
      <a href="<?php bloginfo('url');?>" class="logo"></a> 
      <nav role="navigation" > 
        <div class="nav">
          <?php wp_nav_menu( array( 'Header Menu' => 'header-menu' ) ); ?>
        </div>
      </nav>
    </div>
  </header>

