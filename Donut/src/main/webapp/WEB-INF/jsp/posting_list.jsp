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

	<section id="can-we-do" class="can-we-do-section">
		<div class="container">
			<div class="row section-content">
				<div class="section-title text-center">
					<div class="section-title-text text-uppercase">
						<p>작성 게시물 조회</p>
					</div>
					<div class="section-title-text">
						<h2>작성 게시물 조회</h2>
					</div>
				</div>
				<!-- /section-title -->

				<div class="well">
				    <table class="table">
				      <thead>
				        <tr>
				          <th>#</th>
				          <th>Prenume</th>
				          <th>Nume</th>
				          <th>Utilizator</th>
				          <th>Rol</th>
				          <th style="width: 36px;"></th>
				        </tr>
				      </thead>
				      <tbody>
				        <tr>
				          <td>1</td>
				          <td>Mark</td>
				          <td>Tompson</td>
				          <td>the_mark7</td>
				          <td>Angajat</td>
				          <td>
				              <a href="#"><i class="icon-pencil"></i></a>
				              <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
				          </td>
				        </tr>
				        <tr>
				          <td>2</td>
				          <td>Ashley</td>
				          <td>Jacobs</td>
				          <td>ash11927</td>
				          <td>Angajat</td>
				          <td>
				              <a href="#"><i class="icon-pencil"></i></a>
				              <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
				          </td>
				        </tr>
				        <tr>
				          <td>3</td>
				          <td>Audrey</td>
				          <td>Ann</td>
				          <td>audann84</td>
				          <td>Angajat</td>
				          <td>
				              <a href="#"><i class="icon-pencil"></i></a>
				              <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
				          </td>
				        </tr>
				        <tr>
				          <td>4</td>
				          <td>John</td>
				          <td>Robinson</td>
				          <td>jr5527</td>
				          <td>Angajat</td>
				          <td>
				              <a href="#"><i class="icon-pencil"></i></a>
				              <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
				          </td>
				        </tr>
				        <tr>
				          <td>5</td>
				          <td>Aaron</td>
				          <td>Butler</td>
				          <td>aaron_butler</td>
				          <td>Angajat</td>
				          <td>
				              <a href="#"><i class="icon-pencil"></i></a>
				              <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
				          </td>
				        </tr>
				        <tr>
				          <td>6</td>
				          <td>Chris</td>
				          <td>Albert</td>
				          <td>cab79</td>
				          <td>Sef departament</td>
				          <td>
				              <a href="#"><i class="icon-pencil"></i></a>
				              <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
				          </td>
				        </tr>
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
				<div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				    <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				        <h3 id="myModalLabel">Delete Confirmation</h3>
				    </div>
				    <div class="modal-body">
				        <p class="error-text">Are you sure you want to delete the user?</p>
				    </div>
				    <div class="modal-footer">
				        <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
				        <button class="btn btn-danger" data-dismiss="modal">Delete</button>
				    </div>
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