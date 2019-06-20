<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<title>Donut</title>
	<link rel="shortcut icon" href="resources/assets/img/icon.png">

	<meta name="description" content="Donut">
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
	<!-- login.css -->
	<link rel="stylesheet" type="text/css" href="resources/assets/css/login.css">
</head>
<body>
	<div id="preloader"></div>
	<header>
		<div class="menu-bar">
			<div class="container">
				<div class="row">
					<nav class="navbar">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<a class="navbar-brand" href="index.html"><img src="resources/assets/img/logo.png" alt="image"></a>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<br><br><br>
	<div class="login-form">
	    <form action="login.do" method="post">
			<div class="avatar">
				<a href="registerForm.do">
					<img src="resources/assets/img/donut.png" alt="donut">
				</a>
			</div>
	        <h2 class="text-center">Member Login</h2>   
	        <div class="form-group">
	        	<input type="text" class="form-control" name="userId" placeholder="Username" required="required">
	        </div>
			<div class="form-group">
	            <input type="password" class="form-control" name="password" placeholder="Password" required="required">
	        </div>        
	        <div class="form-group">
	            <button type="submit" class="btn btn-primary btn-lg btn-block">Sign in</button>
	            <c:if test="${msg == 'failure'}">
	            	<div style="color: red">아이디 또는 비밀번호가 일치하지 않습니다</div>
	            </c:if>
	        </div>
	    </form>
	    <p class="text-center small">Don't have an account? <a href="registerAccount.do">Sign up here!</a></p>
	</div>

	<!-- js -->
	<script type="text/javascript" src="resources/assets/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/waypoints.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/jquery.counterup.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/countdown.js"></script>
	<script type="text/javascript" src="resources/assets/js/parallax.min.js"></script>
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

    <script>
    	var tpj=jQuery;

    	var revapi2;
    	tpj(document).ready(function() {
    		if(tpj("#rev_slider_2_1").revolution == undefined){
    			revslider_showDoubleJqueryError("#rev_slider_2_1");
    		}else{
    			revapi2 = tpj("#rev_slider_2_1").show().revolution({
    				sliderType:"standard",
    				jsFileLocation:"js/",
    				sliderLayout:"fullscreen",
    				dottedOverlay:"none",
    				delay:9000,
    				navigation: {
    					keyboardNavigation:"off",
    					keyboard_direction: "horizontal",
    					mouseScrollNavigation:"off",
    					mouseScrollReverse:"default",
    					onHoverStop:"off",
    					arrows: {
    						style:"hades",
    						enable:true,
    						hide_onmobile:false,
    						hide_onleave:false,
    						tmp:'<div class="tp-arr-allwrapper">	<div class="tp-arr-imgholder"></div></div>',
    						left: {
    							h_align:"left",
    							v_align:"center",
    							h_offset:20,
    							v_offset:0
    						},
    						right: {
    							h_align:"right",
    							v_align:"center",
    							h_offset:20,
    							v_offset:0
    						}
    					}
    				},
    				visibilityLevels:[1240,1024,778,480],
    				gridwidth:1240,
    				gridheight:868,
    				lazyType:"none",
    				shadow:0,
    				spinner:"spinner0",
    				stopLoop:"off",
    				stopAfterLoops:-1,
    				stopAtSlide:-1,
    				shuffle:"off",
    				autoHeight:"off",
    				fullScreenAutoWidth:"off",
    				fullScreenAlignForce:"off",
    				fullScreenOffsetContainer: "",
    				fullScreenOffset: "",
    				disableProgressBar:"on",
    				hideThumbsOnMobile:"off",
    				hideSliderAtLimit:0,
    				hideCaptionAtLimit:0,
    				hideAllCaptionAtLilmit:0,
    				debugMode:false,
    				fallbacks: {
    					simplifyAll:"off",
    					nextSlideOnWindowFocus:"off",
    					disableFocusListener:false,
    				}
    			});
    		}
    	});	/*ready*/
    </script>
</body>
</html>