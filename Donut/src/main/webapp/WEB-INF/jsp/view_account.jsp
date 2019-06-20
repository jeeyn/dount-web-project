<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
										<h2>&nbsp;&nbsp;&nbsp;User Infomation</h2>
									</div>
									<div class="donate-form">
										<div class="comment-form clearfix  mb20">
											<div class="contact-comment-info">
												<div style="float: left; width: 10%; font-size: 25px; font-color: black;">User ID</div>
												<div style="float: left; font-size: 20px;">${account.userId}</div>
											</div>
											<div class="contact-comment-info">
												<div style="float: left; width: 10%; font-size: 20px;">User Name</div>
											</div>
											<div class="contact-comment-info">
												<div style="float: left; width: 10%; font-size: 20px;">Email</div>
											</div>
											<div class="contact-comment-info">
												<div style="float: left; width: 10%; font-size: 20px;">Phone</div>
											</div>
											<div class="contact-comment-info">
										        <div style="float: left; width: 10%; font-size: 20px;">Country</div>
											</div>
											<div class="contact-comment-info">
												<div style="float: left; width: 10%; font-size: 20px;">Address</div>
											</div>
											<div class="contact-comment-info">
												<div style="float: left; width: 10%; font-size: 20px;">Zip Code</div>
											</div>
											<div class="method-list mb20">
												<div style="float: left; width: 10%; font-size: 20px;">User Type</div>
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