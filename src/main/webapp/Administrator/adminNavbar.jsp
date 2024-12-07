<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Techstreet Academy</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>

<body style="padding-left: 9px; padding-right: 9px;">
	<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
		<div class="row justify-content-md-center">
			<div class="col-md-3">
				<a class="navbar-brand d-flex align-items-center" href="Home.html">
					<img src="../img/techstreet_logo.png" width="90" height="90" alt=""
					style="border-radius: 30%; margin-left: 15px;" />
					<div class="text-container" style="text-align: left;">
						<div class="h1 mb-0"
							style="color: #050942; font-weight: 900; font-size: 1.2rem; margin-bottom: -0.5rem; padding-left: 20px;">
							<b>Tech Street Academy</b>
						</div>
						<small class="font-weight-normal"
							style="color: #050942; font-weight: 900; font-size: 0.8rem; padding-left: 20px;">
							An IT Training Institute </small>
					</div>
				</a>
			</div>
			<div class="col-md-1"></div>
			<div class="col-md-3 pt-2">
				<div class="navbar navbar-nav mx-auto" style="padding-left: 15%;">
					<table class="navbar-nav">
						<tr>
							<td class="nav-item"><a href="" target="_blank"> <i
									class="fa fa-facebook-f"
									style="font-size: 30px; color: #050942; padding-left: 25px;"></i>
							</a></td>
							<td class="nav-item "><a href="" target="_blank"> <i
									class="fa fa-youtube-play "
									style="font-size: 30px; color: red; padding-left: 25px;"></i>
							</a></td>
							<td class="nav-item "><a href=""> <i
									class="fa fa-instagram"
									style="font-size: 30px; color: #cd486b; padding-left: 25px;"></i>
							</a></td>
							<td class="nav-item "><a href="" target="_blank"> <i
									class="fa fa-whatsapp"
									style="font-size: 30px; color: #25D366; padding-left: 25px;"></i>
							</a></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="col-md-5 pt-3">
				<div class="collapse navbar-collapse ml-auto" id="navbarNav">
					<div class="navbar-nav ml-auto">
						<a href="tel:918421699620"> <i class="fa fa-phone"
							style="font-size: 18px; color: #050942; padding-left: 18px;">
								&nbsp;<b>+91-8421699620</b>
						</i>
						</a> <a href=""> <i class="fa fa-envelope"
							style="font-size: 18px; color: rgb(5, 9, 66); padding-left: 18px;">&nbsp;<b>
									techstreet2024@gmail.com</b></i>
						</a>


					


					</div>
				</div>
			</div>
			<div class="w-100"></div>
			<div class="col-12">
				<!-- Menubar -->
				<button class="navbar-toggler ml-auto" type="button"
					data-toggle="collapse" data-target="#navbarNavAltMarkup"
					aria-controls="navbarNavAltMarkup" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNavAltMarkup"
					style="background-color: #050942;">
					<div class="navbar-nav">
						<a id="menu_bg" class="nav-link" href=""
							style="color: white; padding-left: 20px; font-size: 15px;">Home
						</a> 
						<a id="menu_bg" class="nav-link" href="displayStudent.jsp"
							style="color: white; padding-left: 20px; font-size: 15px;">DisplayStudent
						</a>
						<a id="menu_bg" class="nav-link" href="delete.jsp"
							style="color: white; padding-left: 20px; font-size: 15px;">DeleteStudent
						</a>
						<a id="menu_bg" class="nav-link" href="studentQuery.jsp"
							style="color: white; padding-left: 20px; font-size: 15px;">StudentQuery
						</a>
						<a id="menu_bg" class="nav-link" href="adminlogin.jsp"
							style="color: white; padding-left: 20px; font-size: 15px;">Logout
						</a>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<!-- End of Navbar -->
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>