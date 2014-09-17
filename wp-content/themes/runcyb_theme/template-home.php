<?php
/*
Template Name: Home
MultiEdit: intro,promo
*/
?>
<?php get_header(); ?>



<section id="hpslider">
  <div class="flexslider">
    <ul class="slides">
      <li> <img src="<?php bloginfo('template_url'); ?>/img/slide_runner3.jpg" class="fade-image"//>
        <div class="container">
          <div class="flex-caption">
            <h1>Run. Coed y Brenin</h1>
            <h2>the UK’s first bespoke trail running centre.</h2>
            <p><a href="">Trail running shop</a><a href="">Footwear & pack demo centre</a><a href="">Running Trails</a> </p>
          </div>
        </div>
      </li>
      <li> <img src="<?php bloginfo('template_url'); ?>/img/slide_runner2.jpg" class="fade-image"/>
        <div class="container">
          <div class="flex-caption">
            <h1>Way marked running Trails</h1>
            <h2>CYB wooded awesomeness</h2>
            <p><a href="">10k</a><a href="">Half Marathon</a><a href="">Full Marathon</a></p>
          </div>
        </div>
      </li>
      
     
      
    </ul>
  </div>
  </div>
</section>



<!--<section class="site-content site-banners">
  <div class="container">
    <div class="grid-row col-3 ">

      <div class="grid-unit">
        <a href="/bike-hire" class="homebanner">
          <img src="<?php bloginfo('template_url'); ?>/img/hirepic.jpg" /> 
          <h2>Bike Hire</h2>
          <p>Kids, Hard tail, Full Suspension &amp; Demo bikes</p>
        </a>
       </div>

      <div class="grid-unit">
        <a href="/trails" class="homebanner">
          <img src="<?php bloginfo('template_url'); ?>/img/trailpic.jpg" />
          <h2>Trails &amp; Maps</h2>
          <p>Epic graded trail network plus Skills &amp; training area</p>
        </a>
      </div>

      <div class="grid-unit">
        <a href="/shop" class="homebanner small">
          <img src="<?php bloginfo('template_url'); ?>/img/shoppic.jpg" />
          <h2>The Shop</h2>
          <p>Bikes, kit &amp; workshop</p>
        </a>
        <a href="/visitor-centre"  class="homebanner small">
          <img src="<?php bloginfo('template_url'); ?>/img/centrepic.jpg" />
          <h2>Visitor Centre</h2>
          <p>Facilities &amp; activities</p>
        </a>
      </div>

    </div>
  </div>
</section>-->

<section role="main" class="site-content intro">
  <div class="container">
    <div class="grid-row col-2">
      <div class="grid-unit left">
        <?php multieditDisplay('intro'); ?>
      </div>
      <div class="grid-unit right">
        <?php multieditDisplay('promo'); ?>
      </div>
    </div>
  </div>
</section>	


<section role="main" class="site-content latest">
  <div class="container">
    <?php query_posts( 'posts_per_page=8' ); ?>
    <div class="grid-row col-4">
      <?php if (have_posts()) :?>
      <?php while (have_posts()): the_post(); ?>
      
      <!--start posts-->
      
     <div class="grid-unit"> <a href="<?php the_permalink() ?>" class=" article-wrap">
        <?php
the_post_thumbnail("medium");
?>
       
        <h5>
          <?php the_title()?>
          </h5>
          <p>
          <?php the_excerpt()?>
          </p>
      </a></div>
      <?php endwhile; ?>
    </div>
   
    <?php wp_reset_query(); ?>
    
    <!--end posts-->
    
    <?php else : ?>
    <?php endif; ?>
    
    <!-- .grid-row col-4 --> 
    
  </div>
</section>

<section role="main" class="site-content gallery">
  <div class="container">
Gallery
  </div>
</section>
<?php if(function_exists('show_flexslider_rotator')) echo show_flexslider_rotator( 'homepage	' ); ?>


<?php get_footer(); ?>
<script src="http://twitter.com/javascripts/blogger.js" type="text/javascript"></script>
		<script src="http://twitter.com/statuses/user_timeline/beicsbrenin.json?callback=twitterCallback2&count=1" type="text/javascript"></script>
