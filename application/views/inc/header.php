<?
$CI =& get_instance();
if (empty($meta_title)) {
   $meta_title = _project_name_;
}

if (empty($meta_description)) {
   $meta_description = _project_name_;
}

if (empty($meta_keywords)) {
   $meta_keywords = _project_name_;
}

if (empty($meta_others)) {
   $meta_others = "";
}



?>



<!doctype html>
<html class="no-js" lang="zxx">

<head>
   <meta charset="utf-8">
   <meta http-equiv="x-ua-compatible" content="ie=edge">
   <meta name="description" content="">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <base href="<?= base_url() ?>">
   <meta property="og:type" content="object" />
   <meta property="og:site_name" content="<?= _project_complete_name_ ?>" />
   <title><?= $meta_title ?></title>
   <meta name="description" content="<?= $meta_description ?>">
   <meta name="keywords" content="<?= $meta_keywords ?>">
   <meta name="GOOGLEBOT" content="index,follow" />

   <meta name="distribution" content="global" />

   <link rel="shortcut icon" type="image/x-icon" href="<?= IMAGE ?>favicon.ico">


   <!-- GOOGLE FONTS -->
   <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i%7CMontserrat:600,800, 700"
      rel="stylesheet">
   <!-- FONT AWESOME -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <!-- ARCHIVES CSS -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <?php if (!empty($direct_css)) {
      foreach ($direct_css as $dcss) {
         echo '<link rel="stylesheet" href="' . $dcss . '"  crossorigin="anonymous">';
      }
   } ?>
   <?php if (!empty($css)) {
      foreach ($css as $css) {
         echo '<link rel="stylesheet" href="' . CSS . $css . '"  crossorigin="anonymous">';
      }
   } ?>

   <link rel="stylesheet" href="<?= CSS ?>owl.carousel.min.css">
   <link rel="stylesheet" href="<?= CSS ?>bootstrap.min.css">
   <link rel="stylesheet" href="<?= CSS ?>menu.css">
   <link rel="stylesheet" href="<?= CSS ?>slick.css">
   <link rel="stylesheet" href="<?= CSS ?>style.css">
</head>

<body class="th-18">
   <div id="wrapper">
      <header id="header-container" class="header head-tr">
         <!-- Header -->
         <div id="navbar_top" class="head-tr bottom">
            <div class="container container-header">
               <!-- Left Side Content -->
               <div class="row align-items-center justify-content-center">
                  <div class="col-lg-4">
                     <!-- Logo -->
                     <div id="logo">
                        <a href="<?= MAINSITE ?>"><img src="<?= IMAGE ?>logo.png"
                              data-sticky-logo="<?= IMAGE ?>logo.png" alt=""></a>
                     </div>
                  </div>
                  <div class="col-lg-8">
                     <!-- Mobile Navigation -->
                     <!-- <div class="mmenu-trigger">
                           <button class="hamburger hamburger--collapse" type="button">
                           <span class="hamburger-box">
                           <span class="hamburger-inner"></span>
                           </span>
                           </button>
                        </div> -->
                     <!-- Main Navigation -->
                     <nav class="navbar sticky-top navbar-expand-lg style-1 head-tr" id="navigation">
                        <div class="container">
                           <!-- <a class="navbar-brand" href="#">Logo</a> -->
                           <button class="navbar-toggler" type="button" data-toggle="collapse"
                              data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                              aria-expanded="false" aria-label="Toggle navigation">
                              <i class="fas fa-bars"></i>
                           </button>
                           <div class="collapse navbar-collapse" id="navbarSupportedContent">
                              <ul class="navbar-nav mr-auto w-100 justify-content-end">
                                 <li class="nav-item active">
                                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                                 </li>
                                 <li class="nav-item">
                                    <a class="nav-link" href="#company-and-values">Company & Values</a>
                                 <li class="nav-item">
                                    <a class="nav-link" href="#services">Services</a>
                                 <li class="nav-item">
                                    <a class="nav-link" href="#testimonials">Testimonials</a>
                                 <li class="nav-item">
                                    <a class="nav-link" href="#faqs">FAQs</a>
                                 </li>
                                 <li class="nav-item">
                                    <a class="nav-link" href="contact-us">Contact Us</a>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </nav>
                     <!-- Main Navigation / End -->
                  </div>
               </div>
               <!-- Left Side Content / End -->
            </div>
         </div>
         <!-- Header / End -->
      </header>
      <div class="clearfix"></div>