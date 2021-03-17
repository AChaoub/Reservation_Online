<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-colors-flat.css">

<title>Page Administrateur</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="<c:url value="/resources/assets/img/favicon.png"/>"
	rel="icon">
<link href="<c:url value="/resources/assets/img/apple-touch-icon.png"/>"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="<c:url value="/resources/assets/vendor/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="/resources/assets/vendor/icofont/icofont.min.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="/resources/assets/vendor/boxicons/css/boxicons.min.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="/resources/assets/vendor/venobox/venobox.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="/resources/assets/vendor/owl.carousel/assets/owl.carousel.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/assets/vendor/aos/aos.css"/>"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="<c:url value="/resources/assets/css/style.css"/>"
	rel="stylesheet">
</head>

<body>

	<!-- ======= Mobile nav toggle button ======= -->
	<button type="button" class="mobile-nav-toggle d-xl-none">
		<i class="icofont-navigation-menu"></i>
	</button>

	<!-- ======= Header ======= -->
	<header id="header">
		<div class="d-flex flex-column">

			<div class="profile">
				<img src="assets/img/profile-img.jpg" alt=""
					class="img-fluid rounded-circle">
				<h1 class="text-light">
					<a href="index.html">${session.getNomPersonne()}</a>
				</h1>
				<div class="social-links mt-3 text-center">
					<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
						href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
						href="#" class="instagram"><i class="bx bxl-instagram"></i></a> <a
						href="#" class="google-plus"><i class="bx bxl-skype"></i></a> <a
						href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
				</div>
			</div>

			<nav class="nav-menu">
				<ul>
					<li class="active"><a href="index.html"><i
							class="bx bx-home"></i> <span>Home</span></a></li>
					<li><a href="#about"><i class="bx bx-user"></i> <span>About</span></a></li>
					<li><a href="#resume"><i class="bx bx-file-blank"></i> <span>Comptes
								A Verifier</span></a></li>
					<li><a href="#portfolio"><i class="bx bx-book-content"></i>
							Reservation</a></li>
					<li><a href="#services"><i class="bx bx-server"></i>
							Services</a></li>
					<li><a href="deconnexion"><i class="bx bx-envelope"></i>
							Deconnexion</a></li>

				</ul>
			</nav>
			<!-- .nav-menu -->
			<button type="button" class="mobile-nav-toggle d-xl-none">
				<i class="icofont-navigation-menu"></i>
			</button>

		</div>
	</header>
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<section id="hero"
		class="d-flex flex-column justify-content-center align-items-center">
		<div class="hero-container" data-aos="fade-in">
			<h1>Alex Smith</h1>
			<p>
				I'm <span class="typed"
					data-typed-items="Designer, Developer, Freelancer, Photographer"></span>
			</p>
		</div>
	</section>
	<!-- End Hero -->

	<main id="main">

		<!-- ======= About Section ======= -->
		<section id="about" class="about">
			<div class="container">

				<div class="section-title">
					<h2>About</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<table class="table table-striped table-advance table-hover">
								<tbody>
									<tr>
										<th><i class="icon_calendar"></i> NOM</th>
										<th><i class="icon_mail_alt"></i> PRENOM</th>
										<th><i class="icon_pin_alt"></i>EMAIL</th>
										<th><i class="icon_cogs"></i> REFERENCIEL</th>
									</tr>
									<c:forEach items="${listApp}" var="app">
										<tr>
											<td>${app.getNomPersonne()}</td>
											<td>${app.getPrenomPersonne()}</td>
											<td>${app.getEmailPersonne()}</td>
											<td>${app.getReferenciel().getLibelle()}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</section>
					</div>
				</div>
		</section>
		<!-- End About Section -->

		<!-- ======= Facts Section ======= -->
		<section id="facts" class="facts">
			<div class="container">

				<div class="section-title">
					<h2>Facts</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="w3-container"
					style="display: flex; width: 100%; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
					<c:forEach items="${listAppDB}" var="appdb">
					
						<div class="w3-card-4" style="width: 40%; margin-top: 30px">
							<header class="w3-container w3-theme-d3">
								<h3>${appdb.getNomPersonne()}</h3>
							</header>
							<div class="w3-container w3-theme-d3">
								<p>03/15/2021 6:00 AM</p>
								<hr>
								<img src="images/img_avatar3.png" alt="Avatar"
									class="w3-left w3-circle w3-margin-right" style="width: 60px">
								<p>cha</p>
								<br>
							</div>
							<form action="confirmeRdv" method="post">


								<input type="submit" value="Accepter" name="BtnConfirmation"
									class="w3-button w3-block w3-flat-midnight-blue"> <input
									type="hidden" value="3" name="Rdv">

							</form>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<!-- End Facts Section -->






		<!-- ======= Portfolio Section ======= -->
		<section id="portfolio" class="portfolio section-bg">
			<div class="container">

				<div class="section-title">
					<h2>Portfolio</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="row" data-aos="fade-up">
					<div class="col-lg-12 d-flex justify-content-center">
						<ul id="portfolio-flters">
							<li data-filter="*" class="filter-active">All</li>
							<li data-filter=".filter-app">App</li>
							<li data-filter=".filter-card">Card</li>
							<li data-filter=".filter-web">Web</li>
						</ul>
					</div>
				</div>

				<div class="row portfolio-container" data-aos="fade-up"
					data-aos-delay="100">

					<div class="col-lg-4 col-md-6 portfolio-item filter-app">
						<div class="portfolio-wrap">
							<img src="assets/img/portfolio/portfolio-1.jpg" class="img-fluid"
								alt="">
							<div class="portfolio-links">
								<a href="assets/img/portfolio/portfolio-1.jpg"
									data-gall="portfolioGallery" class="venobox" title="App 1"><i
									class="bx bx-plus"></i></a> <a href="portfolio-details.html"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-web">
						<div class="portfolio-wrap">
							<img src="assets/img/portfolio/portfolio-2.jpg" class="img-fluid"
								alt="">
							<div class="portfolio-links">
								<a href="assets/img/portfolio/portfolio-2.jpg"
									data-gall="portfolioGallery" class="venobox" title="Web 3"><i
									class="bx bx-plus"></i></a> <a href="portfolio-details.html"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-app">
						<div class="portfolio-wrap">
							<img src="assets/img/portfolio/portfolio-3.jpg" class="img-fluid"
								alt="">
							<div class="portfolio-links">
								<a href="assets/img/portfolio/portfolio-3.jpg"
									data-gall="portfolioGallery" class="venobox" title="App 2"><i
									class="bx bx-plus"></i></a> <a href="portfolio-details.html"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-card">
						<div class="portfolio-wrap">
							<img src="assets/img/portfolio/portfolio-4.jpg" class="img-fluid"
								alt="">
							<div class="portfolio-links">
								<a href="assets/img/portfolio/portfolio-4.jpg"
									data-gall="portfolioGallery" class="venobox" title="Card 2"><i
									class="bx bx-plus"></i></a> <a href="portfolio-details.html"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-web">
						<div class="portfolio-wrap">
							<img src="assets/img/portfolio/portfolio-5.jpg" class="img-fluid"
								alt="">
							<div class="portfolio-links">
								<a href="assets/img/portfolio/portfolio-5.jpg"
									data-gall="portfolioGallery" class="venobox" title="Web 2"><i
									class="bx bx-plus"></i></a> <a href="portfolio-details.html"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-app">
						<div class="portfolio-wrap">
							<img src="assets/img/portfolio/portfolio-6.jpg" class="img-fluid"
								alt="">
							<div class="portfolio-links">
								<a href="assets/img/portfolio/portfolio-6.jpg"
									data-gall="portfolioGallery" class="venobox" title="App 3"><i
									class="bx bx-plus"></i></a> <a href="portfolio-details.html"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-card">
						<div class="portfolio-wrap">
							<img src="assets/img/portfolio/portfolio-7.jpg" class="img-fluid"
								alt="">
							<div class="portfolio-links">
								<a href="assets/img/portfolio/portfolio-7.jpg"
									data-gall="portfolioGallery" class="venobox" title="Card 1"><i
									class="bx bx-plus"></i></a> <a href="portfolio-details.html"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-card">
						<div class="portfolio-wrap">
							<img src="assets/img/portfolio/portfolio-8.jpg" class="img-fluid"
								alt="">
							<div class="portfolio-links">
								<a href="assets/img/portfolio/portfolio-8.jpg"
									data-gall="portfolioGallery" class="venobox" title="Card 3"><i
									class="bx bx-plus"></i></a> <a href="portfolio-details.html"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 portfolio-item filter-web">
						<div class="portfolio-wrap">
							<img src="assets/img/portfolio/portfolio-9.jpg" class="img-fluid"
								alt="">
							<div class="portfolio-links">
								<a href="assets/img/portfolio/portfolio-9.jpg"
									data-gall="portfolioGallery" class="venobox" title="Web 3"><i
									class="bx bx-plus"></i></a> <a href="portfolio-details.html"
									title="More Details"><i class="bx bx-link"></i></a>
							</div>
						</div>
					</div>

				</div>

			</div>
		</section>
		<!-- End Portfolio Section -->

		<!-- ======= Services Section ======= -->
		<section id="services" class="services">
			<div class="container">

				<div class="section-title">
					<h2>Services</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="row">
					<div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up">
						<div class="icon">
							<i class="icofont-computer"></i>
						</div>
						<h4 class="title">
							<a href="">Lorem Ipsum</a>
						</h4>
						<p class="description">Voluptatum deleniti atque corrupti quos
							dolores et quas molestias excepturi sint occaecati cupiditate non
							provident</p>
					</div>
					<div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up"
						data-aos-delay="100">
						<div class="icon">
							<i class="icofont-chart-bar-graph"></i>
						</div>
						<h4 class="title">
							<a href="">Dolor Sitema</a>
						</h4>
						<p class="description">Minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat tarad
							limino ata</p>
					</div>
					<div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up"
						data-aos-delay="200">
						<div class="icon">
							<i class="icofont-earth"></i>
						</div>
						<h4 class="title">
							<a href="">Sed ut perspiciatis</a>
						</h4>
						<p class="description">Duis aute irure dolor in reprehenderit
							in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
					</div>
					<div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up"
						data-aos-delay="300">
						<div class="icon">
							<i class="icofont-image"></i>
						</div>
						<h4 class="title">
							<a href="">Magni Dolores</a>
						</h4>
						<p class="description">Excepteur sint occaecat cupidatat non
							proident, sunt in culpa qui officia deserunt mollit anim id est
							laborum</p>
					</div>
					<div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up"
						data-aos-delay="400">
						<div class="icon">
							<i class="icofont-settings"></i>
						</div>
						<h4 class="title">
							<a href="">Nemo Enim</a>
						</h4>
						<p class="description">At vero eos et accusamus et iusto odio
							dignissimos ducimus qui blanditiis praesentium voluptatum
							deleniti atque</p>
					</div>
					<div class="col-lg-4 col-md-6 icon-box" data-aos="fade-up"
						data-aos-delay="500">
						<div class="icon">
							<i class="icofont-tasks-alt"></i>
						</div>
						<h4 class="title">
							<a href="">Eiusmod Tempor</a>
						</h4>
						<p class="description">Et harum quidem rerum facilis est et
							expedita distinctio. Nam libero tempore, cum soluta nobis est
							eligendi</p>
					</div>
				</div>

			</div>
		</section>
		<!-- End Services Section -->

		<!-- ======= Testimonials Section ======= -->
		<section id="testimonials" class="testimonials section-bg">
			<div class="container">

				<div class="section-title">
					<h2>Testimonials</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="owl-carousel testimonials-carousel">

					<div class="testimonial-item" data-aos="fade-up">
						<p>
							<i class="bx bxs-quote-alt-left quote-icon-left"></i> Proin
							iaculis purus consequat sem cure digni ssim donec porttitora
							entum suscipit rhoncus. Accusantium quam, ultricies eget id,
							aliquam eget nibh et. Maecen aliquam, risus at semper. <i
								class="bx bxs-quote-alt-right quote-icon-right"></i>
						</p>
						<img src="assets/img/testimonials/testimonials-1.jpg"
							class="testimonial-img" alt="">
						<h3>Saul Goodman</h3>
						<h4>Ceo &amp; Founder</h4>
					</div>

					<div class="testimonial-item" data-aos="fade-up"
						data-aos-delay="100">
						<p>
							<i class="bx bxs-quote-alt-left quote-icon-left"></i> Export
							tempor illum tamen malis malis eram quae irure esse labore quem
							cillum quid cillum eram malis quorum velit fore eram velit sunt
							aliqua noster fugiat irure amet legam anim culpa. <i
								class="bx bxs-quote-alt-right quote-icon-right"></i>
						</p>
						<img src="assets/img/testimonials/testimonials-2.jpg"
							class="testimonial-img" alt="">
						<h3>Sara Wilsson</h3>
						<h4>Designer</h4>
					</div>

					<div class="testimonial-item" data-aos="fade-up"
						data-aos-delay="200">
						<p>
							<i class="bx bxs-quote-alt-left quote-icon-left"></i> Enim nisi
							quem export duis labore cillum quae magna enim sint quorum nulla
							quem veniam duis minim tempor labore quem eram duis noster aute
							amet eram fore quis sint minim. <i
								class="bx bxs-quote-alt-right quote-icon-right"></i>
						</p>
						<img src="assets/img/testimonials/testimonials-3.jpg"
							class="testimonial-img" alt="">
						<h3>Jena Karlis</h3>
						<h4>Store Owner</h4>
					</div>

					<div class="testimonial-item" data-aos="fade-up"
						data-aos-delay="300">
						<p>
							<i class="bx bxs-quote-alt-left quote-icon-left"></i> Fugiat enim
							eram quae cillum dolore dolor amet nulla culpa multos export
							minim fugiat minim velit minim dolor enim duis veniam ipsum anim
							magna sunt elit fore quem dolore labore illum veniam. <i
								class="bx bxs-quote-alt-right quote-icon-right"></i>
						</p>
						<img src="assets/img/testimonials/testimonials-4.jpg"
							class="testimonial-img" alt="">
						<h3>Matt Brandon</h3>
						<h4>Freelancer</h4>
					</div>

					<div class="testimonial-item" data-aos="fade-up"
						data-aos-delay="400">
						<p>
							<i class="bx bxs-quote-alt-left quote-icon-left"></i> Quis quorum
							aliqua sint quem legam fore sunt eram irure aliqua veniam tempor
							noster veniam enim culpa labore duis sunt culpa nulla illum
							cillum fugiat legam esse veniam culpa fore nisi cillum quid. <i
								class="bx bxs-quote-alt-right quote-icon-right"></i>
						</p>
						<img src="assets/img/testimonials/testimonials-5.jpg"
							class="testimonial-img" alt="">
						<h3>John Larson</h3>
						<h4>Entrepreneur</h4>
					</div>

				</div>

			</div>
		</section>
		<!-- End Testimonials Section -->

		<!-- ======= Contact Section ======= -->
		<section id="contact" class="contact">
			<div class="container">

				<div class="section-title">
					<h2>Contact</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="row" data-aos="fade-in">

					<div class="col-lg-5 d-flex align-items-stretch">
						<div class="info">
							<div class="address">
								<i class="icofont-google-map"></i>
								<h4>Location:</h4>
								<p>A108 Adam Street, New York, NY 535022</p>
							</div>

							<div class="email">
								<i class="icofont-envelope"></i>
								<h4>Email:</h4>
								<p>info@example.com</p>
							</div>

							<div class="phone">
								<i class="icofont-phone"></i>
								<h4>Call:</h4>
								<p>+1 5589 55488 55s</p>
							</div>

							<iframe
								src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621"
								frameborder="0" style="border: 0; width: 100%; height: 290px;"
								allowfullscreen></iframe>
						</div>

					</div>

					<div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
						<form action="forms/contact.php" method="post" role="form"
							class="php-email-form">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="name">Your Name</label> <input type="text"
										name="name" class="form-control" id="name"
										data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
									<div class="validate"></div>
								</div>
								<div class="form-group col-md-6">
									<label for="name">Your Email</label> <input type="email"
										class="form-control" name="email" id="email" data-rule="email"
										data-msg="Please enter a valid email" />
									<div class="validate"></div>
								</div>
							</div>
							<div class="form-group">
								<label for="name">Subject</label> <input type="text"
									class="form-control" name="subject" id="subject"
									data-rule="minlen:4"
									data-msg="Please enter at least 8 chars of subject" />
								<div class="validate"></div>
							</div>
							<div class="form-group">
								<label for="name">Message</label>
								<textarea class="form-control" name="message" rows="10"
									data-rule="required" data-msg="Please write something for us"></textarea>
								<div class="validate"></div>
							</div>
							<div class="mb-3">
								<div class="loading">Loading</div>
								<div class="error-message"></div>
								<div class="sent-message">Your message has been sent.
									Thank you!</div>
							</div>
							<div class="text-center">
								<button type="submit">Send Message</button>
							</div>
						</form>
					</div>

				</div>

			</div>
		</section>
	</main>

	<footer id="footer">
		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong><span>ACHAOUB2021</span></strong>
			</div>
			<div class="credits">
				Designed by <a href="https://bootstrapmade.com/">ACHAOUB</a>
			</div>
		</div>
	</footer>

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="<c:url value="/resources/assets/vendor/jquery/jquery.min.js"/>"></script>
	<script
		src="<c:url value="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
	<script
		src="<c:url value="/resources/assets/vendor/jquery.easing/jquery.easing.min.js"/>"></script>
	<script
		src="<c:url value="/resources/assets/vendor/php-email-form/validate.js"/>"></script>
	<script
		src="<c:url value="/resources/assets/vendor/waypoints/jquery.waypoints.min.js"/>"></script>
	<script
		src="<c:url value="/resources/assets/vendor/counterup/counterup.min.js"/>"></script>
	<script
		src="<c:url value="/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"/>"></script>
	<script
		src="<c:url value="/resources/assets/vendor/venobox/venobox.min.js"/>"></script>
	<script
		src="<c:url value="/resources/assets/vendor/owl.carousel/owl.carousel.min.jsassets/vendor/typed.js/typed.min.js"/>"></script>
	<script src="<c:url value="/resources/assets/vendor/aos/aos.js"/>"></script>

	<!-- Template Main JS File -->
	<script src="<c:url value="/resources/assets/js/main.js"/>"></script>

</body>

</html>