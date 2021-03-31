<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-colors-flat.css">

<title>Page Apprenant</title>
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
					<a href="/Login">${sessionApp.nomPersonne}
						${sessionApp.prenomPersonne}</a> <input type="hidden"
						value="${sessionApp}">
				</h2>
				<h4 class="text-light">
					<c:if test="${sessionApp.rolePersonne.equals('Apprenant')}">
						<a>Apprenant</a>
					</c:if>
				</h4>
				<h4 class="text-light">${sessionApp.getReferenciel().getLibelle()}</h4>
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
					<li class="active"><a href="#"><i
							class="bx bx-home"></i> <span>Home</span></a></li>
					<li><a href="#portfolio"><i class="bx bx-user"></i> <span>Offre
								semaine courante</span></a></li>
					<li><a href="#facts"><i class="bx bx-file-blank"></i> <span>
								Demande acces YOUCODE</span></a></li>
					<li><a href="#services"><i class="bx bx-book-content"></i>
							Demandes effectuées semaine courante</a></li>
					<li><a href="#testimonials"><i class="bx bx-server"></i>
							Historique Apprenant</a></li>
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

		<!-- ======= Portfolio Section ======= -->
		<section id="portfolio" class="portfolio section-bg">
			<div class="container">

				<div class="section-title">
					<h2>Offre semaine courante</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>
				<div class="w3-container"
					style="display: flex; width: 100%; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
					<div class="w3-container"
						style="display: flex; width: 100%; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
						<c:if test="${OffreSemaine==null}">
							<div class="div_Demande">
								<p class="text_Demande">Aucune offre pour cette semaine</p>
							</div>
						</c:if>
						<c:if test="${OffreSemaine!=null}">
							<div class="w3-card-4 w3-flat-belize-hole"
								style="width: 90%; margin-top: 0px;">
								<header class="w3-container">
									<h3 style="text-align: center">Offre de cete semaine</h3>
								</header>
								<div class="w3-container w3-flat-belize-hole">
									<p style="margin: 0px 350px 0px;">Date de l'offre
										:${OffreSemaine.dateOffre}</p>
									<hr>
									<img
										src="/YoucodeSystemReservation/resources/images/offre1.gif"
										alt="Avatar" style="width: 160px; margin: 1pc 2pc;"
										class="w3-left w3-circle ">
									<p style="margin-top: 4pc; font-size: 17px">Nombre des
										Places : ${OffreSemaine.nbrApprenants }</p>
									<br>
									<p style="text-align: left; font-size: 14px">
										effectué Par l'administrateur : <span
											style="font-size: 17px; font-weight: 700;"
											class="w3-texte-profond-orange">CHAOUB Achraf</span>
									</p>
								</div>
							</div>
						</c:if>

					</div>
				</div>
			</div>
		</section>
		<!-- End Portfolio Section -->

		<!-- ======= Facts Section ======= -->
		<section id="facts" class="facts">
			<div class="container">

				<div class="section-title">
					<h2>Demande acces YOUCODE</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="w3-container"
					style="display: flex; width: 100%; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">

					<c:if test="${jour==1}">
						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id01').style.display='flex';">Lundi
						</button>
						<div id="id01" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id02').style.display='flex'">Mardi
						</button>
						<div id="id02" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id03').style.display='flex'">Mercredi
						</button>
						<div id="id03" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+2}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+2}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+2}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+2}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id04').style.display='flex'">Jeudi
						</button>
						<div id="id04" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+3}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+3}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+3}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+3}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id05').style.display='flex'">Vendredi
						</button>
						<div id="id05" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+4}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+4}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+4}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+4}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-midnight-blue"
							onclick="document.getElementById('id06').style.display='flex'">Samedi
						</button>
						<div id="id06" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">8h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">9h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">10h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">11h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">12h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">13h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">14h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">15h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">16h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-midnight-blue"
							onclick="document.getElementById('id07').style.display='flex'">Dimanche
						</button>
						<div id="id07" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+6}">8h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+6}">9h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+6}">10h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+6}">11h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+6}">12h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+6}">13h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+6}">14h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+6}">15h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+6}">16h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+6}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+6}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+6}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+6}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>
					</c:if>

					<c:if test="${jour==2}">
						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id01').style.display='flex';"
							disabled="disabled">Lundi</button>
						<div id="id01" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id02').style.display='flex'">Mardi
						</button>
						<div id="id02" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id03').style.display='flex'">Mercredi
						</button>
						<div id="id03" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id04').style.display='flex'">Jeudi
						</button>
						<div id="id04" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+2}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+2}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+2}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+2}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id05').style.display='flex'">Vendredi
						</button>
						<div id="id05" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+3}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+3}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+3}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+3}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-midnight-blue"
							onclick="document.getElementById('id06').style.display='flex'">Samedi
						</button>
						<div id="id06" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">8h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">9h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">10h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">11h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">12h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">13h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">14h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">15h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">16h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-midnight-blue"
							onclick="document.getElementById('id07').style.display='flex'">Dimanche
						</button>
						<div id="id07" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">8h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">9h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">10h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">11h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">12h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">13h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">14h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">15h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">16h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+5}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>
					</c:if>

					<c:if test="${jour==3}">
						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id01').style.display='flex';"
							disabled="disabled">Lundi</button>
						<div id="id01" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id02').style.display='flex'"
							disabled="disabled">Mardi</button>
						<div id="id02" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id03').style.display='flex'">Mercredi
						</button>
						<div id="id03" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id04').style.display='flex'">Jeudi
						</button>
						<div id="id04" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id05').style.display='flex'">Vendredi
						</button>
						<div id="id05" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+2}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+2}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+2}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+2}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-midnight-blue"
							onclick="document.getElementById('id06').style.display='flex'">Samedi
						</button>
						<div id="id06" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">8h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">9h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">10h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">11h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">12h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">13h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">14h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">15h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">16h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-midnight-blue"
							onclick="document.getElementById('id07').style.display='flex'">Dimanche
						</button>
						<div id="id07" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">8h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">9h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">10h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">11h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">12h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">13h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">14h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">15h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">16h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+4}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>
					</c:if>

					<c:if test="${jour==4}">
						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id01').style.display='flex';"
							disabled="disabled">Lundi</button>
						<div id="id01" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id02').style.display='flex'"
							disabled="disabled">Mardi</button>
						<div id="id02" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id03').style.display='flex'"
							disabled="disabled">Mercredi</button>
						<div id="id03" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id04').style.display='flex'">Jeudi
						</button>
						<div id="id04" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id05').style.display='flex'">Vendredi
						</button>
						<div id="id05" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant+1}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-midnight-blue"
							onclick="document.getElementById('id06').style.display='flex'">Samedi
						</button>
						<div id="id06" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">8h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">9h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">10h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">11h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">12h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">13h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">14h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">15h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">16h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-midnight-blue"
							onclick="document.getElementById('id07').style.display='flex'">Dimanche
						</button>
						<div id="id07" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">8h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">9h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">10h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">11h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">12h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">13h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">14h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">15h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">16h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+3}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>
					</c:if>

					<c:if test="${jour==5}">
						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id01').style.display='flex';"
							disabled="disabled">Lundi</button>
						<div id="id01" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id02').style.display='flex'"
							disabled="disabled">Mardi</button>
						<div id="id02" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id03').style.display='flex'"
							disabled="disabled">Mercredi</button>
						<div id="id03" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id04').style.display='flex'"
							disabled="disabled">Jeudi</button>
						<div id="id04" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id05').style.display='flex'">Vendredi
						</button>
						<div id="id05" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%" name="Heure" value="${jourCourant}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-midnight-blue"
							onclick="document.getElementById('id06').style.display='flex'">Samedi
						</button>
						<div id="id06" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">8h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">9h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">10h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">11h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">12h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">13h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">14h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">15h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">16h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-midnight-blue"
							onclick="document.getElementById('id07').style.display='flex'">Dimanche
						</button>
						<div id="id07" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">8h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">9h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">10h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">11h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">12h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">13h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">14h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">15h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">16h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+2}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>
					</c:if>

					<c:if test="${jour==6}">
						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id01').style.display='flex';"
							disabled="disabled">Lundi</button>
						<div id="id01" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id02').style.display='flex'"
							disabled="disabled">Mardi</button>
						<div id="id02" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id03').style.display='flex'"
							disabled="disabled">Mercredi</button>
						<div id="id03" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id04').style.display='flex'"
							disabled="disabled">Jeudi</button>
						<div id="id04" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id05').style.display='flex'"
							disabled="disabled">Vendredi</button>
						<div id="id05" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>

						</div>

						<button class="w3-button w3-flat-midnight-blue"
							onclick="document.getElementById('id06').style.display='flex'">Samedi
						</button>
						<div id="id06" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">8h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">9h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">10h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">11h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">12h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">13h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">14h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">15h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">16h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-midnight-blue"
							onclick="document.getElementById('id07').style.display='flex'">Dimanche
						</button>
						<div id="id07" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">8h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">9h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">10h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">11h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">12h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">13h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">14h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">15h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">16h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant+1}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>
					</c:if>


					<c:if test="${jour==0}">
						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id01').style.display='flex';"
							disabled="disabled">Lundi</button>
						<div id="id01" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id02').style.display='flex'"
							disabled="disabled">Mardi</button>
						<div id="id02" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id03').style.display='flex'"
							disabled="disabled">Mercredi</button>
						<div id="id03" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id04').style.display='flex'"
							disabled="disabled">Jeudi</button>
						<div id="id04" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-clouds"
							onclick="document.getElementById('id05').style.display='flex'"
							disabled="disabled">Vendredi</button>
						<div id="id05" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: 20%">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-midnight-blue"
							onclick="document.getElementById('id06').style.display='flex'"
							disabled="disabled">Samedi</button>
						<div id="id06" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto">8h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto">9h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto">10h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto">11h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto">12h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto">13h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto">14h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto">15h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto">16h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>

						<button class="w3-button w3-flat-midnight-blue"
							onclick="document.getElementById('id07').style.display='flex'">Dimanche
						</button>
						<div id="id07" class="w3-panel  w3-display-container"
							style="display: none; width: 100%; height: 50px; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
							<form method="post" action="Reserver">
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">8h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">9h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">10h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">11h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">12h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">13h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">14h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">15h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">16h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">17h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">18h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">19h</button>
								<button
									class="w3-button w3-flat-belize-hole w3-border w3-round-large"
									style="width: auto" name="Heure" value="${jourCourant}">20h</button>
								<span onclick="this.parentElement.style.display='none'"
									class="w3-button w3-red w3-display-topright">x</span>
							</form>
						</div>
					</c:if>



				</div>
			</div>
		</section>
		<!-- End Facts Section -->


		<!-- ======= Services Section ======= -->
		<section id="services" class="services">
			<div class="container">

				<div class="section-title">
					<h2>Demandes effectuées semaine courante</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>
				<c:if test="${demandeSemaine.size()==0}">
					<div class="div_Demande">
						<p class="text_Demande">Aucune reservation effectué pour cette
							semaine</p>
					</div>
				</c:if>
				<div class="w3-container"
					style="display: flex; width: 100%; flex-direction: row; justify-content: space-around; flex-wrap: wrap;">
					<c:forEach items="${demandeSemaine}" var="demande">
						<div class="w3-card-4 w3-flat-belize-hole"
							style="width: 40%; margin-top: 30px">
							<header class="w3-container w3-theme-d3">
								<h3>${demande.getPersonne().nomPersonne}
									${demande.getPersonne().prenomPersonne}</h3>
							</header>
							<div class="w3-container w3-flat-belize-hole">
								<hr>
								<img src="<c:url value="/resources/images/profil.jpg"/>"
									alt="Avatar" class="w3-left w3-circle w3-margin-right"
									style="width: 60px">
								<p>Date Demande :${demande.dateDemande}</p>
								<p>Date Offre :${demande.dateOffre}</p>
								<p style="margin-left: 75px;">
									Etat : <span
										style="text-decoration: underline; font-weight: 700; color: black">${ demande.isStatus() ? 'Accepté' : 'En attente!' }</span>
								</p>

								<br>
							</div>

						</div>
					</c:forEach>
					<div style="width: 100%; height: 50px; margin-top: 30px">
						<h2 style="text-align: center;">
							La
							<c:out value="${OffreSemaine.nbrSemaine }" />
							éme semaine de l'année
						</h2>
					</div>
				</div>

			</div>

		</section>
		<!-- End Services Section -->

		<!-- ======= Testimonials Section ======= -->
		<section id="testimonials" class="testimonials section-bg">
			<div class="container">
				<div class="section-title">
					<h2>Historique Apprenant</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>
				<c:if test="${historique.size()==0}">
					<div class="div_Demande">
						<p class="text_Demande">Aucune historique à afficher pour
							l'instant</p>
					</div>
				</c:if>
				<c:if test="${historique.size()>0}">
					<div class="row">
						<div class="col-lg-12">
							<section class="panel">
								<table class="table table-striped table-advance table-hover">
									<tbody>
										<tr>
											<th style="text-align: center;"><i class="icon_calendar"></i>ID_DEMANDE</th>
											<th style="text-align: center;"><i class="icon_calendar"></i>NOM
												COMPLET APPREANANT</th>
											<th style="text-align: center;"><i class="icon_mail_alt"></i>
												DATE DEMANDE</th>
											<th style="text-align: center;"><i class="icon_pin_alt"></i>DATE
												OFFRE</th>
											<th style="text-align: center;"><i class="icon_pin_alt"></i>Semaine</th>

										</tr>
										<c:forEach items="${historique}" var="dem" varStatus="status">
											<tr>
												<td style="text-align: center;">${status.count}</td>
												<td style="text-align: center;">${dem.getPersonne().nomPersonne}
													${dem.getPersonne().prenomPersonne}</td>
												<td style="text-align: center;">${dem.dateDemande}</td>
												<td style="text-align: center;">${dem.dateOffre}</td>
												<td style="text-align: center;">${dem.nombreSemaine}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</section>
						</div>
					</div>
				</c:if>

			</div>
		</section>
		<!-- End Testimonials Section -->
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