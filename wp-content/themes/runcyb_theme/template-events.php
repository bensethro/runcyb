<?php
/*
Template Name: events
*/
?>
<?php get_header(); ?>
<?php if (have_posts()) : ?>
<?php while (have_posts()) : the_post(); ?>

<section role="main"> <img src="<?php bloginfo('template_url'); ?>/img/slide_events.jpg" /> </section>
<section role="main" class="site-content">
  <div class="container">
    <div class="grid-row col-2">
      <div class="grid-unit  left">
        <?php the_post_thumbnail(); ?>
        <h1>
          <?php the_title(); ?>
        </h1>
        <?php the_content(); ?>
      </div>
      <div class="grid-unit right"> yuy </div>
    </div>
  </div>
</section>
<?php wp_reset_query(); ?>
<?php endwhile; ?>
<?php endif; ?>
<section role="main" class="site-content">
  <div class="container">
    <div class="grid-row col-1">
      <div class="grid-unit events">
        <?php 
$args = array(
    'post_type' => 'page', //make sure we only loop though pages
    'name' => 'night-trail' //get the page using the slug
);
$query = new WP_Query($args); //setup new query with our arguments defined
while($query -> have_posts()) : $query -> the_post(); ?> 
        

        <a href="<?php the_permalink(); ?>" class="event">
          <?php the_post_thumbnail("event-logo");?>

          <h4><?php the_title(); ?></h4>
        <h5><?php echo strip_tags(multieditDisplay('intromessage', true)); ?></h5>
       <?php the_excerpt(); ?> 

        
        <p><?php echo strip_tags(multieditDisplay('eventdate', true)); ?> | <?php echo strip_tags(multieditDisplay('eventregistration', true)); ?></p>
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
          <h4><?php the_title(); ?></h4>
        <h5><?php echo strip_tags(multieditDisplay('intromessage', true)); ?></h5>
       <?php the_excerpt(); ?> 

       
        <p><?php echo strip_tags(multieditDisplay('eventdate', true)); ?> | <?php echo strip_tags(multieditDisplay('eventregistration', true)); ?></p>
        </a>
 

<?php endwhile; wp_reset_query(); //this is the most important function, this makes sure the the query resets so wordpress' loop can kick in ?>

<?php 
$args = array(
    'post_type' => 'page', //make sure we only loop though pages
    'name' => 'winter-event' //get the page using the slug
);
$query = new WP_Query($args); //setup new query with our arguments defined
while($query -> have_posts()) : $query -> the_post(); ?> 
        
    
        <a href="<?php the_permalink(); ?>" class="event">
           <?php the_post_thumbnail("event-logo");?> <h4><?php the_title(); ?></h4>
        <h5><?php echo strip_tags(multieditDisplay('intromessage', true)); ?></h5>
      <?php the_excerpt(); ?>

       
        <p><?php echo strip_tags(multieditDisplay('eventdate', true)); ?> | <?php echo strip_tags(multieditDisplay('eventregistration', true)); ?></p>
        </a>
   

<?php endwhile; wp_reset_query(); //this is the most important function, this makes sure the the query resets so wordpress' loop can kick in ?>
    
      </div>
    </div>
  </div>
  
  
</section>
<section role="main" class="site-content testimonials">
  <div class="container">
  <?php do_action( 'woothemes_testimonials', array( 'limit' => 3, 'display_author' => true, 'category' => 12) ); ?>
  </div>
</section>
<?php get_footer(); ?>
