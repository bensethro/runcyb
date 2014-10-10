<?php
/*
Template Name: Home
MultiEdit: intro,promo
*/
?>
<?php get_header(); ?>

<!-- Hero -->

<div class="splash">
  <h1>Run. Coed y Brenin</h1>
  <div class="splash-img"></div>
  <div class="splash-img-blur"></div>
</div>

<div class="circles">
  <div class="container">
    <div class="grid-row col-3">
      <div class="grid-unit">   
        <a href="<?php bloginfo('url');?>/shop" class="circle one">    
          <h2>Trail Running <br/>Store</h2>
        </a>
      </div>  
      <div class="grid-unit">    
        <a href="<?php bloginfo('url');?>/demo-centre" class="circle two">
          <h2>Footwear &amp; Pack <br/>Demo Centre</h2>
        </a>    
      </div> 
      <div class="grid-unit"> 
        <a href="<?php bloginfo('url');?>/trails" class="circle three">
          <h2>The Waymarked <br/>Trails</h2>     
        </a>    
      </div>     
    </div>
  </div>
</div>

  

<section role="main" class="site-content intro">
  <div class="container">
    <div class="grid-row col-2">
      <div class="grid-unit ">
	  <?php if (have_posts()) : ?>
        <?php while (have_posts()) : the_post(); ?> 
      
        
        <?php the_content(); ?>
        
         <?php wp_reset_query(); ?>
        <?php endwhile; ?>
<?php endif; ?> 
      </div>
<div class="grid-unit events">
      <h4>Run. Events</h4>

      <?php 
$args = array(
    'post_type' => 'page', 
    'name' => 'night-trail' 
);
$query = new WP_Query($args); 
while($query -> have_posts()) : $query -> the_post(); ?> 
        

        <a href="<?php the_permalink(); ?>" class="event">
          <div class="event-logo"><?php the_post_thumbnail("event-logo");?></div>
           <div class="event-content"><h5><?php the_title(); ?></h5>
        <p><?php echo strip_tags(multieditDisplay('intromessage', true)); ?></p>
       <!--  <?php the_excerpt(); ?> -->

        
        <p><?php echo strip_tags(multieditDisplay('eventdate', true)); ?> | <?php echo strip_tags(multieditDisplay('eventregistration', true)); ?></p>
        </div>
      </a>
   

<?php endwhile; wp_reset_query(); //this is the most important function, this makes sure the the query resets so wordpress' loop can kick in ?>



<?php 
$args = array(
    'post_type' => 'page', //make sure we only loop though pages
    'name' => 'trail-marathon-wales' //get the page using the slug
);
$query = new WP_Query($args); //setup new query with our arguments defined
while($query -> have_posts()) : $query -> the_post(); ?> 
        
  
        <a href="<?php the_permalink(); ?>" class="event">
          <div class="event-logo"><?php the_post_thumbnail("event-logo");?></div>
          <div class="event-content"><h5><?php the_title(); ?></h5>
        <p><?php echo strip_tags(multieditDisplay('intromessage', true)); ?></p>
       <!--  <?php the_excerpt(); ?> -->

        
        <p><?php echo strip_tags(multieditDisplay('eventdate', true)); ?> | <?php echo strip_tags(multieditDisplay('eventregistration', true)); ?></p>
      </div>
        </a>
 

<?php endwhile; wp_reset_query(); //this is the most important function, this makes sure the the query resets so wordpress' loop can kick in ?>

<?php 
$args = array(
    'post_type' => 'page', //make sure we only loop though pages
    'name' => 'winter-trail' //get the page using the slug
);
$query = new WP_Query($args); //setup new query with our arguments defined
while($query -> have_posts()) : $query -> the_post(); ?> 
        
    


        <a href="<?php the_permalink(); ?>" class="event">
          <div class="event-logo"><?php the_post_thumbnail("event-logo");?></div>
           <div class="event-content"><h5> <?php the_title(); ?></h5>
        <p><?php echo strip_tags(multieditDisplay('intromessage', true)); ?></p>
       <!--  <?php the_excerpt(); ?> -->

        
        <p><?php echo strip_tags(multieditDisplay('eventdate', true)); ?> | <?php echo strip_tags(multieditDisplay('eventregistration', true)); ?></p>
        </div></a>
   

<?php endwhile; wp_reset_query(); //this is the most important function, this makes sure the the query resets so wordpress' loop can kick in ?>
    
    
    </div>
    </div>
  </div>
</section>	  

    



<!-- Posts -->

<section role="main" class="site-content latest">
  <div class="container">
    <?php query_posts( 'posts_per_page=4' ); ?>
    <div class="grid-row col-4">
      <?php if (have_posts()) :?>
      <?php while (have_posts()): the_post(); ?>
      
      <!--start posts-->
      
<div class="grid-unit article">
  <a href="<?php the_permalink() ?>" class="image"><?php the_post_thumbnail("medium");?></a>
  <h2><a href="<?php the_permalink() ?>"><?php the_title()?></a></h2>
  <p><?php //the_excerpt()?></p>
  <p> 
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
  </p>
</div>


      <?php endwhile; ?>
    </div>
     <div class="more"><?php
                $category = get_the_category();
                echo '<a href="'.get_category_link($category[0]->cat_ID).'" >MORE</a>';?>
                </div>
   
    <?php wp_reset_query(); ?>
    
    <!--end posts-->
    
    <?php else : ?>
    <?php endif; ?>
    
    <!-- .grid-row col-4 --> 
    
  </div>
</section>


<section class="socialfeed">

    <div id="instgram" class="instagramfeed"><ul id="instafeed"></ul></div>
    <div id="twitter" class="twitterfeed"></div>

</section>


<?php if(function_exists('show_flexslider_rotator')) echo show_flexslider_rotator( 'homepage	' ); ?>


<?php get_footer(); ?>
<script src="http://twitter.com/javascripts/blogger.js" type="text/javascript"></script>
		<script src="http://twitter.com/statuses/user_timeline/beicsbrenin.json?callback=twitterCallback2&count=1" type="text/javascript"></script>
