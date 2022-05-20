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
<title><?php echo get_bloginfo( 'name' ); ?></title>
</head>
<body>


<header>
  <?php require 'header.php'; ?>
  <div id="banner" class="card "> <img class="card-img img-fluid " src="<?php echo get_bloginfo('template_directory'); ?>/Images/the-crowd-at-fish-inn.jpg" alt="banner">
    <div class="card-img-overlay text-white  d-flex align-items-center justify-content-center align-items-end overlay-dark">
      <div class="col-lg-6  col-md-12 d-md-block d-none my-4 p-5">
        <div class="card-body">
          <h2 class="card-title text-center"><?php echo get_field_object( 'spotlight_header_text' )['value']; ?></h2>
          <hr class="line">
          <p class="card-text text-center"><?php echo get_field_object( 'spotlight_paragraph_text' )['value']; ?>
            <a class="btn btn-outline-warning text-center btn-lg">Learn more</a></p>
        </div>
      </div>
    </div>
  </div>
</header>


<div class="container-fluid bg-light py-5">
  <div class="container">
    <div class="row ">
      <div class="col-4 text-center"> <i class="fa-solid fa-map-location-dot  fa-5x"></i>
        <h3 class="pt-3">Where?</h3>
        <p><?php echo get_field_object( 'underspotlight_where' )['value']; ?></p>
      </div>
      <div class="col-4 text-center"> <i class="fa-solid fa-clock fa-5x"></i>
        <h3 class="pt-3">Time?</h3>
        <p><?php echo get_field_object( 'underspotlight_time' )['value']; ?></p>
      </div>
      <div class="col-4 text-center"> <i class="fa-solid fa-calendar-week fa-5x"></i>
        <h3 class="pt-3">Date??</h3>
        <p><?php echo get_field_object( 'underspotlight_date' )['value']; ?></p>
      </div>
    </div>
  </div>
</div>
<div class="container">
  <div class="row py-5">
    <div class="col-md-6 mb-3"> <img class="img-fluid" src="<?php echo get_bloginfo('template_directory'); ?>/Images/Anthony-and-the-Gentlemen-of-Jazz-.jpg" alt="Anthony-and-the-Gentlemen-of-Jazz"> </div>
    <div class="col-md-6 mb-3">
		<?php echo the_content(); ?> 
	</div>
  </div>
</div>
<iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3766.5214959803016!2d146.81519231490407!3d-19.259674986982752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6bd5f8da4be3d759%3A0x942c9f7d51144851!2sHotel%20Grand%20Chancellor%20Townsville!5e0!3m2!1sen!2sau!4v1652360379307!5m2!1sen!2sau" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

<?php require 'footer.php'; ?>
<!-- Optional JavaScript --> 
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
