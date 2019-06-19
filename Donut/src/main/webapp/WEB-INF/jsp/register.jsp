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
										<h2>&nbsp;&nbsp;&nbsp;User Info</h2>
									</div>
									<div class="donate-form">
										<div class="comment-form clearfix  mb20">
											<form id="contact_form" action="register.do" method="POST">
												<div class="contact-comment-info">
													<input name="userId" type="text" placeholder="Your ID *">
												</div>
												<div class="contact-comment-info">
													<input name="password" type="password" placeholder="Your Password *">
												</div>
												<div class="contact-comment-info">
													<input name="passwordCheck" type="password" placeholder="Your Password Check *">
												</div>
												<div class="contact-comment-info">
													<input name="userName" type="text" placeholder="Your Name *">
												</div>
												<div class="contact-comment-info">
													<input name="email" type="email" placeholder="Email *">
												</div>
												<div class="contact-comment-info">
													<input name="phone" type="text" placeholder="Your Phone *">
												</div>
												<div class="contact-comment-info">
													<div class="donate-cause-item">
											            <select name="country" class="custom-select">
											                <option value="">Select Country *</option>
											                <option value="Afghanistan">Afghanistan</option>
											                <option value="Albania">Albania</option>
											                <option value="Algeria">Algeria</option>
											                <option value="American Samoa">American Samoa</option>
											                <option value="Andorra">Andorra</option>
											                <option value="Angola">Angola</option>
											                <option value="Anguilla">Anguilla</option>
											                <option value="Antartica">Antarctica</option>
											                <option value="Antigua and Barbuda">Antigua and Barbuda</option>
											                <option value="Argentina">Argentina</option>
											                <option value="Armenia">Armenia</option>
											                <option value="Aruba">Aruba</option>
											                <option value="Australia">Australia</option>
											                <option value="Austria">Austria</option>
											                <option value="Azerbaijan">Azerbaijan</option>
											                <option value="Bahamas">Bahamas</option>
											                <option value="Bahrain">Bahrain</option>
											                <option value="Bangladesh">Bangladesh</option>
											                <option value="Barbados">Barbados</option>
											                <option value="Belarus">Belarus</option>
											                <option value="Belgium">Belgium</option>
											                <option value="Belize">Belize</option>
											                <option value="Benin">Benin</option>
											                <option value="Bermuda">Bermuda</option>
											                <option value="Bhutan">Bhutan</option>
											                <option value="Bolivia">Bolivia</option>
											                <option value="Bosnia and Herzegowina">Bosnia and Herzegowina</option>
											                <option value="Botswana">Botswana</option>
											                <option value="Bouvet Island">Bouvet Island</option>
											                <option value="Brazil">Brazil</option>
											                <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
											                <option value="Brunei Darussalam">Brunei Darussalam</option>
											                <option value="Bulgaria">Bulgaria</option>
											                <option value="Burkina Faso">Burkina Faso</option>
											                <option value="Burundi">Burundi</option>
											                <option value="Cambodia">Cambodia</option>
											                <option value="Cameroon">Cameroon</option>
											                <option value="Canada">Canada</option>
											                <option value="Cape Verde">Cape Verde</option>
											                <option value="Cayman Islands">Cayman Islands</option>
											                <option value="Central African Republic">Central African Republic</option>
											                <option value="Chad">Chad</option>
											                <option value="Chile">Chile</option>
											                <option value="China">China</option>
											                <option value="Christmas Island">Christmas Island</option>
											                <option value="Cocos Islands">Cocos (Keeling) Islands</option>
											                <option value="Colombia">Colombia</option>
											                <option value="Comoros">Comoros</option>
											                <option value="Congo">Congo</option>
											                <option value="Congo">Congo, the Democratic Republic of the</option>
											                <option value="Cook Islands">Cook Islands</option>
											                <option value="Costa Rica">Costa Rica</option>
											                <option value="Cota D'Ivoire">Cote d'Ivoire</option>
											                <option value="Croatia">Croatia (Hrvatska)</option>
											                <option value="Cuba">Cuba</option>
											                <option value="Cyprus">Cyprus</option>
											                <option value="Czech Republic">Czech Republic</option>
											                <option value="Denmark">Denmark</option>
											                <option value="Djibouti">Djibouti</option>
											                <option value="Dominica">Dominica</option>
											                <option value="Dominican Republic">Dominican Republic</option>
											                <option value="East Timor">East Timor</option>
											                <option value="Ecuador">Ecuador</option>
											                <option value="Egypt">Egypt</option>
											                <option value="El Salvador">El Salvador</option>
											                <option value="Equatorial Guinea">Equatorial Guinea</option>
											                <option value="Eritrea">Eritrea</option>
											                <option value="Estonia">Estonia</option>
											                <option value="Ethiopia">Ethiopia</option>
											                <option value="Falkland Islands">Falkland Islands (Malvinas)</option>
											                <option value="Faroe Islands">Faroe Islands</option>
											                <option value="Fiji">Fiji</option>
											                <option value="Finland">Finland</option>
											                <option value="France">France</option>
											                <option value="France Metropolitan">France, Metropolitan</option>
											                <option value="French Guiana">French Guiana</option>
											                <option value="French Polynesia">French Polynesia</option>
											                <option value="French Southern Territories">French Southern Territories</option>
											                <option value="Gabon">Gabon</option>
											                <option value="Gambia">Gambia</option>
											                <option value="Georgia">Georgia</option>
											                <option value="Germany">Germany</option>
											                <option value="Ghana">Ghana</option>
											                <option value="Gibraltar">Gibraltar</option>
											                <option value="Greece">Greece</option>
											                <option value="Greenland">Greenland</option>
											                <option value="Grenada">Grenada</option>
											                <option value="Guadeloupe">Guadeloupe</option>
											                <option value="Guam">Guam</option>
											                <option value="Guatemala">Guatemala</option>
											                <option value="Guinea">Guinea</option>
											                <option value="Guinea-Bissau">Guinea-Bissau</option>
											                <option value="Guyana">Guyana</option>
											                <option value="Haiti">Haiti</option>
											                <option value="Heard and McDonald Islands">Heard and Mc Donald Islands</option>
											                <option value="Holy See">Holy See (Vatican City State)</option>
											                <option value="Honduras">Honduras</option>
											                <option value="Hong Kong">Hong Kong</option>
											                <option value="Hungary">Hungary</option>
											                <option value="Iceland">Iceland</option>
											                <option value="India">India</option>
											                <option value="Indonesia">Indonesia</option>
											                <option value="Iran">Iran (Islamic Republic of)</option>
											                <option value="Iraq">Iraq</option>
											                <option value="Ireland">Ireland</option>
											                <option value="Israel">Israel</option>
											                <option value="Italy">Italy</option>
											                <option value="Jamaica">Jamaica</option>
											                <option value="Japan">Japan</option>
											                <option value="Jordan">Jordan</option>
											                <option value="Kazakhstan">Kazakhstan</option>
											                <option value="Kenya">Kenya</option>
											                <option value="Kiribati">Kiribati</option>
											                <option value="Korea">Korea, Republic of</option>
											                <option value="Kuwait">Kuwait</option>
											                <option value="Kyrgyzstan">Kyrgyzstan</option>
											                <option value="Lao">Lao People's Democratic Republic</option>
											                <option value="Latvia">Latvia</option>
											                <option value="Lebanon">Lebanon</option>
											                <option value="Lesotho">Lesotho</option>
											                <option value="Liberia">Liberia</option>
											                <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
											                <option value="Liechtenstein">Liechtenstein</option>
											                <option value="Lithuania">Lithuania</option>
											                <option value="Luxembourg">Luxembourg</option>
											                <option value="Macau">Macau</option>
											                <option value="Macedonia">Macedonia, The Former Yugoslav Republic of</option>
											                <option value="Madagascar">Madagascar</option>
											                <option value="Malawi">Malawi</option>
											                <option value="Malaysia">Malaysia</option>
											                <option value="Maldives">Maldives</option>
											                <option value="Mali">Mali</option>
											                <option value="Malta">Malta</option>
											                <option value="Marshall Islands">Marshall Islands</option>
											                <option value="Martinique">Martinique</option>
											                <option value="Mauritania">Mauritania</option>
											                <option value="Mauritius">Mauritius</option>
											                <option value="Mayotte">Mayotte</option>
											                <option value="Mexico">Mexico</option>
											                <option value="Micronesia">Micronesia, Federated States of</option>
											                <option value="Moldova">Moldova, Republic of</option>
											                <option value="Monaco">Monaco</option>
											                <option value="Mongolia">Mongolia</option>
											                <option value="Montserrat">Montserrat</option>
											                <option value="Morocco">Morocco</option>
											                <option value="Mozambique">Mozambique</option>
											                <option value="Myanmar">Myanmar</option>
											                <option value="Namibia">Namibia</option>
											                <option value="Nauru">Nauru</option>
											                <option value="Nepal">Nepal</option>
											                <option value="Netherlands">Netherlands</option>
											                <option value="Netherlands Antilles">Netherlands Antilles</option>
											                <option value="New Caledonia">New Caledonia</option>
											                <option value="New Zealand">New Zealand</option>
											                <option value="Nicaragua">Nicaragua</option>
											                <option value="Niger">Niger</option>
											                <option value="Nigeria">Nigeria</option>
											                <option value="Niue">Niue</option>
											                <option value="Norfolk Island">Norfolk Island</option>
											                <option value="North Korea">North Korea</option>
											                <option value="Northern Mariana Islands">Northern Mariana Islands</option>
											                <option value="Norway">Norway</option>
											                <option value="Oman">Oman</option>
											                <option value="Pakistan">Pakistan</option>
											                <option value="Palau">Palau</option>
											                <option value="Panama">Panama</option>
											                <option value="Papua New Guinea">Papua New Guinea</option>
											                <option value="Paraguay">Paraguay</option>
											                <option value="Peru">Peru</option>
											                <option value="Philippines">Philippines</option>
											                <option value="Pitcairn">Pitcairn</option>
											                <option value="Poland">Poland</option>
											                <option value="Portugal">Portugal</option>
											                <option value="Puerto Rico">Puerto Rico</option>
											                <option value="Qatar">Qatar</option>
											                <option value="Reunion">Reunion</option>
											                <option value="Romania">Romania</option>
											                <option value="Russia">Russian Federation</option>
											                <option value="Rwanda">Rwanda</option>
											                <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option> 
											                <option value="Saint LUCIA">Saint LUCIA</option>
											                <option value="Saint Vincent">Saint Vincent and the Grenadines</option>
											                <option value="Samoa">Samoa</option>
											                <option value="San Marino">San Marino</option>
											                <option value="Sao Tome and Principe">Sao Tome and Principe</option> 
											                <option value="Saudi Arabia">Saudi Arabia</option>
											                <option value="Senegal">Senegal</option>
											                <option value="Seychelles">Seychelles</option>
											                <option value="Sierra">Sierra Leone</option>
											                <option value="Singapore">Singapore</option>
											                <option value="Slovakia">Slovakia (Slovak Republic)</option>
											                <option value="Slovenia">Slovenia</option>
											                <option value="Solomon Islands">Solomon Islands</option>
											                <option value="Somalia">Somalia</option>
											                <option value="South Africa">South Africa</option>
											                <option value="South Georgia">South Georgia and the South Sandwich Islands</option>
											                <option value="South Korea">South Korea</option>
											                <option value="South Sudan">South Sudan</option>
											                <option value="Span">Spain</option>
											                <option value="SriLanka">Sri Lanka</option>
											                <option value="St. Helena">St. Helena</option>
											                <option value="St. Pierre and Miguelon">St. Pierre and Miquelon</option>
											                <option value="Sudan">Sudan</option>
											                <option value="Suriname">Suriname</option>
											                <option value="Svalbard">Svalbard and Jan Mayen Islands</option>
											                <option value="Swaziland">Swaziland</option>
											                <option value="Sweden">Sweden</option>
											                <option value="Switzerland">Switzerland</option>
											                <option value="Syria">Syrian Arab Republic</option>
											                <option value="Taiwan">Taiwan, Province of China</option>
											                <option value="Tajikistan">Tajikistan</option>
											                <option value="Tanzania">Tanzania, United Republic of</option>
											                <option value="Thailand">Thailand</option>
											                <option value="Togo">Togo</option>
											                <option value="Tokelau">Tokelau</option>
											                <option value="Tonga">Tonga</option>
											                <option value="Trinidad and Tobago">Trinidad and Tobago</option>
											                <option value="Tunisia">Tunisia</option>
											                <option value="Turkey">Turkey</option>
											                <option value="Turkmenistan">Turkmenistan</option>
											                <option value="Turks and Caicos">Turks and Caicos Islands</option>
											                <option value="Tuvalu">Tuvalu</option>
											                <option value="Uganda">Uganda</option>
											                <option value="Ukraine">Ukraine</option>
											                <option value="United Arab Emirates">United Arab Emirates</option>
											                <option value="United Kingdom">United Kingdom</option>
											                <option value="United States">United States</option>
											                <option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option>
											                <option value="Uruguay">Uruguay</option>
											                <option value="Uzbekistan">Uzbekistan</option>
											                <option value="Vanuatu">Vanuatu</option>
											                <option value="Venezuela">Venezuela</option>
											                <option value="Vietnam">Viet Nam</option>
											                <option value="Virgin Islands (British)">Virgin Islands (British)</option>
											                <option value="Virgin Islands (U.S)">Virgin Islands (U.S.)</option>
											                <option value="Wallis and Futana Islands">Wallis and Futuna Islands</option>
											                <option value="Western Sahara">Western Sahara</option>
											                <option value="Yemen">Yemen</option>
											                <option value="Yugoslavia">Yugoslavia</option>
											                <option value="Zambia">Zambia</option>
											                <option value="Zimbabwe">Zimbabwe</option>
											            </select>
											        </div>
												</div><br>
												<div class="contact-comment-info">
													<input name="address1" type="text" placeholder="Address 1 *">
												</div>
												<div class="contact-comment-info">
													<input name="address2" type="text" placeholder="Address 2 *">
												</div>
												<div class="contact-comment-info">
													<input name="zipCode" type="text" placeholder="Zip Code *">
												</div>
												<div class="method-list mb20">
													<div style="float: left; width: 10%; font-size: 20px;">User Type</div>
													<input type="radio" id="id1" name="userType" value="D">
													<label for="id1">&nbsp;&nbsp;&nbsp;&nbsp;Donor</label>
													<input type="radio" id="id2" name="userType" value="B">
													<label for="id2">&nbsp;&nbsp;&nbsp;&nbsp;Beneficient</label>
												</div><br>
												<div class="send-button text-uppercase" style="float: right;">
													<button type="submit" value="Submit">확인</button> 
												</div>
											</form>
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