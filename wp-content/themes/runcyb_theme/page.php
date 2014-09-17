<?php get_header(); ?>
			

				
          
<section role="main" class="site-content pushdown">
	<div class="container">
	
	       <div class="grid-row col-2">
 				<div class="grid-unit left">
                
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
<?php if ( has_post_thumbnail()) : ?>

<?php the_post_thumbnail(); ?>

<?php endif; ?>
<h1><?php the_title(); ?></h1>
<?php the_content(); ?>

                        

				<?php endwhile; ?>
                
            

			<?php else : ?>

				<h2><?php _e('Error 404 - Not Found', 'framework') ?></h2>
				<p><?php _e("Sorry, but you are looking for something that isn't here.", "framework") ?></p>

			<?php endif; ?>
		
		    </div><!-- .grid-row col-4 -->
        
             <div class="grid-unit right">
        	  <?php get_sidebar( 'top sidebar' ); ?>
			<?php get_sidebar( 'posts' ); ?>
        </div>
  </div>
	</div><!-- .container -->
</section>






			



<?php get_footer(); ?>
