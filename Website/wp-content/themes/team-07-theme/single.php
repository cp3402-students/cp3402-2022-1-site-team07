<!doctype html>
<html lang="en-AU">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,300;0,400;0,700;1,100;1,300;1,400;1,700&family=Playfair+Display&display=swap" rel="stylesheet">
<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo get_bloginfo('template_directory'); ?>/style.css">
<title><?php echo the_title(); ?> - <?php echo get_bloginfo( 'name' ); ?></title>
</head>
<body>
<header>
  <?php require 'header.php'; ?>
  <script>pageName = "Events";</script>
</header>
<div class="container pb-3">

  <div class="row py-5">
    <div class="col-md-8 mb-3">
		<a href='#'><< Back to posts</a><hr>
      <?php echo the_content(); ?>
    </div>
    <div class="aside col-md-4 mb-3">
      <h3>Featured Image</h3>
	  <img class="img-fluid w-100 mb-3" src="<?php echo get_the_post_thumbnail_url(); ?>" alt="">
	  <h3>Other Posts</h3>
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
													<li><a href='".get_permalink()."'>".get_the_title()."</a></li>
												";
											}
									}
								}
							?>
      </ul>
      <h4>Did you know?</h4>
      <p>Our friendly and relaxed club has a strong history of supporting jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community over many years.  We encourage new guests to become members and to actively participate in the club’s functions. </p>
    </div>
  </div>
</div>

<?php require 'footer.php'; ?>
<!-- Optional JavaScript --> 
<!-- jQuery first, then Popper.js, then Bootstrap JS --> 
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script> 
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
