<?php get_header();?>

<!--<section role="main">

  <img src="<?php bloginfo('template_url'); ?>/img/topimage_sm.jpg" />

</section>
-->

<section role="main" class="site-content pushdown">
  <div class="container">
    <div class="grid-row col-2">
      <div class="grid-unit left">
        <?php if (have_posts()) : ?>
        <?php while (have_posts()) : the_post(); ?>
        
        <!--main page image-->
        
        <?php
$src = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), array( 5600,1000 ), false, '' );
?>
        <div style="background: url(<?php echo $src[0]; ?> ) !important;" class="feature" ></div>
        
        
       
        <h1>
          <?php the_title(); ?>
        </h1>
        <?php /*?><?php the_time('F js, Y') ?><?php */?>
        <?php the_content(); ?>
        <?php endwhile; ?>
        <?php endif; ?>
        <?php /*?>   <?php comments_template() ;?><?php */?>
        <hr/>
        <h4>Archives</h4>
             <div class="grid-row col-3">  <?php


$args = array( 'posts_per_page' => 5, 'offset'=> 1 );

$myposts = get_posts( $args );
foreach ( $myposts as $post ) : setup_postdata( $post ); ?>
 
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
       
        <?php endforeach; 
wp_reset_postdata();?>
      </div> </div>
      <div class="grid-unit right">
        <?php get_sidebar( 'posts' ); ?>
        <?php get_sidebar( 'top sidebar' ); ?>
      </div>
    </div>
  </div>
  <!-- .container --> 
</section>
<?php get_footer(); ?>
