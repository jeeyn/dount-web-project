<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

	<!-- Start of Update Donation Section
	============================================= -->
	<div class="contact-form">
		<div class="contact-form-title">
			<div class="section-title text-center">
				<div class="section-title-text text-uppercase">
					<p>Update Donation</p>
				</div>
				<div class="section-title-text">
					<h2>Update Donation</h2>
				</div>
			</div>
		</div>
		<!-- Update Donation Title
		============================================= -->
		<div class="container">
			<div class="contact-comment-form pb50 clearfix">
				<div class="comment-form">
					<form action="updateDonationItem.do" method="POST">
						<div class="contact-comment-info col-xs-12 col-sm-6 col-md-6">
							<input name="donationId" type="hidden" value="${donation.donationId}">
						</div>
						<div class="contact-comment-info col-xs-12 col-sm-6 col-md-6">
							<input name="userId" type="hidden" value="${account.userId}">
						</div>
						<div class="contact-comment-info col-xs-12 col-sm-6 col-md-6">
							<input name="donationDate" type="hidden" value="${donation.donationDate}">
						</div>
						<div class="contact-comment-info col-xs-12 col-sm-6 col-md-6">
							<input name="donationMatchingState" type="hidden" value="${donation.donationMatchingState}">
						</div>
						<div class="contact-comment-info col-xs-12 col-sm-6 col-md-6">
							<div class="donate-cause-item">
								<select name="albumId" class="custom-select">
					                <option value="">Select Album *</option>
					                <c:forEach items="${albumList}" var="album">
						                <option value="${album.albumId}">${album.artist} - ${album.albumName}</option>
						            </c:forEach>
					            </select>
					        </div>
					    </div>
						<div class="contact-comment-info col-xs-12 col-sm-6 col-md-6">
							<input name="donationAlbumQuantity" type="number" value="${donation.donationAlbumQuantity}">
						</div>
						<div class="contact-comment-info mt25">
							<textarea name="donationContent" rows="7" cols="30">${donation.donationContent}</textarea>
						</div>
						<div class="send-button text-uppercase text-center">
							<button type="submit" value="Update">Update</button> 
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- End of Update Donation Section  
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