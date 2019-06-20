<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx">
<head>
	<meta charset="utf-8">
	<title>Donut</title>
	<link rel="shortcut icon" href="resources/assets/img/icon.png">

	<!-- include libraries(jQuery, bootstrap) -->
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

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

	<!-- Start of create page section 
	============================================= -->
	<div class="contact-form">
		<div class="contact-form-title">
			<div class="section-title text-center">
				<div class="section-title-text text-uppercase">
					<p>Create Donation</p>
				</div>
				<div class="section-title-text">
					<h2>Create Donation</h2>
				</div>
			</div>
		</div>
		<!-- / create-form-title-->
		<div class="container">
			<div class="contact-comment-form pb50 clearfix">
				<div class="comment-form">
					<form action="createDonationItem.do" method="POST">
						<div class="contact-comment-info col-xs-12 col-sm-6 col-md-6">
							<div class="donate-cause-item">
								<select id="albumId" name="albumId" class="albumId">
					                <option value="">Select Album *</option>
					                <option value="1">동방신기 - Tri-Angle</option>
					                <option value="2">아이유 - Palette</option>
					                <option value="3">WANNA ONE - 1X1=1(TO BE ONE)</option>
					                <option value="4">TWICE - YES or YES</option>
					                <option value="5">BLACKPINK - SQUARE ONE</option>
					                <option value="6">방탄소년단 - MAP OF THE SOUL : PERSONA</option>
					                <option value="7">레드벨벳 - The Red Summer</option>
					            </select>
					        </div>
					    </div>
						<div class="contact-comment-info col-xs-12 col-sm-6 col-md-6">
							<input name="donationAlbumQuantity" type="text" placeholder="Album Quantity...">
						</div>
						<div class="contact-comment-info mt25">
							<textarea name="donationContent" placeholder="Message Here..." rows="7" cols="30"></textarea>
						</div>
						<div class="send-button text-uppercase text-center">
							<button type="submit" value="Donate Now">Donate Now</button> 
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- / create-form-->

	<!-- End of contact page section  
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