<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="user-scalable=0, initial-scale=1.0">
<title>
<?php wp_title('|', true, 'right'); ?>
<?php bloginfo('name'); ?>
</title>
<meta name="description" content="Beics Brenin, Cycle Shop Coed Y Brenin" />
<meta name="keywords" content="Beics Brenin, Beics Brenin Bike Shop, Bike Shop Coed Y Brenin, Bike Shop Wales, Mountain Bikes, Hire Bikes Coed Y Brenin, Bike Accessories, DYFI Enduro, howies DYFI Enduro, Coed Y Brenin Enduro" />
<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/flexslider.css">
<link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/style.css">

<link href='http://fonts.googleapis.com/css?family=Oxygen:700,300,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>


<link rel="shortcut icon" href="<?php bloginfo('template_url'); ?>/favicon.png">
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
<!--<script type="text/javascript">

      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-35756546-1']);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();

    </script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">// <![CDATA[
$(document).ready(function(){

var myOptions = {
center: new google.maps.LatLng(52.8, -4),
zoom: 10,
mapTypeId: google.maps.MapTypeId.ROADMAP
};

var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

var addressArray = new Array("LL40 2HZ");
var geocoder = new google.maps.Geocoder();

for (var i = 0; i < addressArray.length; i++) {
geocoder.geocode( { 'address': addressArray[i]}, function(results, status) {
if (status == google.maps.GeocoderStatus.OK) {
var marker = new google.maps.Marker({
map: map,
position: results[0].geometry.location
});
} else {
alert("Geocode was not successful for the following reason: " + status);
}
});
}



});
// ]]></script>-->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>


</head>

<body <?php body_class(); ?>>

<div id="wrap">
<div id="main">
<header id="site-header" class="site-header large">
  <div class="container"><a href="<?php bloginfo('url');?>" class="logo"></a> <a class="toggle-menu" href="#"><img src="<?php bloginfo('template_url');?>/img/menu.png"/></a>
    <nav role="navigation" > 
    
      
      <div class="nav">
        <?php wp_nav_menu( array( 'Header Menu' => 'header-menu' ) ); ?>
      </div>
    </nav>
  </div>
</header>
