<?php
/*
Template Name: Home
MultiEdit: intro,promo
*/
?>
<?php get_header(); ?>



<section id="hpslider" class="line-home">
  <div class="flexslider">
    <ul class="slides">
      <li> <img src="<?php bloginfo('template_url'); ?>/img/slide_home.jpg" class="fade-image"/>
        <div class="container">
          <div class="flex-caption">
            <h1>Run. Coed y Brenin</h1>
            <h2>the UK’s first bespoke trail running centre.</h2>
 </div>
        </div>
      </li>
   <li> <img src="<?php bloginfo('template_url'); ?>/img/slide_home2.jpg" class="fade-image"/>
        <div class="container">
          <div class="flex-caption">
            <h1>Run. Coed y Brenin</h1>
            <h2>the UK’s first bespoke trail running centre.</h2>
 </div>
        </div>
      </li>
      
     
      
    </ul>
  </div>
  </div>
</section>



<section class="site-content site-banners">

  <div class="container">
  
  
  <div class="circles">  
      <div class="circle_container">
          <div class="circle">
          
            <a href="<?php bloginfo('url');?>/shop" class="circle1">
         
          <h2>TRAIL RUNNING STORE</h2>
        
        </a>
          </div>
      </div>  
      <div class="circle_container">
          <div class="circle">
             <a href="<?php bloginfo('url');?>/demo-centre" class="circle2">
         
          <h2>FOOTWEAR & PACK DEMO CENTRE</h2>
          
        </a>
            
          </div>
      </div> 
      <div class="circle_container">
          <div class="circle">
          
            <a href="<?php bloginfo('url');?>/trails" class="circle3">
          <h2>COED Y BRENIN & THE WAYMARKED TRAILS</h2>
          
        </a>
          </div>
      </div>    
   
</div>




  </div>
</section>

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

    





<section role="main" class="site-content latest">
  <div class="container">
    <?php query_posts( 'posts_per_page=8' ); ?>
    <div class="grid-row col-4">
      <?php if (have_posts()) :?>
      <?php while (have_posts()): the_post(); ?>
      
      <!--start posts-->
      
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

</a>
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
