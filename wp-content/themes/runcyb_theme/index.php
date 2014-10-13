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
      <?php if (have_posts()) :?>
      <?php while (have_posts()): the_post(); ?>
      
      <!--start posts-->
      
      <div class="grid-unit article">
        <a href="<?php the_permalink() ?>"><?php the_post_thumbnail("article-image");?></a>
        <div class="headline">
          <div class="categories">

          
          <?php
            $categories = get_the_category();
            $separator = ' ';
            $output = '';
            if($categories){
              foreach($categories as $category) {
                $output .= '<span><a href="'.get_category_link( $category->term_id ).'" title="' . esc_attr( sprintf( __( "View all posts in %s" ), $category->name ) ) . '">'.$category->cat_name.'</a></span>'.$separator;
              }
            echo trim($output, $separator);
            }
          ?>
        </div>
        <h2><a href="<?php the_permalink() ?>"><?php the_title()?></a></h2>
      </div>
        </div>

      <?php endwhile; ?>

    </div>

   
    <?php wp_reset_query(); ?>
    
    <!--end posts-->
    
    <?php else : ?>
    <?php endif; ?>
    
    <!-- .grid-row col-4 --> 
    
  </div>
</section>










<?php endif;?>

<?php endwhile; ?>


<?php endif; ?>




<section class="socialfeed">


    <div id="twitter" class="twitterfeed"></div>

</section>
<?php get_footer(); ?>
