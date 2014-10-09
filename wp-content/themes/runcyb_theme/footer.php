</div>
</div>

<footer class="site-footer" role="contentinfo">
<div class="footersocial"> 
<div class="container">
<h2>FOLLOW US FOR PRODUCTS OFFERS EVENTS AND REVIEWS </h2>
<a href="mailto:mail@beicsbrenin.co.uk"><img src="<?php bloginfo('template_url'); ?>/img/icon_wt_facebook.png"/></a>
<a href="mailto:mail@beicsbrenin.co.uk"><img src="<?php bloginfo('template_url'); ?>/img/icon_wt_twitter.png"/></a>
<a href="mailto:mail@beicsbrenin.co.uk"><img src="<?php bloginfo('template_url'); ?>/img/icon_wt_instagram.png"/></a>
 
    </div>
</div>
<div class="footertxt">
  <div class="container">
    <p>&copy; Run. Coed y Brenin 2014 01341 440728 - Open 9am - 5pm, 7 day a week (excluding Christmas Eve, Christmas Day, Boxing Day and New Year's Day)</p>
  </div>
</div>
 
</footer>
<!-- <script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
<script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script> -->

<script src="<?php bloginfo('template_url'); ?>/js/fluidvids.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script> 
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/initForm.js"></script> 
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/retina.js"></script> 
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/scripts.js"></script> 
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/jquery.sticky.js"></script> 
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/twitterFetcher_min.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/twitter.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/instafeed.min.js"></script>

<script>

var offset;
var scrollEnd = 200;
function blurImage(amount){
    $('.splash-img-blur').css({
        opacity : amount
    })
}
$(window).scroll( function(e) {
    offset = $(window).scrollTop();
    if(offset/scrollEnd < 1.5){
        blurImage(offset/scrollEnd);
    }
});
</script>



<!-- Instagram Feed -->

<script type="text/javascript">
  var feed = new Instafeed({
      get: 'tagged',
      tagName: 'bmwz3',
      clientId: '8dab5fb6ee504fd9bbfce2a2302f6ea2',
      limit: '13',
      template: '<li><a href="{{link}}" target="_blank"><img src="{{image}}" /></a></li>'
  });
  feed.run();
</script>


</body>