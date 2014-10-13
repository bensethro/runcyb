<?php
/*
Template Name: Demo
MultiEdit: Info,Quote
*/
?>
<?php get_header(); ?>
<section role="main"  class="line-home">

  <img src="<?php bloginfo('template_url'); ?>/img/slide_demo.jpg" />

</section>
<section role="main" class="site-content">
  <div class="container">
    <div class="grid-row col-2">
      <div class="grid-unit">
        <?php if (have_posts()) : ?>
        <?php while (have_posts()) : the_post(); ?>
        <?php the_post_thumbnail(); ?>
        <h2>
          <?php the_title(); ?>
        </h2>
        <?php the_content(); ?>
       

      </div>
      <div class="grid-unit">
        <aside>
          <?php multieditDisplay('Info'); ?>
        </aside>
        <aside>
          <?php multieditDisplay('Quote'); ?>
    
      </div>
    </div>
  </div>
  <!-- .container --> 
</section>
<section role="main" class="site-content testimonials">
  <div class="container">
    <?php do_action( 'woothemes_testimonials', array( 'limit' => 3, 'display_author' => true, 'category' => 11) ); ?>
  </div>
</section>
<?php endwhile; ?>
<?php endif; ?>
<?php get_footer(); ?>
