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
            <h1>Shop
            </h1>
            <p>Jill H - Liverpool</p>
          </div>
        </div>
      </li>
      <li> <img src="<?php bloginfo('template_url'); ?>/img/slide_shop2.jpg" />
        <div class="container">
          <div class="flex-caption">
            <h1>shop</h1>
            <p>Rob E - London </p>
          </div>
        </div>
      </li>
      
     
      
    </ul>
  </div>
  </div>
</section>




<section role="main" class="site-content intro">
  <div class="container">
  <div class="grid-row col-4">
    <div class="grid-unit">
<?php multieditDisplay('intro'); ?>
    
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
      
      <div class="grid-unit article-image"><a href="<?php the_permalink() ?>">
        <?php if ( has_post_thumbnail() ) { the_post_thumbnail( '' ); } ?>
        </a>
        <h5><a href="<?php the_permalink() ?>">
          <?php the_title()?>
          </a></h5>
      </div>
      <?php endwhile; ?>
    </div>
    <?php
                $category = get_the_category();
                echo '<a href="'.get_category_link($category[0]->cat_ID).'">View all posts for: ' . $category[0]->cat_name . '</a>';
            ?>
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

<section role="main" class="site-content testimonials">
  <div class="container">
<?php do_action( 'woothemes_testimonials', array( 'limit' => 3, 'display_author' => true, 'category' => 4) ); ?>
  </div>
</section>

<?php get_footer(); ?>
<script src="http://twitter.com/javascripts/blogger.js" type="text/javascript"></script>
		<script src="http://twitter.com/statuses/user_timeline/beicsbrenin.json?callback=twitterCallback2&count=1" type="text/javascript"></script>
