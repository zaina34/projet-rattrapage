                        
						<nav class="main_menu clearfix" <?=(isset($_SESSION['utilisateur'])?'':'hidden')?>>
								<ul class="ul_li_center clearfix">
									<li class="has_child" hidden>
										<a href="#!">Home</a>
										<ul class="submenu">
											<li><a href="index_1.html">Home Page V.1</a></li>
											<li><a href="index_2.html">Home Page V.2</a></li>
										</ul>
									</li>
									<li class="has_child">
										<a href="#!">Régions</a>
										<ul class="submenu">
											<li><a href="regions.php">Tous les régions</a></li>
											<!--<li><a href="carte.php">La carte</a></li>-->
										</ul>
									</li>
									<li class="has_child" hidden>
										<a href="#!">Pages</a>
										<ul class="submenu">
											<li><a href="service.html">Our Service</a></li>
											<li><a href="gallery.html">Car Gallery</a></li>
											<li><a href="account.html">My Account</a></li>
											<li><a href="reservation.html">Reservation</a></li>
											<li class="has_child">
												<a href="#!">Blogs</a>
												<ul class="submenu">
													<li><a href="blog.html">Blog</a></li>
													<li><a href="blog_details.html">Blog Details</a></li>
												</ul>
											</li>
											<li class="has_child">
												<a href="#!">Our Cars</a>
												<ul class="submenu">
													<li><a href="car.html">Cars</a></li>
													<li><a href="car_details.html">Car Details</a></li>
												</ul>
											</li>
											<li><a href="cart.html">Shopping Cart</a></li>
											<li><a href="faq.html">F.A.Q.</a></li>
											<li><a href="login.html">Login</a></li>
										</ul>
									</li>
									<li class="has_child" hidden>
										<a href="#!">Contact Us</a>
										<ul class="submenu">
											<li><a href="contact.html">Contact Default</a></li>
											<li><a href="contact_wordwide.html">Contact Wordwide</a></li>
										</ul>
									</li>
								</ul>
							</nav>