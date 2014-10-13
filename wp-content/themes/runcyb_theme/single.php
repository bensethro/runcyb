<?php get_header();?>

    <?php if (have_posts()) : ?>
        <?php while (have_posts()) : the_post(); ?>
        

<section role="main">

 
 <div class="feature" >
 
 <?php 
if ( has_post_thumbnail() ) { 
	the_post_thumbnail('full');
} 
?></div>
</section>


<section role="main" class="site-content post">
  <div class="container">
    <div class="grid-row col-1">
      <div class="grid-unit ">
    

       
        
        
       
        <h1>
          <?php the_title(); ?>
        </h1>
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
    <div class="grid-row col-4">  
			 
    <?php
      $args = array( 'posts_per_page' => 4, 'offset'=> 1 );

    $myposts = get_posts( $args );
    foreach ( $myposts as $post ) : setup_postdata( $post ); ?>
 
          <div class="grid-unit article">
          	
     	<?php the_post_thumbnail("medium");?>
       
     <div class="headline">  

		
          <div class="categories"> 
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



        <h2><a href="<?php the_permalink() ?>"><?php the_title()?></a></h2>
       <p><?php the_excerpt()?></p>


            </div>
              </div>
                </div>
            

      
      
      
      
       
        <?php endforeach; 
wp_reset_postdata();?>
  <div class="more"><?php
                $category = get_the_category();
                echo '<a href="'.get_category_link($category[0]->cat_ID).'" >MORE</a>';?>
                </div>
      </div> </div>
      

  </div>
  <!-- .container --> 
</section>
<section class="socialfeed">

    <div id="instgram" class="instagramfeed"><ul id="instafeed"></ul></div>
    <div id="twitter" class="twitterfeed"></div>

</section>
<?php get_footer(); ?>
