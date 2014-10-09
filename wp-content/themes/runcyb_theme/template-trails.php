<?php
/*
Template Name: Trails
MultiEdit: Foundry,Green,Red,Black,Info,Quote
*/
?>
<?php get_header(); ?>
<section role="main"  class="line-home">

  <img src="<?php bloginfo('template_url'); ?>/img/slide_trails.jpg" />

</section>

<section role="main" class="site-content">
  <div class="container">
    <div class="grid-row col-2">
      <div class="grid-unit">
        <?php if (have_posts()) : ?>
        <?php while (have_posts()) : the_post(); ?>
        <?php the_post_thumbnail(); ?>
        <h1>
          <?php the_title(); ?>
        </h1>
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
<?php endwhile; ?>
<?php endif; ?>
<?php get_footer(); ?>
