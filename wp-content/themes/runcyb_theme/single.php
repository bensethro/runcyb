<?php get_header();?>

    <?php if (have_posts()) : ?>
        <?php while (have_posts()) : the_post(); ?>
        

<section role="main">

  <?php
$src = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), array( 5600,1000 ), false, '' );
?>
 <div style="background: url(<?php echo $src[0]; ?> ) !important;" class="feature" ></div>
</section>


<section role="main" class="site-content post">
  <div class="container">
    <div class="grid-row col-1">
      <div class="grid-unit ">
    

       
        
        
       
        <h1>
          <?php the_title(); ?>
        </h1>
        <?php /*?><?php the_time('F js, Y') ?><?php */?>
        <?php the_content(); ?>
      
        <hr/>
        
       </div>
       </div>
     </div>
</section>
       <?php endwhile; ?>
        <?php endif; ?>
        <?php /*?>   <?php comments_template() ;?><?php */?>   
        
<section role="main" class="site-content latest">
  <div class="container">
  
  
        <!--<h4>Archives</h4>-->
             <div class="grid-row col-4">  
			 
<?php
$args = array( 'posts_per_page' => 5, 'offset'=> 1 );

$myposts = get_posts( $args );
foreach ( $myposts as $post ) : setup_postdata( $post ); ?>
 
          <div class="grid-unit">
          	<a href="<?php the_permalink() ?>" class="article-wrap">
     	<?php the_post_thumbnail("medium");?>
       
       <h5><?php the_title()?></h5>
       <p><?php the_excerpt()?></p>

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
            

      
      
      
      
       
        <?php endforeach; 
wp_reset_postdata();?>
      </div> </div>
      
    </div>
  </div>
  <!-- .container --> 
</section>
<?php get_footer(); ?>
