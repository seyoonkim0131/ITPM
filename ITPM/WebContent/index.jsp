<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
	<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
	<link rel="Shortcut Icon" href="image/favicon.ico" />
	<title>Home | IT정책경영학과</title>
	<link rel="StyleSheet" href="css/itpm.css" />
	<link rel="stylesheet" href="css/menu.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
	<style type="text/css">
	.navbar {min-height: 40px; font-size: 11px;}
	.navbar-inverse .navbar-nav>li>a {color: #fff;}
	
	/* 작은 기기들 (태블릿, 768px 이상) */
	@media only screen and (max-width: 376px) { 
		#line{display:block;}
		#main_logo{display: none;}
		#text{display: none;}
		#main_content{padding-top: 150px; text-align:center;}
		#main_img{display: block;}
		#main_img1{display: none;}
		#main_img2{display: none;}
		#main_img3{display: none;}
	}
	
	@media only screen and (min-width: 377px) and (max-width: 769px) { 
		#line{display:block;}
		#main_content{padding-top: 550px; text-align:center;}
		#main_img{display: none;}
		#main_img1{display: block;}
		#main_img2{display: none;}
		#main_img3{display: none;}
	}
	/* 중간 기기들 (데스크탑, 992px 이상) */
	@media only screen and (min-width: 770px) and (max-width: 1020px) {
		#line{display:none;}
		#main_content{padding-top: 550px;}
		#main_img{display: none;}
		#main_img1{display: none;}
		#main_img2{display: block;}
		#main_img3{display: none;}
	}
		
	/* 큰 기기들 (큰 데스크탑, 1200px 이상) */
	@media only screen and (min-width: 1021px){
		#line{display:none;}
		#main_content{padding-top: 550px;}
		#main_img{display: none;}
		#main_img1{display: none;}
		#main_img2{display: none;}
		#main_img3{display: block;}
	}
	
	</style>
</head>
<body role="document" style="overflow-x:hidden;">
	<c:import url="import/header.jsp" /><br>&nbsp;
	<div id="grayMenu" class="col-lg-12" style="z-index:100; background-color: #f7f7f7; border-style: solid; border-color: #ececec; border-left-style: none; border-right-style: none; border-width: 1px;">
				<div id="navbar" class="navbar-collapse collapse" style="font-size: 16px;">
					<ul class="nav navbar-nav dropdown" style="float: inherit;" role="menu">
						<li style="padding-left: 3%; padding-right: 3%; width: 25%;"><a href="#"><img alt="대학원정보" src="image/menuimage_itpminfo.png"></a>
							<ul class="dropdown-sub list-group">
								<li class="list-group-item" role="presentation"><a href="about/itpm.jsp">학과소개</a></li>
								<li class="list-group-item" role="presentation"><a href="about/prof.jsp">교수소개</a></li>
								<li class="list-group-item" role="presentation"><a href="about/vision.jsp">비전</a></li>
								<li class="list-group-item" role="presentation"><a href="about/map.jsp">방문안내</a></li>
							</ul>
						</li>
						<li style="padding-left: 3%; padding-right: 3%; width: 25%;"><a href="#"><img alt="학사정보" src="image/menuimage_schoolinfo.png"></a>
							<ul class="dropdown-sub list-group">
								<li class="list-group-item" role="presentation"><a href="academic/education.jsp">개설과정</a></li>
								<li class="list-group-item" role="presentation"><a href="regulation/regulation.jsp">규정</a></li>
								<li class="list-group-item" role="presentation"><a href="academic/calendar.jsp">학사일정</a></li>
								<li class="list-group-item" role="presentation"><a href="board/notice.jsp">공지사항</a></li>
							</ul>
						</li>
						<li style="padding-left: 3%; padding-right: 3%; width: 25%;"><a href="http://grad.ssu.ac.kr/web/grad/enter_a"><img alt="입학정보" src="image/menuimage_admission.png"></a></li>
						<li style="padding-left: 3%; width: 25%;"><a href="login/login.jsp"><img alt="원우수첩" src="image/menuimage_notebook.png"></a></li>
					</ul>
				</div>
			</div>
	<div class="main-img" style="vertical-align:top; width:100%; height:50%; ">
		<img id="main_img" src="image/350img.png" style="z-index:5; position:absolute; margin-top:0px; width:100%; height:160px;"/>	
		<img id="main_img1" src="image/767img.png" style="z-index:5; position:absolute; margin-top:0px; width:100%; height:550px;"/>
		<img id="main_img2" src="image/1020img.png" style="z-index:5; position:absolute; margin-top:0px; width:100%; height:550px;"/>
		<img id="main_img3" src="image/1920img.png" style="z-index:5; position:absolute; margin-top:0px; width:100%; height:550px;"/>		
		</div>
	<a href="#" style="position:absolute; float:left; z-index:6; margin-top:90px; margin-left:6%; left:0;">
	<img id="main_logo" class="main-logo" style="width:120%;" src="image/main_logo.png"/></a>
	<div id="text" class="text" style="margin-left:5%; margin-top:350px;">
		<p style="letter-spacing:1pt; font-size:20pt; margin-top:0%; margin-bottom:0%; font-style: bold;">&nbsp;&nbsp;&nbsp;IT정책경영학과</p>
		<p style="letter-spacing:0.5pt; font-size:17pt; margin-top:3%; margin-bottom:0%; font-style: bold;">&nbsp;&nbsp;&nbsp;Graduate School of</p>
		<p style="letter-spacing:0.5pt; font-size:17pt; margin-top:1%; margin-bottom:0%; font-style: bold;">&nbsp;&nbsp;&nbsp;Information Technology Policy and Management</p>
	</div>
	
	<div id="main_content" class="main-content" style="z-index:4; margin-bottom:250px; width:100%; height:auto;">
		<div id="main_notice" class="col-sm-4" style="background-color:white; padding-top:50px;">
			<div>
			<table style="margin-left: auto; margin-right: auto;">
				<tr>
					<td style="font-size:10pt; padding-bottom:10px; color:#b31b1b;">공지사항</td>
					<td><a href="#" style="float:right; color:#00688f; padding-bottom:10px; ">more</a></td>
				</tr>
				<tr>
					<td><a class="list" href="#" style="padding-right:3%; color:black; white-space:nowrap;">2016-2 학위 논문 심사비 납부 안내 및...</a></td>
					<td class="date" style="float:right; font-size:7pt;">10.07</td>
				</tr>
				<tr>
					<td><a class="list" href="#" style="padding-right:3%; color:black; white-space:nowrap;">2016-2 학위 논문 심사비 납부 안내 및...</a></td>
					<td class="date" style="color:black; float:right; font-size:7pt;">10.07</td>
				</tr>
				<tr>
					<td><a class="list" href="#" style="padding-right:3%; color:black; white-space:nowrap;">2016-2 학위 논문 심사비 납부 안내 및...</a></td>
					<td class="date" style="color:black; float:right; font-size:7pt;">10.07</td>
				</tr>
				<tr>
					<td><a class="list" href="#" style="padding-right:3%; color:black; white-space:nowrap;">2016-2 학위 논문 심사비 납부 안내 및...</a></td>
					<td class="date" style="color:black; float:right; font-size:7pt;">10.07</td>
				</tr>
				<tr>
					<td><a class="list" href="#" style="padding-right:3%; color:black; white-space:nowrap;">2016-2 학위 논문 심사비 납부 안내 및...</a></td>
					<td class="date" style="color:black; float:right; font-size:7pt;">10.07</td>
				</tr>
				<tr>
					<td><a class="list" href="#" style="padding-right:3%; color:black; white-space:nowrap;">2016-2 학위 논문 심사비 납부 안내 및...</a></td>
					<td class="date" style="color:black; float:right; font-size:7pt;">10.07</td>
				</tr>
			</table>
			</div>
		</div>
		<hr id="line" style="border: solid 1px gray; width:90%;"></hr>
		<div id="main_board" class="col-sm-4" style="background-color:white; padding-top:50px;">
			<div>
			<table style="margin-left: auto; margin-right: auto;">
				<tr>
					<td style="font-size:10pt; padding-bottom:10px; color:#b31b1b;">일정</td>
					<td><a href="#" style="float:right; padding-bottom:10px; color:#00688f;">more</a></td>
				</tr>
				<tr>
					<td><a class="list" href="#" style="white-space:nowrap;">2016-2 학위 논문 심사비 납부 안내 및...</a></td>
					<td class="date" style="float:right; font-size:7pt;">10.07</td>
				</tr>
				<tr>
					<td><a class="list" href="#">2016-2 학위 논문 심사비 납부 안내 및...</a></td>
					<td class="date" style="float:right; font-size:7pt;">10.07</td>
				</tr>
				<tr>
					<td><a class="list" href="#">2016-2 학위 논문 심사비 납부 안내 및...</a></td>
					<td class="date" style="float:right; font-size:7pt;">10.07</td>
				</tr>
				<tr>
					<td><a class="list" href="#">2016-2 학위 논문 심사비 납부 안내 및...</a></td>
					<td class="date" style="float:right; font-size:7pt;">10.07</td>
				</tr>
				<tr>
					<td><a class="list" href="#">2016-2 학위 논문 심사비 납부 안내 및...</a></td>
					<td class="date" style="float:right; font-size:7pt;">10.07</td>
				</tr>
				<tr>
					<td><a class="list" href="#">2016-2 학위 논문 심사비 납부 안내 및...</a></td>
					<td class="date" style="float:right; font-size:7pt;">10.07</td>
				</tr>
			</table>			
			</div>
		</div>
		<hr id="line" style="border: solid 1px gray; width:90%;"></hr>
		<div id="main_sched" class="col-sm-4" style="background-color:white; padding-top:50px; ">
			<div>
				<table style="margin-left: auto; margin-right: auto;">
					<tr>
						<td><img alt="contact us" src="image/contactus.png" style="width: 280px; height: inherit;"></td>
					</tr>
				</table>	
			</div>
		</div>
	</div>
	<c:import url="import/footer.jsp"/>
</body>
</html>