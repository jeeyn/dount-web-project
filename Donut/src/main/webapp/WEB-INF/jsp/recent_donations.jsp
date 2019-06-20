<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section id="recent-causes" class="recent-causes-section">
		<div class="container">
			<div class="row section-content">
				<div class="section-title text-center">
					<div class="section-title-text text-uppercase">
						<p>YOU MIGHT INTEREST</p>
					</div>
					<div class="section-title-text">
						<h2>Recent Donations</h2>
					</div>
				</div>
				<!-- /section-title -->
				
				
				<div class="recent-causes-content">
					<c:forEach items="${donationList}" var="donation">
						<div class="cause-item">
							<div class="recent-causes-pic-text">
								<div class="recent-causes-pic" style="text-align:center;">
									<img src="resources/assets/img/${donation.temp}" alt="image">
								</div>
								<!-- /img -->
	
								<div class="cause-text pt75 pb50">
									<!-- /piechart -->
									<div class="gola-reach">
										<ul class="gola-reach-list">
											<li class="yellow">Artist : <span class="black">동방신기</span></li>
											<li class="yellow">Title : <span class="black">미니앨범 1집 : Another</span></li>
										</ul>
									</div>
									<!-- /gola-reach -->
									<div class="cause-text-head pt15 pb20">
										<h3><a href="#">${donation.donationContent}</a> </h3>
									</div>
									<!-- /cause-head -->
									<div class="donate-now-btn">
										<div class="donate-btn margin0 text-uppercase">
											<a href="<c:url value="donationItem.do">
															<c:param name="donationId" value="${donation.donationId}"></c:param>
														 </c:url>">request now</a>
										</div>
									</div>
									<!-- /donate-now-btn -->
								</div>
							</div><!--/recent-causes-pic-text -->
						</div>
						<!-- /cause-item -->
					</c:forEach>
				</div>
			</div><!-- /row -->
		</div><!-- /container -->
	</section>