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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/momentjs/2.14.1/moment.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-colors-flat.css">

<link href="<c:url value="/resources/css/demande.css"/>"
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
				<img src="<c:url value="/resources/images/profil.jpg"/>" alt=""
					class="img-fluid rounded-circle">
				<h2 class="text-light">
					<a href="/Login">${session.getNomPersonne()}
						${session.getPrenomPersonne()}</a>
				</h2>
				<h4 class="text-light">
					<c:if test="${ session.getRolePersonne().equals('Admin')}">
						<a>Administrateur</a>
					</c:if>
					<c:if test="${session.rolePersonne.equals('Apprenant')}">
						<a>Apprenant</a>
						<a>${session.getReferenciel().getLibelle()}</a>
					</c:if>
				</h4>
				<h4 class="text-light">${session.getEmailPersonne()}</h4>
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
					<li><a href="#about"><i class="bx bx-user"></i> <span>Emails
								Internes</span></a></li>
					<li><a href="#portfolio"><i class="bx bx-file-blank"></i> <span>Demandes Apprenants Youcode
								 </span></a></li>
					<li><a href="#facts"><i class="bx bx-server"></i>
							Demandes Apprenants Hors Youcode</a></li>
					<li><a href="#services"><i class="bx bx-server"></i>
							OFFRES ACCES</a></li>
					<li><a href="#testimonials"><i class="bx bx-server"></i>
							Validation Demandes</a></li>
					<li><a href="#contact"><i class="bx bx-server"></i>
							Historique</a></li>
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
					<h2>Emails Internes</h2>
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







		<!-- ======= Portfolio Section ======= -->
		<section id="portfolio" class="portfolio section-bg">
			<div class="container">

				<div class="section-title">
					<h2>Demandes Apprenants Youcode</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>
				<div class="w3-container"
					style="display: flex; width: 100%; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
					<c:if test="${listAppInternes.size()==0}">
						<div class="div_Demande">
							<p class="text_Demande">Aucune Demande interne existe pour
								l'instant</p>
						</div>
					</c:if>
					<c:forEach items="${listAppInternes}" var="appInterne"
						varStatus="status">
						<div class="w3-card-4" style="width: 40%; margin-top: 30px">
							<header class="w3-container w3-theme-d3">
								<h3>${appInterne.getNomPersonne()}
									${appInterne.getPrenomPersonne()}</h3>
							</header>
							<div class="w3-container w3-theme-d3">
								<p>Date inscription : ${appInterne.getDate()}</p>
								<hr>
								<img src="<c:url value="/resources/images/profil.jpg"/>"
									alt="Avatar" class="w3-left w3-circle w3-margin-right"
									style="width: 60px">
								<p>${appInterne.getEmailPersonne()}</p>
								<br>
							</div>
							<form action="Update" method="post">
								<input type="submit" value="Accepter" name="BtnConfirmation"
									class="w3-button w3-block w3-flat-midnight-blue"> <input
									type="hidden" value="${appInterne.getIdPersonne() }"
									name="idPersonne">
							</form>
							<form action="delete" method="post">
								<input type="submit" value="Refuser" name="BtnConfirmation"
									class="w3-button w3-block w3-flat-alizarin"> <input
									type="hidden" value="${appInterne.getIdPersonne() }"
									name="idPersonneR">
							</form>

						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<!-- End Portfolio Section -->

		<!-- ======= Facts Section ======= -->
		<section id="facts" class="facts">
			<div class="container">

				<div class="section-title">
					<h2>Demandes Apprenants Hors Youcode</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="w3-container"
					style="display: flex; width: 100%; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
					<c:if test="${listAppExternes.size()==0}">
						<div class="div_Demande">
							<p class="text_Demande">Aucune Demande externe existe pour
								l'instant</p>
						</div>
					</c:if>
					<c:forEach items="${listAppExternes}" var="appdb">

						<div class="w3-card-4" style="width: 40%; margin-top: 30px">
							<header class="w3-container w3-theme-d3">
								<h3>${appdb.getNomPersonne()}${appdb.getPrenomPersonne()}</h3>
							</header>
							<div class="w3-container w3-theme-d3">
								<p>Date inscription : ${appdb.getDate()}</p>
								<hr>
								<img src="<c:url value="/resources/images/profil.jpg"/>"
									alt="Avatar" class="w3-left w3-circle w3-margin-right"
									style="width: 60px">
								<p>${appdb.getEmailPersonne()}</p>
								<br>
							</div>
							<form action="Update" method="post">
								<input type="submit" value="Accepter" name="BtnConfirmation"
									class="w3-button w3-block w3-flat-midnight-blue"> <input
									type="hidden" value="${appdb.getIdPersonne() }"
									name="idPersonne">
							</form>
							<form action="delete" method="post">
								<input type="submit" value="Refuser" name="BtnConfirmation"
									class="w3-button w3-block w3-flat-alizarin"> <input
									type="hidden" value="${appdb.getIdPersonne() }"
									name="idPersonneR">
							</form>

						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<!-- End Facts Section -->


		<!-- ======= Services Section ======= -->
		<section id="services" class="services">
			<div class="container">

				<div class="section-title">
					<h2>OFFRES ACCES</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>
				<c:if test="${semaine==null}">
					<div class="container">
						<div class="panel  w3-panel">
							<div class="panel-heading w3-flat-midnight-blue"
								style="height: 50px">Effectuer un Offre D'accés</div>
							<div class="panel-body">
								<form method="post" action="AjouterOffreAcces">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label">Nombre Apprenants par
													semaine :</label> <input type="text" class="form-control"
													name="NbrApprOffreSemaine" id="motif">
											</div>
										</div>
										<div class='col-md-6'>
											<div class="form-group">
												<label class="control-label">Date Offre de cette
													semaine : </label>
												<div class='input-group date' id='datetimepicker'>
													<input type='text' name="dateOffreAcces"
														class="form-control" value="${date}" /> <span
														class="input-group-addon"> <!-- <span
												class="glyphicon glyphicon-calendar"></span> -->
													</span>
												</div>
											</div>
										</div>
									</div>
									<input type="submit" class="btn w3-flat-midnight-blue"
										value="Effectuer Offre D'accés" style="margin-left: 450px">
								</form>
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${semaine!=null}">
					<div class="w3-container"
						style="display: flex; width: 100%; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
						<div class="w3-card-4 w3-flat-midnight-blue"
							style="width: 60%; margin-top: 0px;">
							<header class="w3-container">
								<h3 style="text-align: center">Offre de la semaine
									${semaine.nbrSemaine}</h3>
							</header>
							<div class="w3-container w3-flat-midnight-blue">
								<p style="margin: 0px 262px 0px;">${semaine.dateOffre}</p>
								<hr>
								<img src="<c:url value="/resources/images/offre1.gif"/>"
									alt="Avatar" style="width: 160px; margin: 1pc 2pc;"
									class="w3-left w3-circle w3-margin-right" style="width: 60px">
								<p style="margin-top: 6pc; font-size: 17px">Nombre des
									places : ${semaine.nbrApprenants}</p>
								<br>
							</div>
						</div>
					</div>
				</c:if>

			</div>
		</section>
		<!-- End Services Section -->

		<!-- ======= Testimonials Section ======= -->
		<section id="testimonials" class="testimonials section-bg">
			<div class="container">

				<div class="section-title">
					<h2>Validation Demandes Semaine Courante</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="w3-container"
					style="display: flex; width: 100%; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
					<c:if test="${demandesH.size()==0}">
						<div class="div_Demande">
							<p class="text_Demande">Aucune Demande existe pour l'instant</p>
						</div>
					</c:if>
					<c:forEach items="${demandesH}" var="demande">
						<c:if test="${!demande.isStatus()}">
							<div class="w3-card-4" style="width: 40%; margin-top: 30px">
								<header class="w3-container w3-theme-d3">
									<h3>${demande.getPersonne().nomPersonne}
										${demande.getPersonne().prenomPersonne}</h3>
								</header>
								<div class="w3-container w3-theme-d3">
									<hr>
									<img src="<c:url value="/resources/images/profil.jpg"/>"
										alt="Avatar" class="w3-left w3-circle w3-margin-right"
										style="width: 60px">
									<p>Date Demande :${demande.dateDemande}</p>
									<p>Date Offre :${demande.dateOffre}</p>
									<br>
								</div>
								<form action="ApprouverDemande" method="post">
									<input type="submit" value="Accepter" name="BtnConfirmation"
										class="w3-button w3-block w3-flat-midnight-blue"> <input
										type="hidden" value="${demande.idDemande}" name="idDemande">
								</form>


							</div>
						</c:if>

					</c:forEach>
				</div>
				<h3 style="text-align: center; margin-top: 70px;">
					Nombre Places libres: <span class="w3-badge w3-green">${semaine.nbrApprenants}</span>
				</h3>

			</div>
		</section>
		<!-- End Testimonials Section -->

		<!-- ======= Contact Section ======= -->
		<section id="contact" class="contact">
			<div class="container">

				<div class="section-title">
					<h2>Historique Demandes</h2>
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
										<th style="text-align: center"><i class="icon_calendar"></i>ID_DEMANDE</th>
										<th style="text-align: center"><i class="icon_calendar"></i>NOM
											COMPLET APPREANANT</th>
										<th style="text-align: center"><i class="icon_mail_alt"></i>
											DATE DEMANDE</th>
										<th style="text-align: center"><i class="icon_pin_alt"></i>DATE
											OFFRE</th>
										<th style="text-align: center"><i class="icon_pin_alt"></i>SEMAINE</th>
										<th style="text-align: center"><i class="icon_pin_alt"></i>ETAT</th>

									</tr>
									<c:forEach items="${demandes}" var="dem" varStatus="status">
										<tr>
											<td style="text-align: center">${status.count}</td>
											<td style="text-align: center">${dem.getPersonne().nomPersonne}
												${dem.getPersonne().prenomPersonne}</td>
											<td style="text-align: center">${dem.dateDemande}</td>
											<td style="text-align: center">${dem.dateOffre}</td>
											<td style="text-align: center">${dem.nombreSemaine}</td>
											<td style="text-align: center">${ dem.isStatus() ? 'Accepté' : 'En attente!' }</td>

										</tr>
									</c:forEach>
								</tbody>
							</table>
						</section>
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
	<script>
		$(function() {
			$('#datetimepicker').datetimepicker();
		});
	</script>

</body>

</html>