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



  <a href="#"  class="item row mb-3 my-3 ">
  <div class="col-sm-2 "> <img class="img-fluid w-100 " src="images/Anthony-and-the-Gentlemen-of-Jazz-.jpg" alt="image"> </div>
  <div class="col-sm-10 pt-2">
    <h2>The post title</h2>
    <p>This is a summary or a small introduction.</p>
  </div>
  </a> 


</div>

<?php require 'footer.php'; ?>
<!-- Optional JavaScript --> 
<!-- jQuery first, then Popper.js, then Bootstrap JS --> 
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script> 
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
