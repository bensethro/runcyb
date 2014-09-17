<?php
/*
Template Name: Get in touch
MultiEdit: Info
*/
?>

<?php get_header(); ?>








<section id=""><div id="map_canvas"></div></section>
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
<section role="main" class="site-content">
  <div class="container">
    <div class="grid-row col-2">
      <div class="grid-unit left">
        <h1>
          <?php the_title(); ?>
        </h1>
        <p>
          <?php the_content(); ?>
        </p>
        <div id="formcontainer">
          <form id="contactForm" action="<?php bloginfo('template_url'); ?>/includes/processForm.php" method="post">
            <div class="grid-unit contact">
              <input type="text" name="senderName" id="senderName" placeholder="Name" required="required" maxlength="40" />
            </div>
            <div class="grid-unit contact last">
              <input type="text" name="senderEmail" id="senderEmail" placeholder="Email" required="required" maxlength="50" />
            </div>
            <textarea name="message" type="text" id="message" placeholder="How can we help you?" required="required" cols="80" rows="7" maxlength="10000"></textarea>
            <input type="submit" id="sendMessage" name="sendMessage" value="Send" class="btn" />
          </form>
          <div id="successMessage" class="statusMessage">
            <h2>Message sent</h2>
            <hr>
            <p>Thanks for your enquiry. We'll get back to you shortly.</p>
          </div>
          <div id="failureMessage" class="statusMessage">
            <h2>Error</h2>
            <hr>
            <p>There was a problem sending your message. Please try again, or alternatively send us an email to <a href="mailto:Mail@beicsbrenin.com">mailto:mail@beicsbrenin.com</a></p>
          </div>
          <div id="incompleteMessage" class="statusMessage">
            <h2>Error</h2>
            <hr>
            <p>Please complete all the fields in the form before sending.</p>
          </div>
        </div>
      </div>
      <div class="grid-unit right">
        <aside class="boxgrey">
        <?php multieditDisplay('Info'); ?>
       
        </aside>
      </div>
    </div>
  </div>
</section>
<?php endwhile; ?>
<?php endif; ?>

<?php get_footer(); ?>
