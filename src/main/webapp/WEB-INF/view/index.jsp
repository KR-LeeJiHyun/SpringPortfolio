<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>My Portfolio</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Flexslider  -->
<link rel="stylesheet" href="css/flexslider.css">
<!-- Flaticons  -->
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<!-- Theme style  -->
<link rel="stylesheet" href="css/style.css">
<!-- project css -->
<link rel="stylesheet" href="css/project.css">




<!-- Font Awesome -->
<script src="https://kit.fontawesome.com/9182b3b25b.js"
	crossorigin="anonymous"></script>

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->



</head>
<body>

	<div id="colorlib-page">
		<div class="container-wrap">
			<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar"><i></i></a>
			<aside id="colorlib-aside" role="complementary"
				class="border js-fullheight">
				<div class="text-center">
					<div class="author-img"
						style="background-image: url(images/about.jpg);"></div>
					<h1 id="colorlib-logo">
						<a href="index.html">${porfol.user.name}</a>
					</h1>
					<span class="position"><a href="#">${porfol.user.category}</a><br>
						in ${porfol.user.country}</span>
				</div>
				<nav id="colorlib-main-menu" role="navigation" class="navbar">
					<div id="navbar" class="collapse">
						<ul>
							<li class="active"><a href="#" data-nav-section="home">Home</a></li>
							<li><a href="#" data-nav-section="about">About</a></li>
							<li><a href="#" data-nav-section="skills">Skills</a></li>
							<li><a href="#" data-nav-section="education">Education</a></li>
							<li><a href="#" data-nav-section="experience">Experience</a></li>
							<li><a href="#" data-nav-section="awards&certificates">Awards&Certificates</a></li>
							<li><a href="#" data-nav-section="project">Project</a></li>
							<li><a href="#" data-nav-section="contact">Contact</a></li>
						</ul>
					</div>
				</nav>

				<div class="colorlib-footer">
					<p>
						<small>&copy; <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright <script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved.
						</small>
					</p>
					<ul>
						<li><a href="/favicon-16x16.png"><i class="icon"></i></a></li>
						<li><a href="${porfol.user.url}"><i
								class="fa-brands fa-github"></i></a></li>
					</ul>
				</div>

			</aside>

			<div id="colorlib-main">
				<section id="colorlib-hero" class="js-fullheight"
					data-section="home">
					<div class="flexslider js-fullheight">
						<ul class="slides">
							<li style="background-image: url(images/img_bg_1.png);">
								<div class="overlay"></div>
								<div class="container-fluid">
									<div class="row">
										<div
											class="col-md-6 col-md-offset-3 col-md-pull-3 col-sm-12 col-xs-12 js-fullheight slider-text">
											<div class="slider-text-inner js-fullheight">
												<div class="desc">
													<h1>
														안녕하세요! <br>${porfol.user.name}입니다.</h1>
													<h2>제 포트폴리오에 오신것을 환영합니다!</h2>
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li style="background-image: url(images/img_bg_2.jpg);">
								<div class="overlay"></div>
								<div class="container-fluid">
									<div class="row">
										<div
											class="col-md-6 col-md-offset-3 col-md-pull-3 col-sm-12 col-xs-12 js-fullheight slider-text">
											<div class="slider-text-inner">
												<div class="desc">
													<h1>
														Hello! <br>I'm ${porfol.user.e_name}.
													</h1>
													<h2>Welcome to my portfolio!</h2>
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</section>

				<section class="colorlib-about" data-section="about">
					<div class="colorlib-narrow-content">
						<div class="row">
							<div class="col-md-12">
								<div class="row row-bottom-padded-sm animate-box"
									data-animate-effect="fadeInLeft">
									<div class="col-md-12">
										<div class="about-desc">
											<span class="heading-meta">About Me</span>
											<h2 class="colorlib-heading">Who Am I?</h2>
											<p>
												<strong>안녕하세요! 코딩이 즐거운 개발자입니다.</strong>
											</p>
											<p>현재 백엔드 개발자를 희망하고 있으며 스프링을 학습하며 스프링을 활용한 1개의 프로젝트를 진행하고
												있습니다.</p>
											<p>이 곳을 통해서 제가 가진 기술 및 프로젝트를 소개하겠습니다!</p>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-3 animate-box"
										data-animate-effect="fadeInLeft">
										<div class="services color-1">
											<span class="icon2"><i class="icon-bulb"></i></span>
											<h3>Back-end</h3>
										</div>
									</div>
									<div class="col-md-3 animate-box"
										data-animate-effect="fadeInRight">
										<div class="services color-2">
											<span class="icon2"><i class="icon-globe-outline"></i></span>
											<h3>Blockchain</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section class="colorlib-skills" data-section="skills">
					<div class="colorlib-narrow-content">
						<div class="row">
							<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box"
								data-animate-effect="fadeInLeft">
								<span class="heading-meta">My Specialty</span>
								<h2 class="colorlib-heading animate-box">My Skills</h2>
							</div>
						</div>
						<div class="row">
							<c:forEach var="skills" items="${porfol.skill_list}"
								varStatus="status">
								<c:if test="${status.count % 2 == 1}">
									<div class="col-md-6 animate-box"
										data-animate-effect="fadeInLeft">
										<div class="progress-wrap">
											<h3>${skills.skill_name}</h3>
											<div class="progress">
												<div class="progress-bar color-${status.count}"
													role="progressbar" aria-valuenow="${skills.percent}"
													aria-valuemin="0" aria-valuemax="100"
													style="width:${skills.percent}%">
													<span>${skills.percent}%</span>
												</div>
											</div>
										</div>
									</div>
								</c:if>
								<c:if test="${status.count%2 == 0}">
									<div class="col-md-6 animate-box"
										data-animate-effect="fadeInRight">
										<div class="progress-wrap">
											<h3>${skills.skill_name}</h3>
											<div class="progress">
												<div class="progress-bar color-${status.count}"
													role="progressbar" aria-valuenow="${skills.percent}"
													aria-valuemin="0" aria-valuemax="100"
													style="width:${skills.percent}%">
													<span>${skills.percent}%</span>
												</div>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>
				</section>

				<section class="colorlib-list" data-section="education">
					<div class="colorlib-narrow-content">
						<div class="row">
							<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box"
								data-animate-effect="fadeInLeft">
								<span class="heading-meta">Education</span>
								<h2 class="colorlib-heading animate-box">Education</h2>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="timeline-centered">

									<c:forEach var="educations" items="${porfol.education_list}"
										varStatus="status">
										<article class="timeline-entry animate-box"
											data-animate-effect="fadeInLeft">
											<div class="timeline-entry-inner">

												<div class="timeline-icon color-${status.count}">
													<i class="icon-pen2"></i>
												</div>

												<div class="timeline-label">
													<h2>
														<a href="#">${educations.school_name}</a> <span><fmt:formatDate
																value="${educations.admission}" pattern="yyyy" />-<fmt:formatDate
																value="${educations.graduation}" pattern="yyyy" /></span>
													</h2>
													<p>${educations.content}</p>
												</div>
											</div>
										</article>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section class="colorlib-list" data-section="experience">
					<div class="colorlib-narrow-content">
						<div class="row">
							<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box"
								data-animate-effect="fadeInLeft">
								<span class="heading-meta">Experience</span>
								<h2 class="colorlib-heading animate-box">Experience</h2>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="timeline-centered">

									<c:forEach var="experiences" items="${porfol.experience_list}"
										varStatus="status">
										<article class="timeline-entry animate-box"
											data-animate-effect="fadeInLeft">
											<div class="timeline-entry-inner">

												<div class="timeline-icon color-${status.count}">
													<i class="icon-pen2"></i>
												</div>

												<div class="timeline-label">
													<h2>
														<a href="#">${experiences.experience_name}</a> <span><fmt:formatDate
																value="${experiences.join}" pattern="yyyy" />-<fmt:formatDate
																value="${experiences.leave}" pattern="yyyy" /></span>
													</h2>
													<p>${experiences.content}</p>
												</div>
											</div>
										</article>
									</c:forEach>

									<article class="timeline-entry begin animate-box"
										data-animate-effect="fadeInBottom">
										<div class="timeline-entry-inner">
											<div class="timeline-icon color-none"></div>
										</div>
									</article>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section class="colorlib-list" data-section="awards&certificates">
					<div class="colorlib-narrow-content">
						<div class="row">
							<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box"
								data-animate-effect="fadeInLeft">
								<span class="heading-meta">Awards&Certificates</span>
								<h2 class="colorlib-heading animate-box">Recent
									Awards&Certificates</h2>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="timeline-centered">

									<c:forEach var="awards" items="${porfol.award_list}"
										varStatus="status">
										<article class="timeline-entry animate-box"
											data-animate-effect="fadeInLeft">
											<div class="timeline-entry-inner">

												<div class="timeline-icon color-${status.count}">
													<i class="icon-pen2"></i>
												</div>

												<div class="timeline-label">
													<h2>
														<a href="#">${awards.award_name}</a> <span><fmt:formatDate
																value="${awards.award_date}" pattern="yyyy-MM-dd" /></span>
													</h2>
													<p>${awards.content}</p>
												</div>
											</div>
										</article>
									</c:forEach>

									<article class="timeline-entry begin animate-box"
										data-animate-effect="fadeInBottom">
										<div class="timeline-entry-inner">
											<div class="timeline-icon color-none"></div>
										</div>
									</article>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section class="colorlib-work" data-section="project">
					<div class="colorlib-narrow-content">
						<div class="row">
							<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box"
								data-animate-effect="fadeInLeft">
								<span class="heading-meta">My Project</span>
								<h2 class="colorlib-heading animate-box">Recent Project</h2>
							</div>
						</div>
						<div class="row row-bottom-padded-sm animate-box"
							data-animate-effect="fadeInLeft">
							<div class="col-md-12">
								<p class="work-menu">
									<span><a href="javascript:void(0);" id="all"
										class="active">All</a></span><span><a
										href="javascript:void(0);" id="blockchain">Blockchain</a></span> <span><a
										href="javascript:void(0);" id="backend">Backend</a></span>
								</p>
							</div>
						</div>

						<div class="row">
							<c:forEach var="summarys" items="${porfol.project_summary_list}"
								varStatus="status">
								<c:set var="animate" value="fadeInLeft"></c:set>
								<c:if test="${status.count % 2 == 1}">
									<c:set var="animate" value="fadeInRight"></c:set>
								</c:if>
								<div class="col-md-6 animate-box blockchain work"
									data-animate-effect="${animate}">
									<div class="project"
										style="background-image: url(images/project/${summarys.category}/${summarys.src_title}/${summarys.rep_image}.jpg);">
										<div class="desc">
											<div class="con">
												<h3>
													<a name="overlay-project"
														path="project/${summarys.category}/${summarys.src_title}"
														href="javascript:void(0)">${summarys.title}</a>
												</h3>
												<span>${summarys.introduce}</span>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<!-- <div class="col-md-6 animate-box blockchain work"
								data-animate-effect="fadeInLeft">
								<div class="project"
									style="background-image: url(images/procject/blockchain/blockchain_1/rep_img1.jpg);">
									<div class="desc">
										<div class="con">
											<h3>
												<a name="overlay-project"
													path="project/blockchain/SmartAdhesionCase.html"
													href="javascript:void(0)">Smart Adhesion Case</a>
											</h3>
											<span>1st</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 animate-box blockchain work"
								data-animate-effect="fadeInRight">
								<div class="project"
									style="background-image: url(images/procject/blockchain/blockchain_2/rep_img1.jpg);">
									<div class="desc">
										<div class="con">
											<h3>
												<a name="overlay-project"
													path="project/blockchain/BlockchainVote.html"
													href="javascript:void(0)">Blockchain Vote</a>
											</h3>
											<span>졸업작품 프로젝트</span>
										</div>
									</div>
								</div>
							</div> -->
						</div>
					</div>
				</section>

				<section class="colorlib-contact" data-section="contact">
					<div class="colorlib-narrow-content">
						<div class="row">
							<div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box"
								data-animate-effect="fadeInLeft">
								<span class="heading-meta">Get in Touch</span>
								<h2 class="colorlib-heading">Contact</h2>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5">
								<div class="colorlib-feature colorlib-feature-sm animate-box"
									data-animate-effect="fadeInLeft">
									<div class="colorlib-icon">
										<i class="icon-globe-outline"></i>
									</div>
									<div class="colorlib-text">
										<p>
											<a href="#">${porfol.user.email}</a>
										</p>
									</div>
								</div>

								<div class="colorlib-feature colorlib-feature-sm animate-box"
									data-animate-effect="fadeInLeft">
									<div class="colorlib-icon">
										<i class="icon-map"></i>
									</div>
									<div class="colorlib-text">
										<p>${porfol.user.address}</p>
									</div>
								</div>

								<div class="colorlib-feature colorlib-feature-sm animate-box"
									data-animate-effect="fadeInLeft">
									<div class="colorlib-icon">
										<i class="icon-phone"></i>
									</div>
									<div class="colorlib-text">
										<p>
											<a href="tel://">${porfol.user.phone}</a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-7 col-md-push-1">
								<div class="row">
									<div
										class="col-md-10 col-md-offset-1 col-md-pull-1 animate-box"
										data-animate-effect="fadeInRight">
										<form action="">
											<div class="form-group">
												<input type="text" class="form-control" placeholder="Name">
											</div>
											<div class="form-group">
												<input type="text" class="form-control" placeholder="Email">
											</div>
											<div class="form-group">
												<input type="text" class="form-control"
													placeholder="Subject">
											</div>
											<div class="form-group">
												<textarea name="" id="message" cols="30" rows="7"
													class="form-control" placeholder="Message"></textarea>
											</div>
											<div class="form-group">
												<input type="submit"
													class="btn btn-primary btn-send-message"
													value="Send Message">
											</div>
										</form>
									</div>

								</div>
							</div>
						</div>
					</div>
				</section>
				<section class="colorlib-contact"></section>

			</div>
			<!-- end:colorlib-main -->
		</div>
		<!-- end:container-wrap -->
	</div>
	<!-- end:colorlib-page -->

	<div class="project-overlay hidden"></div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	<!--Tab-->
	<script src="js/tab.js"></script>
	<!-- Overlay -->
	<script src="js/overlayload.js"></script>

	<!-- MAIN JS -->
	<script src="js/main.js"></script>

</body>
</html>

