<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx">
<head>
	<meta charset="utf-8">
	<title>Donut</title>
	<link rel="shortcut icon" href="resources/assets/img/icon.png">

	<meta name="description" content="FundMe - is a Premium HTML Responsive Templeate by HTMLmate Team. You can use this for anykind of Nonprofit website">

	<meta name="keywords" content="Premium HTML Template">

	<meta name="author" content="HTMLmate">

	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- css-include -->

	<!-- boorstrap -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/bootstrap.min.css">
	<!-- themify-icon.css -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/themify-icons.css">
	<!-- owl-carousel -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/owl.carousel.css">
	<!-- Video-min -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/video.min.css">
	<!-- animate.css -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/animate.css">
	<!-- REVOLUTION STYLE SHEETS -->
	<link rel="stylesheet" type="text/css" href="resources/rev-slider/css/settings.css">
	<!-- REVOLUTION LAYERS STYLES -->
	<link rel="stylesheet" type="text/css" href="resources/rev-slider/css/layers.css">
	<!-- REVOLUTION NAVIGATION STYLES -->
	<link rel="stylesheet" type="text/css" href="resources/rev-slider/css/navigation.css">
	<!-- menu style -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/menu.css">
	<!-- style -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/style.css">
	<!-- responsive.css -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/responsive.css">
</head>
<!-- /end of head -->

<body>
	<div id="preloader"></div>
	<!-- Start of Header 
	============================================= -->
	<jsp:include page="top.jsp"/>
	<!-- End of Header 
	============================================= -->



	<!-- Start of Donate page content
	============================================= -->
	<section id="donate-page" class="donate-page-section">
		<div class="container">
			<div class="row section-content">
				<div class="donation-content">
					<div class="row">
						<div class="col-sm-12">
							<div class="donar-type">
								<div class="donar-info">
									<div class="side-bar-title mb40">
										<h3>User Info</h3>
									</div>
									<div class="donate-form">
										<div class="comment-form clearfix  mb20">
											<form id="contact_form" action="#" method="POST" enctype="multipart/form-data">
												<div class="contact-comment-info">
													<input class="id" name="id" type="text" placeholder="Your ID*">
												</div>
												<div class="contact-comment-info">
													<input class="password" name="password" type="text" placeholder="Your Password*">
												</div>
												<div class="contact-comment-info">
													<input class="password_check" name="password_check" type="text" placeholder="Your Password Check*">
												</div>
												<div class="contact-comment-info">
													<input class="name" name="name" type="text" placeholder="Your Name*">
												</div>
												<div class="contact-comment-info">
													<input class="email" name="email" type="email" placeholder="Email*">
												</div>
												<div class="contact-comment-info">
													<input class="phone" name="phone" type="text" placeholder="Your Phone*">
												</div>
												<div class="contact-comment-info">
													<input class="country" name="country" type="text" placeholder="Country*">
												</div>
												<div class="contact-comment-info">
													<input class="address_1" name="address_1" type="text" placeholder="Address 1*">
												</div>
												<div class="contact-comment-info">
													<input class="address_2" name="address_2" type="text" placeholder="Address 2*">
												</div>
												<div class="contact-comment-info">
													<input class="zip_code" name="zip_code" type="text" placeholder="Zip Code*">
												</div>
											</form>
										</div>

										<div class="donate-method">
											<div class="side-bar-title mb10">
												<h3>User Type</h3>
											</div>
											<div class="method-list mb20">
												<form>
													<input type="radio" name="user_type" value="Donor"> <label>Donor</label>
													<input type="radio" name="user_type" value="Beneficient"> <label>Beneficient</label>
												</form>
											</div>
											<div class="comment-form">
												<div class="send-button text-uppercase">
													<button type="submit" value="Submit">확인</button> 
												</div>
											</div>
										</div>
									</div>
									<!-- /col-sm-6 -->
								</div>
							</div>
							<!-- /donar-type -->
						</div>
						<!-- /col-sm-8 -->
					</div>
					<!-- /row -->
				</div>
			</div>
		</div>
	</section>
	<!-- End of  Dontae page content
	============================================= -->

	<!-- Start of footer section
	============================================= -->
	<jsp:include page="bottom.jsp"/>
	<!-- End of footer section
	============================================= -->


	<!-- js -->
	<script type="text/javascript" src="resources/assets/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/waypoints.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/jquery.counterup.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/parallax.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/wow.min.js"></script>
	<script type="text/javascript">new WOW().init();</script>
	<script type="text/javascript" src="resources/assets/js/circle-progress.js"></script>
	<!-- REVOLUTION JS FILES -->
	<script type="text/javascript" src="resources/rev-slider/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript" src="resources/rev-slider/js/jquery.themepunch.revolution.min.js"></script>

    <!-- SLIDER REVOLUTION 5.0 EXTENSIONS (Load Extensions only on Local File Systems !
    The following part can be removed on Server for On Demand Loading) -->

    <script type="text/javascript" src="resources/rev-slider/js/revolution.extension.actions.min.js"></script>
    
    <script type="text/javascript" src="resources/rev-slider/js/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="resources/rev-slider/js/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="resources/rev-slider/js/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="resources/rev-slider/js/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="resources/rev-slider/js/revolution.extension.video.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/function.js"></script>
</body> 
</html>