<?php
/*
Template Name: news
*/

get_header(); ?>

<!--<section role="main">

  <img src="<?php bloginfo('template_url'); ?>/img/topimage_sm.png" />

</section>-->

<section role="main" class="site-content pushdown">
  <div class="container">
  <div class="grid-row col-4">

   <h1>News</h1>
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
    <!--end posts--> 
    
 
    
    <?php else : ?>
    nothing here
    <?php endif; ?>

</div>
 
 <!-- <div class="grid-unit right">
<?php /*?>  <?php get_sidebar( 'top sidebar' ); ?>
<?php get_sidebar( 'posts' ); ?><?php */?>
  </div></div>
-->
 
  </div>
</section>
<?php get_footer(); ?>
