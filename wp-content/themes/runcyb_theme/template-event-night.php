<?php
/*
Template Name: nighttrail
MultiEdit: intromessage,eventdate,eventregistration
*/
?>
<?php get_header(); ?>

<section id="hpslider" class="line-nighttrail">
  <div class="flexslider">
    <ul class="slides">
    <li> 
       <img src="<?php bloginfo('template_url'); ?>/img/slide_night.jpg" />
        
           <div class="flex-caption"> <div class="container">
            <div class="grid-row col-2">
      <div class="grid-unit"><img src="<?php bloginfo('template_url'); ?>/img/logo_nighttrail_wt.png" /></div>
     
      <div class="grid-unit"><h3><?php echo strip_tags(multieditDisplay('intromessage', true)); ?></h3>
            </div></div>
          </div>
          </div>
      </li>
      <li> 
        <img src="<?php bloginfo('template_url'); ?>/img/slide_night2.jpg" />
        
           <div class="flex-caption"> <div class="container">
            <div class="grid-row col-2">
      <div class="grid-unit"><img src="<?php bloginfo('template_url'); ?>/img/logo_nighttrail_wt.png" /></div>
     
      <div class="grid-unit"><h3><?php echo strip_tags(multieditDisplay('intromessage', true)); ?></h3>
            </div></div>
          </div>
          </div>
      
      </li>
    </ul>
  </div>
  </div>
</section>

 <?php if (have_posts()) : ?>
        <?php while (have_posts()) : the_post(); ?> 
<article>
  <section role="main" class="site-content eventheader">

    <div class="container">
    <div class="grid-row col-2">
      <div class="event-header-logo">
           <?php the_post_thumbnail("event-logo");?>
      </div>
      <div class="event-header-date">
        <h3><?php echo strip_tags(multieditDisplay('eventdate', true)); ?></h3>
      </div>
      <div class="event-header-reg">
       <h3><?php echo strip_tags(multieditDisplay('eventregistration', true)); ?></h3>
      </div>
    </div>
  </div>

</section>
</article>
<section role="main" class="site-content intro">
  <div class="container">
    <div class="grid-row col-2">
      <div class="grid-unit">
      
      
        <h1><?php the_title(); ?></h1>
        <?php the_content(); ?>
    
      </div>
      <div class="grid-unit">
        
      </div>
    </div>
  </div>
</section>
    
         <?php wp_reset_query(); ?>
        <?php endwhile; ?>
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
          <p class="category"> 
		 <?php
			$categories = get_the_category();

			$output = '';
			if($categories){
				foreach($categories as $category) {
					$output.='<span>'.$category->cat_name.'</span>';
				}
			echo trim($output);
			}
			?>
</p>

      </a></div>
      <?php endwhile; ?>
    </div>
    
   
    <div class="more"><?php
                $category = get_the_category();
                echo '<a href="'.get_category_link($category[0]->cat_ID).'" >MORE</a>';?>
                </div>
    <?php wp_reset_query(); ?>
    
    <!--end posts-->
    
    <?php else : ?>
    <?php endif; ?>
    
    <!-- .grid-row col-4 --> 
    
  </div>
</section>

<!--<section role="main" class="site-content gallery">

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
 
</section>-->
<section role="main" class="site-content testimonials">
  <div class="container">
    <?php do_action( 'woothemes_testimonials', array( 'limit' => 3, 'display_author' => true, 'category' => 5) ); ?>
  </div>
</section>
<section class="socialfeed">

    <div id="instgram" class="instagramfeed"><ul id="instafeed"></ul></div>
    <div id="twitter" class="twitterfeed"></div>

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
