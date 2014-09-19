<?php
/*
Template Name: shop
MultiEdit: intro,Promo,brands
*/
?>
<?php get_header(); ?>


<section id="hpslider">
  <div class="flexslider">
    <ul class="slides">
      <li> <img src="<?php bloginfo('template_url'); ?>/img/slide_shop.jpg" />
        <div class="container">
          <div class="flex-caption">
            <h1>Run. trail running shop </h1>
            <h2>Stocked with leading brands. Footwear, Apperal & Accessories</h2>
          </div>
        </div>
      </li>
      <li> <img src="<?php bloginfo('template_url'); ?>/img/slide_shop2.jpg" />
        <div class="container">
          <div class="flex-caption">
           <h1>Run. trail running shop </h1>
            <h2>Stocked with leading brands. Footwear, Apperal & Accessories</h2>
          </div>
        </div>
      </li>
      
     
      
    </ul>
  </div>
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
<section role="main" class="site-content"><div class="brands"></div>
</section>

<section role="main" class="site-content intro">
  <div class="container">
    <div class="grid-row col-2">
      <div class="grid-unit ">
        <?php multieditDisplay('intro'); ?>
      </div>
      <div class="grid-unit">
      <img src="<?php bloginfo('template_url'); ?>/img/tempimages.png" />
     
      </div>
    </div>
  </div>
</section>	  

	 


<section role="main" class="site-content latest">
  <div class="container">
    <?php query_posts( 'category_name=shop&posts_per_page=4' ); ?>
    <div class="grid-row col-4">
      <?php if (have_posts()) :?>
      <?php while (have_posts()): the_post(); ?>
      
      <!--start posts-->
      
       <div class="grid-unit">
     	<a href="<?php the_permalink() ?>" class="article-wrap">
     	<?php the_post_thumbnail("medium");?>
       
       <h5><?php the_title()?></h5>
       <p><?php the_excerpt()?></p>

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

</a>
      </div>
      
      
      <?php endwhile; ?>
    </div>
    <?php
                $category = get_the_category();
                echo '<a href="'.get_category_link($category[0]->cat_ID).'" class=more>More' . '</a>';
            ?>
    <?php wp_reset_query(); ?>
    
    <!--end posts --> 
    
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
