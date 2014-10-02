<?php
/*
Template Name: events
*/
?>
<?php get_header(); ?>
<?php if (have_posts()) : ?>
<?php while (have_posts()) : the_post(); ?>

<section role="main"> <img src="<?php bloginfo('template_url'); ?>/img/trails_top.jpg" /> </section>
<section role="main" class="site-content">
  <div class="container">
    <div class="grid-row col-2">
      <div class="grid-unit  left">
        <?php the_post_thumbnail(); ?>
        <h1>
          <?php the_title(); ?>
        </h1>
        <?php the_content(); ?>
      </div>
      <div class="grid-unit right"> yuy </div>
    </div>
  </div>
</section>
<?php wp_reset_query(); ?>
<?php endwhile; ?>
<?php endif; ?>
<section role="main" class="site-content">
  <div class="container">
    <div class="grid-row col-1">
      <div class="grid-unit events">
        <?php $parent = $post->ID; ?>
        <?php
query_posts('posts_per_page=15&post_type=page&post_parent='.$parent);
 while (have_posts()) : the_post();
?>
        <a href="<?php the_permalink(); ?>" class="event">
        <?php the_post_thumbnail('event-logo'); ?>
		<?php echo get_post_meta($post->ID, 'eventdate', true); ?>
        <h4>
          <?php the_title(); ?>
        </h4>
        <p>
          <?php the_excerpt(); ?>
        </p>
        </a>
        <?php endwhile; ?>
      </div>
    </div>
  </div>
  
  
</section>
<?php get_footer(); ?>
