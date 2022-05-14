<div class="footer py-5 text-white">
  <div class="footer container" >
    <div class="row">
      <div class="col-md-3">
        <h4>Quick links</h4>
        <ul>
          <li><a href="<?php echo get_permalink( get_page_by_path( 'home' ) ); ?>">Home</a></li>
          <li><a href="<?php echo get_permalink( get_page_by_path( 'events' ) ); ?>">Events</a></li>
          <li><a href="<?php echo get_permalink( get_page_by_path( 'about' ) ); ?>">About</a></li>
          <li><a href="<?php echo get_permalink( get_page_by_path( 'gallery' ) ); ?>">Gallery</a></li>
          <li><a href="<?php echo get_permalink( get_page_by_path( 'contact' ) ); ?>">Contact</a></li>
        </ul>
      </div>
      <div class="col-md-3">
        <h4>Upcoming Events</h4>
        <ul>
		  <?php
								// Loop for camping trips on this date
								$args = array(
									'post_status'=>'publish',
									'posts_per_page' => 10
								);

								$post_query = new WP_Query($args);

								if($post_query->have_posts() ) {
									while($post_query->have_posts() ) {
										$post_query->the_post();
										if(!empty(get_the_excerpt()))
											{
												echo "
												<li>".get_the_title()."</li>
												";
											}
									}
								}
							?>
        </ul>
      </div>
      <div class="col-md-6">
        <h4>Gallery Spotlights</h4>
        <div class="row mr-2 mb-2">
          <div class="col-4"> <img class="img-fluid" src="<?php echo get_bloginfo('template_directory'); ?>/Images/band-3.jpg" alt ="image"> </div>
          <div class="col-4"> <img class="img-fluid" src="<?php echo get_bloginfo('template_directory'); ?>/Images/band-2.jpg" alt ="image"> </div>
          <div class="col-4"> <img class="img-fluid" src="<?php echo get_bloginfo('template_directory'); ?>/Images/band-1.jpg" alt ="image"> </div>
        </div>
        <div class="row mr-2 mb-2">
          <div class="col-4"> <img class="img-fluid" src="<?php echo get_bloginfo('template_directory'); ?>/Images/band-3.jpg" alt ="image"> </div>
          <div class="col-4"> <img class="img-fluid" src="<?php echo get_bloginfo('template_directory'); ?>/Images/band-2.jpg" alt ="image"> </div>
          <div class="col-4"> <img class="img-fluid" src="<?php echo get_bloginfo('template_directory'); ?>/Images/band-1.jpg" alt ="image"> </div>
        </div>
      </div>
    </div>
  </div>
	<p class="social-footer text-center mt-5" > <a class="mr-3" href="#"><i class="fa-brands fa-facebook"></i> Facebook</a> <a class="mr-3"  href="#"><i class="fa-solid fa-envelope"></i> Email Us</a></p>
  <p class="text-center ">&copy;2022 Team 07</p>
</div>
  <script>
	$(document).ready(function()
	{
		$(".nav-link."+pageName+"").addClass("current");
	});
  </script>