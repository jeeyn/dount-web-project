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

	<!-- Start of blog details section  
	============================================= -->
	<section id="blog-details" class="blog-details-section pt60  pb80">
		<div class="container">
			<div class="row">
				<div class="blog-details-section-content">
					<div class="row">
						<div class="col-sm-12">
							<div class="blog-details-section-left-side  pb80">
								<div class="blog-details-main-pic">
									<img src="resources/assets/img/blog-detail.jpg" alt="image">
								</div>
								<!-- /img -->
								<div class="blog-single-text  pb50">
									<div class="blog-head-title pt15 pb20">
										<h2 class="black"><a href="#">동방신기 1집 - Tri-Angle</a></h2>
									</div>
									<!-- /head -->
									<div class="blog-recent-post-meta">
										<ul class="meta-list pb20 mb20">
											<li><a href="<c:url value="updateDonationItem.do">
														 	<c:param name="donation" value="${donation}"/>
														 </c:url>"><span class="mr5 ti-pencil"></span>${donation.userId}</a></li>
											<li><span class="mr5 ti-timer"></span>${donation.donationDate}</li>
											<li class="pull-right"><span class="mr5 ti-comment-alt"></span>45</li>
											<li class="pull-right"><span class="mr5 ti-heart"></span>${donation.donationAlbumQuantity}</li>
										</ul>
									</div>
									<!-- recent-post-meta -->
									<div class="blog-details-text">
										<p>${donation.donationContent}</p>
									</div>
									<!-- /text -->
									<div class="blog-details-text pt15 pb10">
										<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium sunt in culpa qui officia deserunt.</p>
									</div>
									<!-- /text -->

									<div class="blog-details-text">
										<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.</p>
									</div>
									<!-- /text -->
								</div>
								<!-- / blog-single-text-->
							</div>

							<div class="comment-area">
								<div class="reply-comment mb50">
									<div class="side-bar-title mb40">
										<h2>Commnents  [12]</h2>
									</div>
									<div class="client-name-reply pb70">
										<div class="reply-pic pull-left mr25">
											<img src="resources/assets/img/reply-1.jpg" alt="image">
										</div>
										<div class="name-reply-text">
											<div class="name-reply pb20">
												<span class="client-name"><a href="#">Tamanna</a></span>
												<span class="designation">2day ago</span>
												<div class="comment-icon pull-right">
													<a href="#"><span class="ti-comments"></span></a>
												</div>
											</div>

											<div class="reply-text">
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit  :)</p>
											</div>
										</div>
									</div>
									<!-- /client-name-reply --> 
									<div class="reply-text-2">
										<div class="client-name-reply">
											<div class="reply-pic pull-left mr25">
												<img src="resources/assets/img/reply-2.jpg" alt="image">
											</div>
											<div class="name-reply-text">
												<div class="name-reply pb20">
													<span class="client-name"><a href="#">Saiful Islam</a></span>
													<span class="designation">2day ago</span>
													<div class="comment-icon pull-right">
														<a href="#"><span class="ti-comments"></span></a>
													</div>
												</div>

												<div class="reply-text">
													<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- /reply-comment -->
								<div class="leave-comment">
									<div class="side-bar-title mb40">
										<h2>Leave a Comment</h2>
									</div>
									<div class="leave-comment-form pb50 clearfix">
										<div class="comment-form">
											<form id="contact_form" action="#" method="POST" enctype="multipart/form-data">
												<div class="leave-commen-info">
													<input class="name" name="name" type="text" placeholder="Your Name..">
												</div>
												<div class="leave-commen-info">
													<input class="email" name="email" type="text" placeholder="Your Website..">
												</div>
												<div class="leave-commen-info">
													<div class="leave-commen-info">
														<input class="email" name="email" type="text" placeholder="Phone Number...">
													</div>
												</div>
												<div class="leave-commen-info mt25">
													<textarea id="message" name="message" placeholder="Message Here.. " rows="7" cols="30"></textarea>

												</div>
												<div class="send-button text-uppercase pull-right">
													<button type="submit" value="Submit">SEND MESSAGE</button> 
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