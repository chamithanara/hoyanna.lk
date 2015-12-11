<!DOCTYPE html>
<!--[if lt IE 7]>      <html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Always force latest IE rendering engine -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Meta Keyword -->
    <meta name="keywords" content="one page, business template, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
    <!-- meta character set -->
    <meta charset="utf-8">

    <!-- Site Title -->
    <title>Hoyanna.lk</title>
    
    <!--
    Google Fonts
    ============================================= -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet" type="text/css">
	
    <!--
    CSS
    ============================================= -->
    <!-- Fontawesome -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/css/font-awesome.min.css">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/css/bootstrap.min.css">
    <!-- Fancybox -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/css/jquery.fancybox.css">
    <!-- owl carousel -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/css/owl.carousel.css">
    <!-- Animate -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/css/animate.css">
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/css/main.css">
    <!-- Main Responsive -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/css/responsive.css">
	
	
	<!-- Modernizer Script for old Browsers -->
    <script src="<?php echo base_url(); ?>/assets/js/vendor/modernizr-2.6.2.min.js"></script>
	
</head>

<body>

    <!--
    Fixed Navigation
    ==================================== -->
    <header id="navigation" class="navbar-fixed-top animated-nav" style="background-color: rgb(0, 199, 252)">
        <div class="container">

            <div class="navbar-header">
                <!-- responsive nav button -->
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- /responsive nav button -->

                <!-- logo -->
                <h1 class="navbar-brand">
                    <a href="<?php echo site_url('Welcome/index') ?>">
                        <img src="<?php echo base_url(); ?>/assets/img/logo.png" alt="Kasper Logo">
                    </a>
                </h1>
                <!-- /logo -->
            
                </div>

                <!-- main nav -->
                <nav class="collapse navigation navbar-collapse navbar-right" role="navigation">
                    <ul id="nav" class="nav navbar-nav" style="color:black">
                        <li><a style="color:black" href="#service">employee Tab1</a></li>
                        <li><a style="color:black" href="#about">employee Tab2</a></li>
                        <li><a style="color:black" href="#pricing">employee Tab3</a></li>
                        <li><a style="color:black" href="#contact">employee Tab4</a></li>
                    </ul>
                </nav>
                <!-- /main nav -->
            </div>

        </div>
    </header>
    <!--
    End Fixed Navigation
    ==================================== -->
    
    <section id="home">
    </section>
    
    <!--
    #about-us
    ========================== -->
    <section id="about-us">
        <div class="container">
            <div class="row" style="margin-top:20px">
                
                <div id="jobDetails" class="col-md-5 col-md-offset-1 wow fadeInLeft">

                    <div class="subtitle text-center">
                        <h3>Vaccancies</h3>
                        <p>Vaccancies details.</p>
                    </div>
                    
                    <div id="testimonial" style="margin-top:-10px">
                        <?php $vacancyIndex = 0;
                            foreach ($vacancies as $vacancy):
                            if($vacancyIndex % 1){ ?>
                                <div class="tst-item clearfix" >
                        <?php } ?>
                            <a href="#" id="<?= $vacancy['id']; ?>">
                                <img src="<?php echo base_url(); ?>/assets/img/client/1.png" alt="Client" class="img-circle">
                                <div class="tst-content">
                                    <p><?= $vacancy['description']; ?></p>
                                    <p><?= $vacancy['date']; ?></p>
                                    <p><?= $vacancy['username']; ?></p>
                                    <p><?= $vacancy['type']; ?></p>
                                    <span><?= $vacancy['name']; ?></span>
                                </div>
                            </a> 
                            <?php 
                                if($vacancyIndex % 1){ ?>
                                </div>
                            <?php 
                            } 
                            $vacancyIndex++;
                            endforeach; 
                            ?>  
                        
                    </div> <!-- end #testimonial -->
                </div> <!-- end .col-md-5 -->

                <div style="" id="jobDetailInfo" class="col-md-5 col-md-offset-1 wow fadeInRight">

                    <div class="subtitle text-center">
                        <h3>Job Details</h3>
                        <p>Detail information.</p>
                    </div>
                    
                    <div id="details" class="progress-bars" style="display:none">
                        <h4>Name : Chamitha</h4>
                        <h4>Tel : 0770388616</h4>
                        <h4>Address : 75ads</h4>
                    </div>

                </div>  <!-- end .col-md-5 -->

            </div>
        </div>
    </section>
    <!--
    End #about-us
    ========================== -->

    <!--
    #footer
    ========================== -->
    <footer id="footer" class="text-center">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <div class="footer-logo wow fadeInDown">
                        <img src="<?php echo base_url(); ?>/assets/img/logo.png" alt="logo">
                    </div>

                    <div class="footer-social wow fadeInUp">
                        <h3>We are social</h3>
                        <ul class="text-center list-inline">
                            <li><a href="https://www.facebook.com/hoyannalk-138117423222526/"><i class="fa fa-facebook fa-lg"></i></a></li>
                            <li><a href="http://goo.gl/hUfpSB"><i class="fa fa-twitter fa-lg"></i></a></li>
                            <li><a href="http://goo.gl/r4xzR4"><i class="fa fa-google-plus fa-lg"></i></a></li>
                        </ul>
                    </div>

                    <div class="copyright">
                        <p>Developed By Hoyanna.lk</p>
                    </div>

                </div>
            </div>
        </div>
    </footer>
    <!--
    End #footer
    ========================== -->


    <!--
    JavaScripts
    ========================== -->
    
    <!-- main jQuery -->
    <script src="<?php echo base_url(); ?>/assets/js/vendor/jquery-1.11.1.min.js"></script>
    <!-- Bootstrap -->
    <script src="<?php echo base_url(); ?>/assets/js/bootstrap.min.js"></script>
    <!-- jquery.nav -->
    <script src="<?php echo base_url(); ?>/assets/js/jquery.nav.js"></script>
    <!-- Portfolio Filtering -->
    <script src="<?php echo base_url(); ?>/assets/js/jquery.mixitup.min.js"></script>
    <!-- Fancybox -->
    <script src="<?php echo base_url(); ?>/assets/js/jquery.fancybox.pack.js"></script>
    <!-- Parallax sections -->
    <script src="<?php echo base_url(); ?>/assets/js/jquery.parallax-1.1.3.js"></script>
    <!-- jQuery Appear -->
    <script src="<?php echo base_url(); ?>/assets/js/jquery.appear.js"></script>
    <!-- countTo -->
    <script src="<?php echo base_url(); ?>/assets/js/jquery-countTo.js"></script>
    <!-- owl carousel -->
    <script src="<?php echo base_url(); ?>/assets/js/owl.carousel.min.js"></script>
    <!-- WOW script -->
    <script src="<?php echo base_url(); ?>/assets/js/wow.min.js"></script>
    <!-- theme custom scripts -->
    <script src="<?php echo base_url(); ?>/assets/js/mainView.js"></script>
</body>
</html>
