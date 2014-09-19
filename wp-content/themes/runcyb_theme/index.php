<?php
/*
Template Name: news
*/

get_header(); ?>



<section role="main" class="site-content latest">
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
      </a></div>

    <?php endwhile; ?>
    <!--end posts--> 
    
 
    
    <?php else : ?>
    nothing here
    <?php endif; ?>

</div>

  </div>
</section>
<?php get_footer(); ?>
