<!DOCTYPE html>
<?php
include("Tools.php");
?>
<html lang="en">

	<head>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="x-ua-compatible" content="ie=edge">

		<title>Informations sur gares</title>
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
            <?php

                $gare = array();
                $connexions = array();
                $ville_de_la_gare = array();
                $autres_gares = array();
                $annee_frequentations = array();

                $bdd= getBD();
                $id_g= $_GET["id"];
                $rep = $bdd->query("select * from gare where id_gare='".$id_g."'");
                while ($line = $rep ->fetch()) {
                    $gare = $line;
                }
                if(!empty($gare)){

                    // GET ville_de_la_gare
                    $rep = $bdd->query('select * from ville where nom= "'.$gare['ville_gare'].'" ');
                    while ($line = $rep ->fetch()) {
                        $ville_de_la_gare = $line;
                    }

                    // GET ALL connections
                    $rep = $bdd->query('select * from connexion where nom_gare= "'.$gare['nom_gare'].'" ');
                    while ($line = $rep ->fetch()) {
                        $connexions[] = $line['transport'];
                    }

                    // GET ALL others gares
                    $rep = $bdd->query('select g.*, v.region from gare g, ville v where v.nom=g.ville_gare and id_gare!= "'.$id_g.'" ');
                    while ($line = $rep ->fetch()) {
                        $autres_gares[] = $line;
                    }

                    // GET Frequentation
                    $rep = $bdd->query("select distinct(ANNEE) as annee from FREQUENTATION where NOM_GARE=\"".$gare['nom_gare']."\"") ;

                    while ($line = $rep ->fetch()) {
                        $annee_frequentations[] = $line['annee'];
                    }

                }else{
                    exit("ERREUR, gare n'existe pas !!");
                }

            ?>
            
            <!-- breadcrumb_section - start
			================================================== -->
			<section class="breadcrumb_section text-center clearfix">
				<div class="page_title_area has_overlay d-flex align-items-center clearfix" data-bg-image="<?=($gare['image'])?>">
					<div class="overlay"></div>
					<div class="container" data-aos="fade-up" data-aos-delay="100">
						<h1 class="page_title text-white mb-0"><?=($gare['nom_gare'])?></h1>
					</div>
				</div>
				<div class="breadcrumb_nav clearfix" data-bg-color="#F2F2F2">
					<div class="container">
						<ul class="ul_li clearfix">
							<li><a href="index.html">Home</a></li>
							<li><?=($ville_de_la_gare['region'])?></li>
							<li><?=($ville_de_la_gare['nom'])?></li>
							<li><?=($gare['nom_gare'])?></li>
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
								<h3 class="list_title mb_15">Informations:</h3>
								<ul class="ul_li_block nav" role="tablist">
									<li>
										<a class="active" data-toggle="tab" href="#conx"><i class="fas fa-address-book"></i> Connexions</a>
									</li>
									<li>
										<a data-toggle="tab" href="#stats"><i class="fas fa-file-alt"></i> Statistiques</a>
									</li>
								</ul>
							</div>
						</div>

						<div class="col-lg-8 col-md-8 col-sm-10 col-xs-12">
							<div class="account_tab_content tab-content">
								<div id="conx" class="tab-pane active">
									<div class="account_info_list" data-aos="fade-up" data-aos-delay="100">
										<h3 class="list_title mb_30">Les connexions</h3>
										<ul class="ul_li_block clearfix">
                                            <?php foreach($connexions as $conx){ ?>
											    <li><?=$conx?></li>
                                            <?php } ?>
										</ul>
									</div>
								</div>

								<div id="stats" class="tab-pane fade">
                                    <div class="col-lg-12 col-md-12 col-sm-10 col-xs-12 order-last">
                                        <div class="faq_content">
                                            <h2 class="title_text mb_15" data-aos="fade-up" data-aos-delay="100">Statistiques</h2>

                                            <div class=" clearfix" data-aos="fade-up" data-aos-delay="100">
                                                <div class="row align-items-center justify-content-lg-between">
                                                    <?php if(empty($annee_frequentations)){ 
                                                        echo "Pas de données de fréquentations sur cette gare";
                                                    }else{ ?>
                                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                            <div class="form_item mb-0">
                                                                <select onChange='changeGraph(this)'>
                                                                    <option value='*'>Tout les années</option>
                                                                    <?php foreach($annee_frequentations as $ann){ ?>
                                                                        <option><?=$ann?></option>
                                                                    <?php } ?>
                                                                </select>
                                                            </div>
                                                            
                                                            <img id='img_graph' src="generate_graph.php?gnm=<?=($gare['nom_gare'])?>" />
                                                        </div>
                                                    <?php } ?>
                                                </div>
                                            </div>

                                            <div id="faq_accordion" class="faq_accordion mb_30" hidden>

                                                <?php 
                                                    foreach($autres_gares as $k => $une_gare){ ?>
                                                    <div class="card" data-aos="fade-up" data-aos-delay="200">
                                                        <div class="card-header">
                                                            <a class="collapsed" data-toggle="collapse" href="#collapse_<?=$k?>">
                                                                <?=($une_gare['region']).' / '.($une_gare['nom_gare'])?>
                                                            </a>
                                                        </div>
                                                        <div id="collapse_<?=$k?>" class="collapse" data-parent="#faq_accordion">
                                                            <div id="content_<?=$k?>" class="card-body">
                                                            </div>
                                                        </div>
                                                    </div>
                                                <?php } ?>

                                            </div>

                                        </div>
                                    </div>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</section>
			<!-- account_section - end
			================================================== -->

            <!-- faq_section - start
			================================================== -->
			<section class="faq_section sec_ptb_100 clearfix">
				<div class="container">
					<div class="row justify-content-lg-between justify-content-md-center justify-content-sm-center">

						
					</div>
				</div>
			</section>
			<!-- faq_section - end
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
        <script>
            var changeGraph = function(lst){
                let lien = "generate_graph.php?gnm=<?=($gare['nom_gare'])?>&gan="+lst.options[lst.selectedIndex].value;
                $('#img_graph').attr('src', lien);
            }
        </script>
		
	</body>
</html>