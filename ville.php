<!DOCTYPE html>
<?php
include("Tools.php");
?>
<html lang="en">

	<head>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="x-ua-compatible" content="ie=edge">

		<title>Ville choisie</title>
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
							<li><i class="fal fa-envelope"></i> garages-regions@gmail.com</li>
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
            <?php

                $ville = array();
                $gares = array();
                
                $bdd= getBD();
                $id_v= $_GET["id"];
                $rep = $bdd->query("select * from ville where id_v='".$id_v."'");
                while ($line = $rep ->fetch()) {
                    $ville = $line;
                }
                if(!empty($ville)){
                    $rep = $bdd->query('select * from gare where ville_gare= "'.$ville['nom'].'" ');
                    while ($line = $rep ->fetch()) {
                        $gares[] = $line;
                    }
                }else{
                    exit("ERREUR, ville n'existe pas !!");
                }
                //var_dump('select * from gare where ville_gare= "'.$id_v.'" '.$gares);
            ?>
	<!-- breadcrumb_section - start
			================================================== -->
			<section class="breadcrumb_section text-center clearfix">
				<div class="page_title_area has_overlay d-flex align-items-center clearfix" data-bg-image="<?=($ville['image'])?>">
					<div class="overlay"></div>
					<div class="container" data-aos="fade-up" data-aos-delay="100">
						<h1 class="page_title text-white mb-0"><?=($ville['nom'])?></h1>
					</div>
				</div>
				<div class="breadcrumb_nav clearfix" data-bg-color="#F2F2F2">
					<div class="container">
						<ul class="ul_li clearfix">
							<li><a href="index.html">Home</a></li>
							<li><?=($ville['region'])?></li>
                            <li><?=($ville['nom'])?></li>
						</ul>
					</div>
				</div>
			</section>
			<!-- breadcrumb_section - end
			================================================== -->
<!-- details_section - start
			================================================== -->
			<section class="details_section blog_details sec_ptb_100 clearfix">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-10 col-sm-11 col-xs-12">
                        <h3 class="mb_30" data-aos="fade-up" data-aos-delay="100">
                            <?=($ville['slogan'])?>
                        </h3>
                        <p class="mb-0" data-aos="fade-up" data-aos-delay="100">
                            <?=($ville['description'])?>
                        </p>
                        <div class="account_info_list" data-aos="fade-up" data-aos-delay="100"><br/>
                            <ul class="ul_li_block clearfix">
                                <li><span>R??gion:</span> <?php echo ($ville['region']) ?></li>
                                <li><span>Population:</span> <?php echo ($ville['population']) ?></li>
                                <li><span></span> <?php echo ($ville['chomage']) ?></li>
                            </ul>
                        </div>
                    </div>
                </div>
				<div class="container" style='margin-top:30px'>
					<div class="row justify-content-lg-between justify-content-md-center justify-content-sm-center">

						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="item_shorting clearfix" data-aos="fade-up" data-aos-delay="100">
								<div class="row align-items-center justify-content-lg-between">
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
										<span class="item_available">Liste des gares</span>
									</div>

									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style='text-align:right'>
										<span class="item_available"><?=(count($gares))?> disponible(s)</span>
									</div>
								</div>
							</div>

							<div class="row">
                                <?php foreach($gares as $gare){ ?>
								<div class="col-lg-4 col-md-4">
                                    <div class="feature_vehicle_item" data-aos="fade-up" data-aos-delay="100">
                                        <h3 class="item_title mb-0">
                                            <a href="gare.php?id=<?=($gare['id_gare'])?>">
                                            <?=($gare['nom_gare'])?>
                                            </a>
                                        </h3>
                                        <div class="item_image position-relative">
                                            <a class="image_wrap" href="gare.php?id=<?=($gare['id_gare'])?>">
                                                <img src="<?=($gare['image'])?>" style="height:200px" alt="image_not_found">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <?php } ?>
							</div>
                            
						</div>

					</div>
				</div>
			</div>
			<!-- car_section - end
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