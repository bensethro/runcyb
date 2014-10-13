<?php
/*
Template Name: Home
MultiEdit: intro,promo,banner1,banner2,banner3
*/
?>
<?php get_header(); ?>

<!-- Hero -->

<div class="splash">
  <div class="splash-text">
    <h2>Run. Coed y Brenin</h2>
    <h1>the UK's first bespoke trail running centre.</h1>
  </div>
  <div class="splash-img"></div>
  <div class="splash-img-blur"></div>
</div>

<!-- Boxes -->

<section class="homeboxes">
  <div class="container">
    <div class="grid-row col-3">
      <div class="grid-unit homebox">
        <figure>
<<<<<<< HEAD
          <h2>Shop</h2>
          <img src="<?php bloginfo('template_url'); ?>/img/gallery_1.jpg" alt="img04">
=======
          <h2>TRAIL RUNNING 
STORE</h2>
          <img src="<?php bloginfo('template_url'); ?>/img/gallery_3.jpg" alt="img04">
>>>>>>> FETCH_HEAD
            <figcaption>
              <?php echo strip_tags(multieditDisplay('banner1', true)); ?>
              <a href="/shop">More</a>
            </figcaption>
          </figure>
      </div>
      <div class="grid-unit homebox">
        <figure>
<<<<<<< HEAD
          <h2>Shop</h2>
          <img src="<?php bloginfo('template_url'); ?>/img/home-demo.jpg" alt="img04">
=======
          <h2>DEMO CENTRE</h2>
          <img src="<?php bloginfo('template_url'); ?>/img/gallery_3.jpg" alt="img04">
>>>>>>> FETCH_HEAD
            <figcaption>
              <?php echo strip_tags(multieditDisplay('banner2', true)); ?>
              <a href="/demo-centre">More</a>
            </figcaption>
          </figure>
      </div>
      <div class="grid-unit homebox">
        <figure>
<<<<<<< HEAD
          <h2>Shop</h2>
          <img src="<?php bloginfo('template_url'); ?>/img/home-trails.jpg" alt="img04">
=======
          <h2>Trail Network</h2>
          <img src="<?php bloginfo('template_url'); ?>/img/gallery_3.jpg" alt="img04">
>>>>>>> FETCH_HEAD
            <figcaption>
              <?php echo strip_tags(multieditDisplay('banner3', true)); ?>
              <a href="/trails">More</a>
            </figcaption>
          </figure>
      </div>
    </div>
</section>

<!-- Intro and Events -->

<section role="main" class="site-content intro">
  <div class="container">
    <div class="grid-row col-2">

      <div class="grid-unit homeintro">
      <div class="homeimage">
        <img src="<?php bloginfo('template_url'); ?>/img/home-intro.jpg" alt="img04">
      </div>
      <div class="hometext">
	  <?php if (have_posts()) : ?>
        <?php while (have_posts()) : the_post(); ?> 
      
        
        <?php the_content(); ?>
        
         <?php wp_reset_query(); ?>
        <?php endwhile; ?>
<?php endif; ?> 
</div>
      </div>


    <!-- Events -->

    <div class="grid-unit events">
      <h2>Run. Events</h2>

      <?php 
        $args = array(
        'post_type' => 'page', 
        'name' => 'night-trail' 
        );
      $query = new WP_Query($args); 
      while($query -> have_posts()) : $query -> the_post(); ?>         
      <a href="<?php the_permalink(); ?>">
        <div class="event-logo"><?php the_post_thumbnail("event-logo");?></div>
        <div class="event-content">
          <h4><?php the_title(); ?> | <span class="date"><?php echo strip_tags(multieditDisplay('eventdate', true)); ?></span></h4>
          <p><?php echo strip_tags(multieditDisplay('intromessage', true)); ?><br/>
            <span><?php echo strip_tags(multieditDisplay('eventregistration', true)); ?></span></p>
        </div>
      </a>  
      <?php endwhile; wp_reset_query(); //this is the most important function, this makes sure the the query resets so wordpress' loop can kick in ?>

      <?php 
        $args = array(
        'post_type' => 'page', 
        'name' => 'trail-marathon-wales' 
        );
      $query = new WP_Query($args); 
      while($query -> have_posts()) : $query -> the_post(); ?>     
      <a href="<?php the_permalink(); ?>">
        <div class="event-logo"><?php the_post_thumbnail("event-logo");?></div>
        <div class="event-content">
          <h4><?php the_title(); ?> | <span class="date"><?php echo strip_tags(multieditDisplay('eventdate', true)); ?></span></h4>
          <p><?php echo strip_tags(multieditDisplay('intromessage', true)); ?><br/>
            <span><?php echo strip_tags(multieditDisplay('eventregistration', true)); ?></span></p>
        </div>
      </a>     
      <?php endwhile; wp_reset_query(); //this is the most important function, this makes sure the the query resets so wordpress' loop can kick in ?>

      <?php 
        $args = array(
        'post_type' => 'page', 
        'name' => 'winter-trail' 
        );
      $query = new WP_Query($args); 
      while($query -> have_posts()) : $query -> the_post(); ?>  
      <a href="<?php the_permalink(); ?>">
        <div class="event-logo"><?php the_post_thumbnail("event-logo");?></div>
        <div class="event-content">
          <h4><?php the_title(); ?> | <span class="date"><?php echo strip_tags(multieditDisplay('eventdate', true)); ?></span></h4>
          <p><?php echo strip_tags(multieditDisplay('intromessage', true)); ?><br/>
            <span><?php echo strip_tags(multieditDisplay('eventregistration', true)); ?></span></p>
        </div>
      </a>
      <?php endwhile; wp_reset_query(); //this is the most important function, this makes sure the the query resets so wordpress' loop can kick in ?>
    
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
        <a href="<?php the_permalink() ?>"><?php the_post_thumbnail("article-image");?></a>
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

      <?php endwhile; ?>

    </div>
    <?php
      $category = get_the_category();
      echo '<a href="'.get_category_link($category[0]->cat_ID).'" class="morelink" >Read more</a>';
    ?>

   
    <?php wp_reset_query(); ?>
    
    <!--end posts-->
    
    <?php else : ?>
    <?php endif; ?>
    
    <!-- .grid-row col-4 --> 
    
  </div>
</section>


<section class="socialfeed">

   <!--  <div id="instagram" class="instagramfeed"><ul id="instafeed"></ul></div> -->
    <div id="twitter" class="twitterfeed"></div>

</section>


<?php if(function_exists('show_flexslider_rotator')) echo show_flexslider_rotator( 'homepage	' ); ?>


<?php get_footer(); ?>
<script src="http://twitter.com/javascripts/blogger.js" type="text/javascript"></script>
		<script src="http://twitter.com/statuses/user_timeline/beicsbrenin.json?callback=twitterCallback2&count=1" type="text/javascript"></script>
