</div>
</div>

<footer class="site-footer" role="contentinfo">
    <div class="container">
      <h2>Follow us for product offers, events and reviews</h2>
      <a href="#" class="social"><i class="icon-facebook"></i></a>
      <a href="#" class="social"><i class="icon-twitter-bird"></i></a>
      <a href="#" class="social"><i class="icon-instagram-filled"></i></a>
    </div>
  </div>

  <div class="footertxt">
    <div class="container">
      <p><span>&copy; Run. Coed y Brenin 2014</span> <span>01341 440728</span><span class="opening">Open 9am - 5pm, 7 day a week (excluding Christmas Eve, Christmas Day, Boxing Day and New Year's Day)</span></p>
    </div>
  </div>
</footer>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/fluidvids.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/initForm.js"></script> 
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/retina.js"></script> 
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/scripts.js"></script> 
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/jquery.sticky.js"></script> 
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/twitterFetcher_min.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/twitter.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/instafeed.min.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/toucheffects.js"></script>

<script type="text/javascript">

  //Header Blur

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

  //Instagram Feed

  var feed = new Instafeed({
      get: 'tagged',
      tagName: 'coedybrenin',
      clientId: '8dab5fb6ee504fd9bbfce2a2302f6ea2',
      limit: '8',
      template: '<li><a href="{{link}}" target="_blank"><img src="{{image}}" /></a></li>'
  });
  feed.run();

</script>

<?php wp_footer(); ?>
</body>