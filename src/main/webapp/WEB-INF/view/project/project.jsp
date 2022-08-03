<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h2>
	<strong>${project.title}</strong>
</h2>
<div class="project-box">
	<div class="project-img">
		<p class="controller">
			<!-- &lang: 왼쪽 방향 화살표 &rang: 오른쪽 방향 화살표 -->
			<span class="prev">&lang;</span>
		</p>
		<img class="animate-box" data-animate-effect="fadeInLeft"
			id="project-img" name="1" max="${project.img_cnt}" category="images/project/${project.category}/${project.src_title}/" src="images/project/${project.category}/${project.src_title}/${project.image}.jpg">
		<p class="controller">
			<!-- &lang: 왼쪽 방향 화살표 &rang: 오른쪽 방향 화살표 -->
			<span class="next">&rang;</span>
		</p>

	</div>
	<div class="project-discript animate-box"
		data-animate-effect="fadeInRight">

		<p>${project.content}</p>
		<br>
		<div class="project-footer">
			<strong>Share</strong> <a href="${project.url}"><i
				class="fa-brands fa-github"></i></a>
		</div>
	</div>
	<button onclick="closeOverlay()" class="x-btn">X</button>
</div>
<!-- slide -->
<script src="js/slider.js"></script>