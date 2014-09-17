<?php get_header(); ?>
<?php /* Get author data */
	if(get_query_var('author_name')) :
	$curauth = get_userdatabylogin(get_query_var('author_name'));
	else :
	$curauth = get_userdata(get_query_var('author'));
	endif;
?>
<section role="main">

  <img src="<?php bloginfo('template_url'); ?>/img/topimage_sm.png" />

</section>

<section role="main" class="site-content pushdown">
  <div class="container">
  <div class="grid-row col-2">
  <div class="grid-unit left">
  
  <?php if (have_posts()) : ?>
  <?php $post = $posts[0]; // Hack. Set $post so that the_date() works. ?>
  <?php /* If this is a category archive */ if (is_category()) { ?>
  <h1><?php printf(__('All posts in %s', 'framework'), single_cat_title('',false)); ?></h1>
  <?php /* If this is a tag archive */ } elseif( is_tag() ) { ?>
  <h1><?php printf(__('All posts tagged %s', 'framework'), single_tag_title('',false)); ?></h1>
  <?php /* If this is a daily archive */ } elseif (is_day()) { ?>
  <h1>
    <?php _e('Archive for', 'framework') ?>
    <?php the_time('F jS, Y'); ?>
  </h1>
  <?php /* If this is a monthly archive */ } elseif (is_month()) { ?>
  <h1>
    <?php _e('Archive for', 'framework') ?>
    <?php the_time('F, Y'); ?>
  </h1>
  <?php /* If this is a yearly archive */ } elseif (is_year()) { ?>
  <h1>
    <?php _e('Archive for', 'framework') ?>
    <?php the_time('Y'); ?>
  </h1>
  <?php /* If this is an author archive */ } elseif (is_author()) { ?>
  <h1>
    <?php _e('All posts by', 'framework') ?>
    <?php echo $curauth->display_name; ?></h1>
  <?php /* If this is a paged archive */ } elseif (isset($_GET['paged']) && !empty($_GET['paged'])) { ?>
    <h1>
      <?php _e('Blog Archives', 'framework') ?>
    </h1>
    <?php } ?>
    
  
  <!--BEGIN #primary .hfeed-->
  
  <?php while (have_posts()) : the_post(); ?>
  
  <!--BEGIN .hentry -->
  <div <?php post_class(); ?> id="post-<?php the_ID(); ?>">
    <div class="grid-row col-2">
      <div class="grid-unit article-image">
        <?php /* if the post has a WP 2.9+ Thumbnail */
					if ( (function_exists('has_post_thumbnail')) && (has_post_thumbnail()) ) { ?>
        <a title="<?php printf(__('Permanent Link to %s', 'framework'), get_the_title()); ?>" href="<?php the_permalink(); ?>">
        <?php the_post_thumbnail('thumbnail-archive'); /* post thumbnail settings configured in functions.php */ ?>
        </a>
        <?php } ?>
      </div>
      <div class="grid-unit article-content"> 
      	<h3><a href="<?php the_permalink(); ?>" rel="bookmark" title="<?php printf(__('Permanent Link to %s', 'framework'), get_the_title()); ?>">
        <?php the_title(); ?>
        </a>
        </h3>
        
         <p>
              <?php the_excerpt(); ?></p>	
         
        <p>
        <?php _e('By', 'framework') ?>
        <?php the_author_posts_link(); ?>
       
        <?php _e('On', 'framework') ?>
      
        <?php the_time( get_option('date_format') ); ?>
      
        <?php _e('In', 'framework') ?>
        <?php the_category(', ') ?>
      
        <?php _e('With', 'framework') ?>
        <?php comments_popup_link(__('No Comments', 'framework'), __('1 Comment', 'framework'), __('% Comments', 'framework')); ?>
     
        
        <?php edit_post_link( __('edit', 'framework'), '<span class="edit-post">[', ']</span>' ); ?>
</p>
        
       
      
      </div>
    </div>
    <hr/>
    <!--END .hentry-->
    
<?php endwhile; ?>
    

        <?php next_posts_link(__('&larr; Older Entries', 'framework')) ?>

        <?php previous_posts_link(__('Newer Entries &rarr;', 'framework')) ?>

    
<?php else : ?>
 
<div id="post-0" <?php post_class(); ?>>
      <h2 class="entry-title"><?php _e('Error 404 - Not Found', 'framework') ?></h2>
      <p><?php _e("Sorry, but you are looking for something that isn't here.", "framework") ?></p>
</div>
<?php endif; ?>
    
</section>
  </div>

  
  <div class="grid-unit right"> right col
    <?php get_sidebar(); ?>
  </div>
  <div><!-- .projects --> 
  </div>
  <!-- .container --> 

<?php get_footer(); ?>
