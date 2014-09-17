<?php
/*
Template Name: events
*/
?>
<?php get_header(); ?>

<section role="main">

  <img src="<?php bloginfo('template_url'); ?>/img/trails_top.jpg" />

</section>


<section role="main" class="site-content">
  <div class="container">
    <div class="grid-row col-2">
     <?php if (have_posts()) : ?>
        <?php while (have_posts()) : the_post(); ?> 
    
      <div class="grid-unit leftnarrow">
      
        <?php the_post_thumbnail(); ?>
        <h1>
          <?php the_title(); ?>
        </h1>
        <?php the_content(); ?>
       

       
        
      </div>
      


    <div class="grid-unit rightwide">
    
    
      <span style="display:none;"><?php the_ID(); ?></span>
<?php $parent = $post->ID; ?>
<?php
query_posts('posts_per_page=15&post_type=page&post_parent='.$parent);
 while (have_posts()) : the_post();
?>

<?php the_post_thumbnail('event-logo'); ?>
<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
<p><?php the_excerpt(); ?></p>


 <?php endwhile; ?>
    </div>
   

  </div> 
    </div> <?php endwhile; ?>
<?php endif; ?>  
</section>

<?php get_footer(); ?>
