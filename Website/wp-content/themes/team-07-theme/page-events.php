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
</header>
<div class="container pb-3">


<h1 class="my-3">List of posts</h1>


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
												<a href='".get_permalink()."'  class='item row mb-3 my-3 '>
												  <div class='col-sm-2 '> <img class='img-fluid w-100 ' src='".get_the_post_thumbnail_url()."' alt='image'> </div>
												  <div class='col-sm-10 pt-2'>
													<h2>".get_the_title()."</h2>
													<p>".get_the_excerpt()."</p>
												  </div>
												  </a> 
												";
											}
									}
								}
							?>
  


</div>

<?php require 'footer.php'; ?>
<!-- Optional JavaScript --> 
<!-- jQuery first, then Popper.js, then Bootstrap JS --> 
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script> 
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
