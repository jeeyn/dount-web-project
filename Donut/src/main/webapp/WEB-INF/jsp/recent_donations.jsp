<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
.postContent {
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient:vertical;
	overflow: hidden;
	text-overflow: ellipsis;
}
</style>

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
								<img src="resources/assets/img/${donation.album.cover}" alt="image">
							</div>
							<!-- /img -->

							<div class="cause-text pt40 pb50">
								<!-- /piechart -->
								<div class="gola-reach" style="margin-bottom: 10px;">
									<div class="gola-reach-list" style="height: 50px; padding: 0px 5px; text-align:center;">
										<p><b>
											<font color="#FFCC48">ARTIST : </font>
											<font color="black">${donation.album.artist}</font>
										</b></p>
										<p><b>
											<font color="#FFCC48">TITLE : </font>
											<font color="black">${donation.album.albumName}</font>
										</b></p>
									</div>
								</div>
								<!-- /gola-reach -->
								<div class="cause-text-head pt15 pb20" style="padding: 20px; height: 100px;">
									<h3 class="postContent">${donation.donationContent}</h3>
								</div>
								<!-- /cause-head -->
								<div class="donate-now-btn">
									<div class="donate-btn margin0 text-uppercase">
										<a href="<c:url value="donationItem.do">
													<c:param name="donationId" value="${donation.donationId}" />
												</c:url>">
												request now
										</a>
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