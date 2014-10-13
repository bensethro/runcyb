<?php
/*
Template Name: shop
MultiEdit: demopromo,brands
*/
?>
<?php get_header(); ?>


<div class="splash">
  <div class="splash-text">
    <h2>Run. trail running shop</h2>
    <h1>Stocked with leading brands. Footwear, Apperal &amp; Accessories</h1>
  </div>
  <div class="splash-img shop"></div>
  <div class="splash-img-blur shop-blur"></div>
</div>




<section role="main" class="site-content gallery line-shop">

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
<section role="main"> <div class="brands"><img src="<?php bloginfo('template_url'); ?>/img/logo-comp.png"></div>
</section>

<section role="main" class="site-content intro">
  <div class="container">
    <div class="grid-row col-2">
      <div class="grid-unit ">
	  <?php if (have_posts()) : ?>
        <?php while (have_posts()) : the_post(); ?> 
      
 
        <?php the_content(); ?>
        
         <?php wp_reset_query(); ?>
        <?php endwhile; ?>
<?php endif; ?> 
<div class="bluebox"><p><?php echo strip_tags(multieditDisplay('demopromo', true)); ?></p><a href="+" class="button	">DEMO CENTER</a></div>
      </div>
      <div class="grid-unit">
      <img src="<?php bloginfo('template_url'); ?>/img/tempimages.png" />
     
      </div>
    </div>
  </div>
</section>	  

	 
<!-- Posts -->

<section role="main" class="site-content latest">
  <div class="container">
    <?php query_posts( 'category_name=shop&posts_per_page=4' ); ?>
    <div class="grid-row col-4">
      <?php if (have_posts()) :?>
      <?php while (have_posts()): the_post(); ?>
      
      <!--start posts-->
      
      <div class="grid-unit article">
        <a href="<?php the_permalink() ?>"><?php the_post_thumbnail("article-image");?></a>
        <div class="categories">
          <?php
            $categories = get_the_category();
            $separator = ' ';
            $output = '';
            if($categories){
              foreach($categories as $category) {
                $output .= '<span><a href="'.get_category_link( $category->term_id ).'" title="' . esc_attr( sprintf( __( "View all posts in %s" ), $category->name ) ) . '">'.$category->cat_name.'</a></span>'.$separator;
              }
            echo trim($output, $separator);
            }
          ?>
        </div>
        <h2><a href="<?php the_permalink() ?>"><?php the_title()?></a></h2>
      </div>

      <?php endwhile; ?>

    </div>
    <?php
      $category = get_the_category();
      echo '<a href="'.get_category_link($category[0]->cat_ID).'" class="morelink" >Read more</a>';
    ?>

   
    <?php wp_reset_query(); ?>
    
    <!--end posts-->
    
    <?php else : ?>
    <?php endif; ?>
    
    <!-- .grid-row col-4 --> 
    
  </div>
</section>

<section role="main" class="site-content testimonials">
  <div class="container">
<?php do_action( 'woothemes_testimonials', array( 'limit' => 3, 'display_author' => true, 'category' => 4) ); ?>
  </div>
</section>

<?php get_footer(); ?>
<script src="http://twitter.com/javascripts/blogger.js" type="text/javascript"></script>
		<script src="http://twitter.com/statuses/user_timeline/beicsbrenin.json?callback=twitterCallback2&count=1" type="text/javascript"></script>
