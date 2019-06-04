<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx">
<head>
	<meta charset="utf-8">
	<title>Donut</title>
	<link rel="shortcut icon" href="assets/img/icon.png">

	<!-- include libraries(jQuery, bootstrap) -->
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

	<!-- include summernote css/js-->
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

	<!-- include summernote-ko-KR -->
	<script src="lang/summernote-ko-KR.js"></script>

	<meta name="keywords" content="Premium HTML Template">

	<meta name="author" content="HTMLmate">

	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- css-include -->

	<!-- boorstrap -->
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
	<!-- themify-icon.css -->
	<link rel="stylesheet" type="text/css" href="assets/css/themify-icons.css">
	<!-- owl-carousel -->
	<link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.css">
	<!-- Video-min -->
	<link rel="stylesheet" type="text/css" href="assets/css/video.min.css">
	<!-- animate.css -->
	<link rel="stylesheet" type="text/css" href="assets/css/animate.css">
	<!-- REVOLUTION STYLE SHEETS -->
	<link rel="stylesheet" type="text/css" href="rev-slider/css/settings.css">
	<!-- REVOLUTION LAYERS STYLES -->
	<link rel="stylesheet" type="text/css" href="rev-slider/css/layers.css">
	<!-- REVOLUTION NAVIGATION STYLES -->
	<link rel="stylesheet" type="text/css" href="rev-slider/css/navigation.css">
	<!-- menu style -->
	<link rel="stylesheet" type="text/css" href="assets/css/menu.css">
	<!-- style -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<!-- responsive.css -->
	<link rel="stylesheet" type="text/css" href="assets/css/responsive.css">
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
	<section id="donates-page-content" class="donates-page-section">
		<div class="container">
			<div class="row section-content">
				<div class="section-title text-center">
					<div class="section-title-text text-uppercase">
						<p>Create</p>
					</div>
					<div class="section-title-text">
						<h2>Create</h2>
					</div>
				</div>
				<!-- /section-title -->

				<div class="contact-comment-form pb50 clearfix">
					<div class="comment-form">
						<form id="createForm" action="#" method="POST" enctype="multipart/form-data">
							<div class="contact-comment-info">
								<input class="albumName" name="albumName" type="text" placeholder="Album Name..">
							</div>
							<div class="contact-comment-info">
								<input class="albumQuantity" name="albumQuantity" type="email" placeholder="Album Quantity..">
							<textarea id="summernote" name="contents"></textarea>
							<div class="send-button text-uppercase text-center">
								<button type="submit" value="Create">CREATE</button> 
							</div>
						</form>
					</div>
				</div>

			    <script>
			      $('#summernote').summernote({
			        placeholder: 'Hello stand alone ui',
			        tabsize: 2,
			        height: 500
			      });
			    </script>
			</div>
		</div>
	</section>
	<!-- End of contact page section  
	============================================= -->

	<!-- Start of footer section
	============================================= -->
	<jsp:include page="bottom.jsp"/>
	<!-- End of footer section
	============================================= -->

	<!-- js -->
	<script type="text/javascript" src="assets/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="assets/js/waypoints.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery.counterup.min.js"></script>
	<script type="text/javascript" src="assets/js/wow.min.js"></script>
	<script type="text/javascript">new WOW().init();</script>
	<script type="text/javascript" src="assets/js/circle-progress.js"></script>
		<!-- REVOLUTION JS FILES -->
	<script type="text/javascript" src="rev-slider/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript" src="rev-slider/js/jquery.themepunch.revolution.min.js"></script>

    <!-- SLIDER REVOLUTION 5.0 EXTENSIONS (Load Extensions only on Local File Systems !
    The following part can be removed on Server for On Demand Loading) -->

    <script type="text/javascript" src="rev-slider/js/revolution.extension.actions.min.js"></script>
    
    <script type="text/javascript" src="rev-slider/js/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="rev-slider/js/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="rev-slider/js/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="rev-slider/js/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="rev-slider/js/revolution.extension.video.min.js"></script>
	<script type="text/javascript" src="assets/js/function.js"></script>
</body> 
</html>