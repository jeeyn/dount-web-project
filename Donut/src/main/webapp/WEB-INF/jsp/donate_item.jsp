<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

	<!-- Start of blog details section  
	============================================= -->
	<section id="blog-details" class="blog-details-section pt60 pb80">
		<div class="container">
			<div class="row">
				<div class="blog-details-section-content">
					<div class="row">
						<div class="col-sm-12">
							<div class="blog-details-section-left-side" style="text-align:center;">
								<div class="blog-details-main-pic">
									<img src="resources/assets/img/${album.cover}" alt="image">
								</div>
								<br><br>
								<!-- /img -->
								<div class="blog-single-text  pb50">
									<div class="blog-head-title pt15 pb20">
										<h2 class="black"><a href="#">${album.albumName}</a></h2>
									</div>
									<!-- /head -->
									<div class="blog-recent-post-meta">
										<ul class="meta-list pb20 mb20">
											<li><span class="mr5 ti-pencil"></span>${donation.userId}&nbsp;&nbsp;</li>
											<li><span class="mr5 ti-timer"></span>${donation.donationDate}&nbsp;&nbsp;</li>
											<li><span class="mr5 ti-heart"></span>${donation.donationAlbumQuantity}장&nbsp;&nbsp;</li>
										</ul>
									</div>
									<!-- recent-post-meta -->
									<div class="blog-details-text">
										<p>${donation.donationContent}</p>
									</div>
								</div>
								<!-- / blog-single-text-->
							</div>
							
							<div class="container">
								<div class="row section-btn">
									<c:if test="${sessionScope.isWriter == 'me'}">
										<div class="col-sm-offset-10 col-sm-1">
											<div class="home-donate donate-btn-1 text-uppercase">
												<a href="<c:url value="updateDonationItemForm.do">
															<c:param name="donationId" value="${donation.donationId}"></c:param>
														 </c:url>">Update</a>
											</div>
										</div>
										
										<div class="col-sm-1">
											<div class="home-donate donate-btn-1 text-uppercase">
												<a href="<c:url value="deleteDonationItem.do">
															<c:param name="donationId" value="${donation.donationId}"></c:param>
														 </c:url>">Delete</a>
											</div>
										</div>
									</c:if>
								</div>
							</div>

							<div class="comment-area">
								<div class="reply-comment mb50">
									<div class="side-bar-title mb40">
										<h2>Commnents</h2>
									</div>
									<c:forEach items="${benefitRequestList}" var="benefitRequest">
										<div class="leave-comment-form pb50 clearfix" style="padding:30px;">
											<div class="comment-form">
												<form id="contact_form" action="matchDonation.do" method="POST">
													<div class="client-name-reply">
														<div class="name-reply-text">
															<div class="name-reply pb20">
																<span class="client-name"><a href="#">${benefitRequest.userId}</a></span><br>
																<span class="designation">${benefitRequest.brDate}</span><br>
																<span>QUANTITY : ${benefitRequest.brAlbumQuantity}</span>
															
																<div class="send-button text-uppercase pull-right">
																	<button type="submit" value="Submit">MATCH</button> 
																</div>
																<div class="reply-text">
																	<p>${benefitRequest.brContent}</p>
																</div>
															</div>
														</div>
													</div>
												</form>
											</div>
										</div>
									</c:forEach>
									<!-- /client-name-reply --> 
								</div>
								<!-- /reply-comment -->
								<div class="leave-comment">
									<div class="side-bar-title mb40">
										<h2>Leave a Comment</h2>
									</div>
									<div class="leave-comment-form pb50 clearfix" style="padding:30px;">
										<div class="comment-form">
											<form id="contact_form" action="requestBenefit.do" method="POST">
												<div class="leave-commen-info">
													<input name="donationId" type="hidden" value="${donation.donationId}">
												</div>
												<div class="leave-commen-info">
													<input name="brAlbumQuantity" type="number" placeholder="Album Quantity">
												</div>
												<div class="leave-commen-info mt25">
													<textarea name="brContent" placeholder="Message Here" rows="7" cols="30"></textarea>
												</div>
												<div class="send-button text-uppercase pull-right">
													<button type="submit" value="Submit">SEND REQUEST</button> 
												</div>
											</form>
										</div>
									</div>
								</div>
								<!-- /leave-comment -->
							</div>
						</div>
						<!-- /col-sm-12 -->
					</div>
					<!-- /row -->
				</div>
			</div>
		</div>
	</section>
	<!-- End of blog details section 
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