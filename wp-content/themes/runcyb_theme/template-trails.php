<?php
/*
Template Name: Trails
MultiEdit: Foundry,Green,Red,Black,Info,Quote
*/
?>
<?php get_header(); ?>
<section role="main">

  <img src="<?php bloginfo('template_url'); ?>/img/trails_top.jpg" />

</section>

<section role="main" class="site-content pushdown">
  <div class="container">
    <div class="grid-row col-2">
      <div class="grid-unit left">
        <?php if (have_posts()) : ?>
        <?php while (have_posts()) : the_post(); ?>
        <?php the_post_thumbnail(); ?>
        <h1>
          <?php the_title(); ?>
        </h1>
        <?php the_content(); ?>
       

      </div>
      <div class="grid-unit right">
        <aside class="boxgreen">
          <?php multieditDisplay('Info'); ?>
        </aside>
        <aside class="boxgrey">
          <?php multieditDisplay('Quote'); ?>
        </aside>
        <?php get_sidebar( 'posts' ); ?>
      </div>
    </div>
  </div>
  <!-- .container --> 
</section>
<?php endwhile; ?>
<?php endif; ?>
<?php get_footer(); ?>
