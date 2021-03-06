<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible">
<title>Login Template</title>
<link
	href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>">



</head>
<body>
	<main>
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-6 login-section-wrapper">
					<div class="brand-wrapper">
						<img alt="logo" class="logo" style="height: 80px; width: 300px"
							src="<c:url value="/resources/images/logo.png"/>" />
					</div>
					<div class="login-wrapper my-auto">
						<h1 class="login-title">IDENTIFIEZ-VOUS</h1>
						<form action="Login" method="post">
							<div class="form-group">
								<label for="email">Email</label> <input type="text"
									name="emailPersonne" id="email" class="form-control"
									placeholder="entrez votre username">
							</div>
							<div class="form-group mb-4">
								<label for="password">MOT DE PASSE</label> <input
									type="password" name="passwordPersonne" id="password"
									class="form-control" placeholder="enter your passsword">
							</div>

							<input name="login" id="login" class="btn btn-block login-btn"
								type="submit" value="S'identifiez-vous">
						</form>
						<p class="login-wrapper-footer-text">
							Vous avez pas encore un compte? <a href="registration_form"
								class="text-reset">Inscrivez-vous</a>
						</p>
					</div>
				</div>
				<div class="col-sm-6 px-0 d-none d-sm-block">
					<img src="<c:url value="/resources/images/login_img.jpg"/>" alt="login image"
						class="login-img">
				</div>
			</div>
		</div>
	</main>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
