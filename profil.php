<!DOCTYPE html>
<?php
include("Tools.php");
?>
<html lang="en">

	<head>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="x-ua-compatible" content="ie=edge">

		<title>Home V.1 - Rotors - Car Rental HTML5 Template</title>
		<link rel="shortcut icon" href="assets/images/logo/favourite_icon.png">

		<!-- fraimwork - css include -->
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

		<!-- icon - css include -->
		<link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">

		<!-- animation - css include -->
		<link rel="stylesheet" type="text/css" href="assets/css/aos.css">
		<link rel="stylesheet" type="text/css" href="assets/css/animate.css">

		<!-- carousel - css include -->
		<link rel="stylesheet" type="text/css" href="assets/css/slick.css">
		<link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

		<!-- popup - css include -->
		<link rel="stylesheet" type="text/css" href="assets/css/magnific-popup.css">

		<!-- select options - css include -->
		<link rel="stylesheet" type="text/css" href="assets/css/nice-select.css">

		<!-- pricing range - css include -->
		<link rel="stylesheet" type="text/css" href="assets/css/jquery-ui.css">

		<!-- custom - css include -->
		<link rel="stylesheet" type="text/css" href="assets/css/style.css">

	</head>


	<body>


		<!-- backtotop - start -->
		<div id="thetop"></div>
		<div class="backtotop">
			<a href="#" class="scroll">
				<i class="far fa-arrow-up"></i>
			</a>
		</div>
		<!-- backtotop - end -->

		<!-- preloader - start -->
		<div class="preloader">
			<div class="animation_preloader">
				<div class="spinner"></div>
				<p class="text-center">Loading</p>
			</div>
			<div class="loader">
				<div class="row vh-100">
					<div class="col-3 loader_section section-left">
						<div class="bg"></div>
					</div>
					<div class="col-3 loader_section section-left">
						<div class="bg"></div>
					</div>
					<div class="col-3 loader_section section-right">
						<div class="bg"></div>
					</div>
					<div class="col-3 loader_section section-right">
						<div class="bg"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- preloader - end -->


		<!-- header_section - start
		<header class="header_section sticky text-white clearfix">
		================================================== -->
        <header class="header_section secondary_header sticky text-white clearfix">
			<div class="header_top clearfix">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-7">
							<ul class="header_contact_info ul_li clearfix">
							<li><i class="fal fa-envelope"></i> garages-regions@email.com</li>
								<li><i class="fal fa-phone"></i> +33000000000</li>
							</ul>
						</div>

						<div class="col-lg-5">
							<ul class="primary_social_links ul_li_right clearfix">
								<li><a href="#!"><i class="fab fa-facebook-f"></i></a></li>
								<li><a href="#!"><i class="fab fa-instagram"></i></a></li>
								<li><a href="#!"><i class="fab fa-twitter"></i></a></li>
								<li><a href="#!"><i class="fab fa-youtube"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="header_bottom clearfix">
				<div class="container">
					<div class="row align-items-center">

						<div class="col-lg-3 col-md-6 col-sm-6 col-6">
							<div class="brand_logo">
								<a href="index.html">
									<img src="assets/images/logo/logo_02_1x.png" srcset="assets/images/logo/logo_02_1x.png 2x" alt="logo_not_found">
								</a>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 col-sm-6 col-6 order-last">
							<?php include('menu_connect.php'); ?>
						</div>

						<div class="col-lg-6 col-md-12">
							<?php include('menu.php'); ?>
						</div>

					</div>
				</div>
			</div>

			<div id="collapse_search_body" class="collapse_search_body collapse">
				<div class="search_body">
					<div class="container">
						<form action="#">
							<div class="form_item">
								<input type="search" name="search" placeholder="Type here...">
								<button type="submit"><i class="fal fa-search"></i></button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</header>
		<!-- header_section - end
		================================================== -->


		<!-- main body - start
		================================================== -->
		<main>

			<!-- breadcrumb_section - start
			================================================== -->
			<section class="breadcrumb_section text-center clearfix">
				<div class="page_title_area has_overlay d-flex align-items-center clearfix" data-bg-image="assets/images/breadcrumb/train.jpeg">
					<div class="overlay"></div>
					<div class="container" data-aos="fade-up" data-aos-delay="100">
						<h1 class="page_title text-white mb-0">Mon profil</h1>
					</div>
				</div>
				<div class="breadcrumb_nav clearfix" data-bg-color="#F2F2F2">
					<div class="container">
						<ul class="ul_li clearfix">
							<li><a href="index.html">Home</a></li>
							<li>mon profil</li>
						</ul>
					</div>
				</div>
			</section>
			<!-- breadcrumb_section - end
			================================================== -->


			<!-- account_section - start
			================================================== -->
			<section class="account_section sec_ptb_100 clearfix">
				<div class="container">
					<div class="row justify-content-lg-between justify-content-md-center justify-content-sm-center">

						<div class="col-lg-4 col-md-8 col-sm-10 col-xs-12">
							<div class="account_tabs_menu clearfix" data-bg-color="#F2F2F2" data-aos="fade-up" data-aos-delay="100">
								<h3 class="list_title mb_15">Détails:</h3>
								<ul class="ul_li_block nav" role="tablist">
									<li>
										<a class="active" data-toggle="tab" href="#admin_tab"><i class="fas fa-user"></i> Information</a>
									</li>
									<li>
										<a href="deconnexion.php"><i class="fas fa-sign-out-alt"></i> Déconnexion <img class="arrow" src="assets/images/icons/icon_02.png" alt="icon_not_found"></a>
									</li>
									<!--<li>
										<a data-toggle="tab" href="#profile_tab"><i class="fas fa-address-book"></i> Booking Profiles</a>
									</li>
									<li>
										<a data-toggle="tab" href="#history_tab"><i class="fas fa-file-alt"></i> Booking History</a>
									</li>-->
								</ul>
							</div>
						</div>

						<div class="col-lg-8 col-md-8 col-sm-10 col-xs-12">
							<div class="account_tab_content tab-content">
								<div id="admin_tab" class="tab-pane active">
									<div class="account_info_list" data-aos="fade-up" data-aos-delay="100">
										<h3 class="list_title mb_30">Profil:</h3>
                                        <ul class="ul_li_block clearfix">
											<li><span>Nom:</span> <?php echo ($_SESSION['utilisateur']['nom']) ?></li>
											<li><span>Prénom:</span> <?php echo ($_SESSION['utilisateur']['prenom']) ?></li>
											<li><span>E-mail:</span> <?php echo ($_SESSION['utilisateur']['mail']) ?></li>
											<li><span>Phone Number:</span> <?php echo ($_SESSION['utilisateur']['num']) ?></li>
											<li><span>Adresse:</span> <?php echo ($_SESSION['utilisateur']['adresse']) ?></li>
											<li><span>Classe:</span> <?php echo ($_SESSION['utilisateur']['classe']) ?></li>
										</ul>
									</div>
								</div>

							</div>
						</div>
						
					</div>
				</div>
			</section>
			<!-- account_section - end
			================================================== -->



			


		</main>
		<!-- main body - end
		================================================== -->


		<!-- footer_section - start
		================================================== -->
		<?php include('footer.php'); ?>
		<!-- footer_section - end
		================================================== -->

		
		<!-- fraimwork - jquery include -->
		<script src="assets/js/jquery-3.5.1.min.js"></script>
		<script src="assets/js/popper.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- animation - jquery include -->
		<script src="assets/js/aos.js"></script>
		<script src="assets/js/parallaxie.js"></script>

		<!-- carousel - jquery include -->
		<script src="assets/js/slick.min.js"></script>

		<!-- popup - jquery include -->
		<script src="assets/js/magnific-popup.min.js"></script>

		<!-- select ontions - jquery include -->
		<script src="assets/js/nice-select.min.js"></script>

		<!-- isotope - jquery include -->
        <script src="assets/js/isotope.pkgd.js"></script>
        <script src="assets/js/imagesloaded.pkgd.min.js"></script>
        <script src="assets/js/masonry.pkgd.min.js"></script>

		<!-- google map - jquery include -->
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDk2HrmqE4sWSei0XdKGbOMOHN3Mm2Bf-M&ver=2.1.6"></script>
        <script src="assets/js/gmaps.min.js"></script>

		<!-- pricing range - jquery include -->
		<script src="assets/js/jquery-ui.js"></script>

		<!-- counter - jquery include -->
		<script src="assets/js/waypoint.js"></script>
		<script src="assets/js/counterup.min.js"></script>

		<!-- contact form - jquery include -->
        <script src="assets/js/validate.js"></script>

		<!-- mobile menu - jquery include -->
        <script src="assets/js/mCustomScrollbar.js"></script>

		<!-- custom - jquery include -->
		<script src="assets/js/custom.js"></script>

		
	</body>
</html>