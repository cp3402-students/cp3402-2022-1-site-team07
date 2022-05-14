<nav class="navbar navbar-expand-lg navbar-dark" >
    <div class="container">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNavbarToggler3"
        aria-controls="myNavbarToggler3" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <a class="navbar-brand" href="<?php echo get_permalink( get_page_by_path( 'home' ) ); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/Images/logo.png" alt="logo" width="99" height="100"></a>
      <div class="collapse navbar-collapse" id="myNavbarToggler3">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"> <a class="nav-link text-white Home" href="<?php echo get_permalink( get_page_by_path( 'home' ) ); ?>">Home</a> </li>
          <li class="nav-item"> <a class="nav-link text-white Events" href="<?php echo get_permalink( get_page_by_path( 'events' ) ); ?>">Events</a> </li>
          <li class="nav-item"> <a class="nav-link text-white About" href="<?php echo get_permalink( get_page_by_path( 'about' ) ); ?>">About</a> </li>
          <li class="nav-item"> <a class="nav-link text-white Gallery" href="<?php echo get_permalink( get_page_by_path( 'gallery' ) ); ?>">Gallery</a> </li>
          <li class="nav-item"> <a class="nav-link text-white Contact" href="<?php echo get_permalink( get_page_by_path( 'contact' ) ); ?>">Contact</a> </li>
        </ul>
      </div>
    </div>
  </nav>
  <script>
	var pageName = "<?php echo the_title(); ?>";
  </script>