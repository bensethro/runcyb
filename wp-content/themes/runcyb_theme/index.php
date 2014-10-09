<?php
/*
Template Name: news
*/

get_header(); ?>

<?php if (have_posts()) : ?>
<?php $post = $posts[0]; $c=0;?>
<?php while (have_posts()) : the_post(); ?>
<?php $c++;
if( !$paged && $c == 1) :?>
  <section role="main" class="site-content pushdown">
  <div class="container">
    <div class="grid-row col-1">
      <div class="grid-unit lead-article">
     


         <a href="<?php the_permalink() ?>" ><?php
the_post_thumbnail("large");
?><h1>
          <?php the_title()?>
          </h1></a>
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



      </div>
    </div>
  </div>
  
  
</section>










<section role="main" class="site-content latest">
  <div class="container">
  <div class="grid-row col-4">

  
<?php else :?>
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

<?php endif;?>

<?php endwhile; ?>


<?php endif; ?>

</div>

  </div>
</section>
<section class="socialfeed">

    <div id="instgram" class="instagramfeed"><ul id="instafeed"></ul></div>
    <div id="twitter" class="twitterfeed"></div>

</section>
<?php get_footer(); ?>
