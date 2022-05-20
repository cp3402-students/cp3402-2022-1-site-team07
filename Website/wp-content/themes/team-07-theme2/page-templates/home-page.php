<?php
/**
 * Template Name: Homepage Template
 *
 * Template for displaying a page just with the header and footer area and a "naked" content area in between.
 * Good for landingpages and other types of pages where you want to add a lot of custom markup.
 *
 * @package Understrap
 */

// Exit if accessed directly.
defined('ABSPATH') || exit;

get_header();
?>


    <div id="banner" class="card ">
        <?php if (get_field('homepage_banner')): ?>
            <img src="<?php the_field('homepage_banner'); ?>"/>
        <?php else: ?>
            <img src="https://via.placeholder.com/1600x600.png?text=1600x600"/>

        <?php endif; ?>
        <div class="card-img-overlay text-white  d-flex align-items-center justify-content-center align-items-end overlay-dark">
            <div class="col-lg-6  col-md-12 d-md-block d-none my-4 p-5">
                <div class="card-body">
                    <h2 class="card-title text-center">Welcome To <br>
                        Townsville Jazz Club</h2>
                    <hr class="line">
                    <p class="card-text text-center">Our friendly and relaxed club has a strong history of supporting
                        jazz in Townsville and has made a great contribution to the Townsville Arts and Music Community
                        over many years. We encourage new guests to become members and to actively participate in the
                        club’s functions. <br>
                        <br>
                        <a class="btn btn-outline-warning text-center btn-lg">Learn more</a></p>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid bg-light py-5">
        <div class="container">
            <div class="row ">
                <div class="col-4 text-center"><i class="fa-solid fa-map-location-dot  fa-5x"></i>
                    <h3 class="pt-3">Where?</h3>
                    <p><?php echo get_field_object('underspotlight_where')['value']; ?></p>
                </div>
                <div class="col-4 text-center"><i class="fa-solid fa-clock fa-5x"></i>
                    <h3 class="pt-3">Time?</h3>
                    <p><?php echo get_field_object('underspotlight_time')['value']; ?></p>
                </div>
                <div class="col-4 text-center"><i class="fa-solid fa-calendar-week fa-5x"></i>
                    <h3 class="pt-3">Date?</h3>
                    <p><?php echo get_field_object('underspotlight_date')['value']; ?></p>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row py-5">
<!--            <div class="col-md-6 mb-3">-->
<!--                <img class="img-fluid"-->
<!--                     src="--><?php //echo get_bloginfo('template_directory'); ?><!--/Images/Anthony-and-the-Gentlemen-of-Jazz-.jpg"-->
<!--                     alt="Anthony-and-the-Gentlemen-of-Jazz">-->
<!--            </div>-->
            <div class="col-md-12 mb-3">

                <?php
                while (have_posts()) :
                    the_post();
                    get_template_part('loop-templates/content', 'empty');
                endwhile;
                ?>
            </div>
        </div>
    </div>

    <div class="map"><?php echo get_field_object('map')['value']; ?></div>
<?php
get_footer();
