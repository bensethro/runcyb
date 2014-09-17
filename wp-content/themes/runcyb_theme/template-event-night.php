<?php
/*
Template Name: nighttrail
MultiEdit: intro,Promo
*/
?>
<?php get_header(); ?>

<section id="hpslider">
  <div class="flexslider">
    <ul class="slides">
      <li> <img src="<?php bloginfo('template_url'); ?>/img/slide_night.jpg" />
        <div class="container">
          <div class="flex-caption">
            <h1>night event </h1>
            <p>Jill H - Liverpool</p>
          </div>
        </div>
      </li>
      <li> <img src="<?php bloginfo('template_url'); ?>/img/slide_night2.jpg" />
        <div class="container">
          <div class="flex-caption">
            <h1>night event</h1>
            <p>Rob E - London </p>
          </div>
        </div>
      </li>
    </ul>
  </div>
  </div>
</section>


<article>
<section role="main" class="site-content sponsors">

  <div class="container">
    <div class="grid-row col-2">
      <div class="grid-unit left">
        REGISTRATION OPENS IN 22 DAYS
      </div>
      <div class="grid-unit right">
      
      <?php query_posts( '' ); ?>
   
      <?php if (have_posts()) :?>
      <?php while (have_posts()): the_post(); ?>
      
 
          <?php the_title()?>
		  <?php the_post_thumbnail('event-logo'); ?>

 
    
    
      
      </div>
    </div>
  </div>

</section>
</article>
<section role="main" class="site-content intro">
  <div class="container">
    <div class="grid-row col-2">
      <div class="grid-unit left">
        <?php the_content()?>
      </div>
      <div class="grid-unit right">
        
      </div>
    </div>
  </div>
</section>
     <?php endwhile; ?>
   
    <?php wp_reset_query(); ?>
    
    
    
    <?php else : ?>
    <?php endif; ?>
    
 <section role="main" class="site-content latest">
  <div class="container">
    <?php query_posts( 'category_name=night trail&posts_per_page=4' ); ?>
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
    <br><span class="archivebutton"><?php
                $category = get_the_category();
                echo '<a href="'.get_category_link($category[0]->cat_ID).'" >View all posts for: ' . $category[0]->cat_name . '</a>';?>
                </span>
    <?php wp_reset_query(); ?>
    
    <!--end posts-->
    
    <?php else : ?>
    <?php endif; ?>
    
    <!-- .grid-row col-4 --> 
    
  </div>
</section>

<section role="main" class="site-content gallery">

  <div class="grid-row col-4">
      <div class="grid-unit gallery-image"><img src="<?php bloginfo('template_url'); ?>/img/gallery_1.jpg" />
      </div>
  
      <div class="grid-unit gallery-image"><img src="<?php bloginfo('template_url'); ?>/img/gallery_2.jpg" />
      </div>
   
      <div class="grid-unit gallery-image"><img src="<?php bloginfo('template_url'); ?>/img/gallery_3.jpg" />
      </div>
   
      <div class="grid-unit gallery-image"><img src="<?php bloginfo('template_url'); ?>/img/gallery_4.jpg" />
      </div>
       
   
     
   </div>
 
</section>
<section role="main" class="site-content testimonials">
  <div class="container">
    <?php do_action( 'woothemes_testimonials', array( 'limit' => 3, 'display_author' => true, 'category' => 7) ); ?>
  </div>
</section>
<?php get_footer(); ?>

<script>
   $(document).ready(function(){
       $(window).bind('scroll', function() {
       var navHeight = $( window ).height() - 160;
             if ($(window).scrollTop() > navHeight) {
                 $('article').addClass('fixed');
             }
             else {
                 $('article').removeClass('fixed');
             }
        });
    });
</script>
<script src="http://twitter.com/javascripts/blogger.js" type="text/javascript"></script> 
<script src="http://twitter.com/statuses/user_timeline/beicsbrenin.json?callback=twitterCallback2&count=1" type="text/javascript"></script> 
