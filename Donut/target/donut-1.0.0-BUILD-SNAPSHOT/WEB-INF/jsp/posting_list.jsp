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
	
	<style>
		th, td {
			text-align: center;
		}
	</style>
</head>
<!-- /end of head -->

<body>
	<div id="preloader"></div>
	<!-- Start of Header 
	============================================= -->
	<jsp:include page="top.jsp"/>
	<!-- End of Header 
	============================================= -->

	<section id="can-we-do" class="can-we-do-section">
		<div class="container">
			<div class="row section-content">
				<div class="section-title text-center" style="padding: 0px 0px 60px;">
					<div class="section-title-text text-uppercase">
						<p>작성 게시물 조회</p>
					</div>
					<div class="section-title-text">
						<h2>작성 게시물 조회</h2>
					</div>
					<div style="margin: 15px; float: right; font-size: 15px;">
						<a href="postingList.do">
							<c:choose>
								<c:when test="${userUrl == '/postingList.do'}">
									<b style="color: #FFCC48;">POST</b>
								</c:when>
								<c:otherwise><b>POST</b></c:otherwise>
							</c:choose>
						</a>
						<b>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;</b>
						<a href="commentList.do">
							<c:choose>
								<c:when test="${userUrl == '/commentList.do'}">
									<b style="color: #FFCC48;">COMMENT</b>
								</c:when>
								<c:otherwise><b>COMMENT</b></c:otherwise>
							</c:choose>
						</a>
					</div>
				</div>

				<!-- /section-title -->
				
				<div class="well">
				    <table class="table">
				    	<thead>
					        <tr>
					          <th>#</th>
					          <th>DATE</th>
					          <th>ALBUM TITLE</th>
					          <th>ARTIST</th>
					          <th>QUANTITY</th>
					          <th>MATCHING STATE</th>
					        </tr>
						</thead>
						<tbody>
							<c:if test="${(userType == 'D') && (userUrl == '/postingList.do')}">
								<c:forEach items="${userDonationList}" var="userDonation" varStatus="status">
							        <tr>
							          <td>${status.count}</td>
							          <td>${userDonation.donationDate}</td>
							          <td>${userDonation.album.albumName}</td>
							          <td>${userDonation.album.artist}</td>
							          <td>${userDonation.donationAlbumQuantity}</td>
							          <td>${userDonation.donationMatchingState}</td>
							        </tr>
								</c:forEach>
							</c:if>
							<c:if test="${(userType == 'D') and (userUrl == '/commentList.do')}">
								<c:forEach items="${userDonationRequestList}" var="userDonationRequest" varStatus="status">
							        <tr>
							          <td>${status.count}</td>
							          <td>${userDonationRequest.drDate}</td>
							          <td>${userDonationRequest.album.albumName}</td>
							          <td>${userDonationRequest.album.artist}</td>
							          <td>${userDonationRequest.drAlbumQuantity}</td>
							          <td>${userDonationRequest.drMatchingState}</td>
							        </tr>
								</c:forEach>
							</c:if>
							<c:if test="${(userType == 'B') and (userUrl == '/postingList.do')}">
								<c:forEach items="${userBenefitList}" var="userBenefit" varStatus="status">
							        <tr>
							          <td>${status.count}</td>
							          <td>${userBenefit.benefitDate}</td>
							          <td>${userBenefit.album.albumName}</td>
							          <td>${userBenefit.album.artist}</td>
							          <td>${userBenefit.benefitAlbumQuantity}</td>
							          <td>${userBenefit.benefitMatchingState}</td>
							        </tr>
								</c:forEach>
							</c:if>
							<c:if test="${(userType == 'B') and (userUrl == '/commentList.do')}">
								<c:forEach items="${userBenefitRequestList}" var="userBenefitRequest" varStatus="status">
							        <tr>
							          <td>${status.count}</td>
							          <td>${userBenefitRequest.brDate}</td>
							          <td>${userBenefitRequest.album.albumName}</td>
							          <td>${userBenefitRequest.album.artist}</td>
							          <td>${userBenefitRequest.brAlbumQuantity}</td>
							          <td>${userBenefitRequest.brMatchingState}</td>
							        </tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
				<div class="blog-pagination text-center">
					<ul class="pagination">
						<li><a href="#"><span class="ti-angle-double-left"></span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#"><span class="ti-angle-double-right"></span></a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>

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