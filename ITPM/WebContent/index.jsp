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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function getWidth() {
		   if (self.innerWidth) {
		      return self.innerWidth;
		   }
		   
		   if (document.documentElement && document.documentElement.clientWidth) {
		      return document.documentElement.clientWidth;
		   }
		   
		   if (document.body) {
		      return document.body.clientWidth;
		   }
		}
		$(window).resize(function(){
		   if(getWidth() <= '767') { //mobile
		      document.getElementById('whiteLogo').style.display = 'block';
		      document.getElementById('grayMenu').style.display = 'none';
		      $('.mob').css('display', 'block');
		      $('#navbar').css('max-height', '700px');
		   } else {
		      document.getElementById('whiteLogo').style.display = 'none';
		      document.getElementById('grayMenu').style.display = 'block';
		      $('.mob').css('display', 'none');
		      $('#navbar').css('max-height', '40px');
		   }
		});
		$(document).ready(function(){
		   if(getWidth() <= '767') {
		      document.getElementById('whiteLogo').style.display = 'block';
		      document.getElementById('grayMenu').style.display = 'none';
		      $('.mob').css('display', 'block');
		      $('#navbar').css('max-height', '700px');
		   } else {
		      document.getElementById('whiteLogo').style.display = 'none';
		      document.getElementById('grayMenu').style.display = 'block';
		      $('.mob').css('display', 'none');
		      $('#navbar').css('max-height', '40px');
		   }
		});
	</script>
	<style type="text/css">
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
		
		@media only screen and (min-width: 377px) and (max-width: 767px) { 
			#line{display:block;}
			#main_logo{display: none;}
	 		#text{margin-top: 300px;}
			#main_content{padding-top: 550px; text-align:center;}
			#main_img{display: none;}
			#main_img1{display: block;}
			#main_img2{display: none;}
			#main_img3{display: none;}
		}
		/* 중간 기기들 (데스크탑, 992px 이상) */
		@media only screen and (min-width: 768px) and (max-width: 1020px) {
			#line{display:none;}
			#main_logo{display: block;}
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
<body role="document">
	<nav id="redMenu" class="navbar navbar-inverse navbar-fixed-top" style="background-color: #b31b1b; border-style: none; letter-spacing: 2px;">
		<div class="container-header">
			<a id="whiteHome" class="navbar-brand" href="../index.jsp"><img id="whiteLogo" alt="white logo" src="image/main_logo.png" style="disply: none;"></a>
         	<div class="navbar-header">
	         	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	               <span class="sr-only">Toggle navigation</span>
	               <span class="icon-bar"></span>
	               <span class="icon-bar"></span>
	               <span class="icon-bar"></span>
	            </button>
         	</div>
		</div>
		<form action="logout.do" id="logoutForm" method="post" style="display: none;"></form>
		<div id="navbar" class="navbar-collapse collapse" style="overflow-y:hidden; overflow-x:hidden; background-color: #b31b1b;" >
            <ul class="nav navbar-nav" style="float: right; font-size: 11px;">
               <li style="line-height: 30px;"><a id="home" href="../index.jsp" style="color:#fff;">HOME</a></li>
               <c:choose>	
					<c:when test="${null eq loginSession}" >
		               <li><a id="login" href="login/login.jsp" style="color:#fff;">LOGIN</a></li>
					</c:when>
					<c:otherwise>
						<li><a id="logout" style="color:#fff;" href="javascript: return false;" onclick="document.getElementById('logoutForm').submit();">LOGOUT</a></li>
					</c:otherwise>
				</c:choose>
               <c:choose>
					<c:when test="${null eq loginSession}">
						<li class="mob" style="display: none;"><span id="mobGoLogin" style="color:#fff; font-size: 13px; cursor:pointer;" onclick="javascript:alert('로그인 후 이용하세요.'); return false;">원우수첩</span></li>
					</c:when>
					<c:otherwise>
						<form name="goNotebook" id="goNotebook" method="get" style="display: none;">
							<input type="hidden" id="studentId" name="studentId" value="${loginSession.studentId}">
						</form>
						<li class="mob" style="display: none;"><span id="mobNotebook" style="color:#fff; cursor:pointer; font-size: 13px;">원우수첩</span></li>
					</c:otherwise>
               </c:choose>
               <li id="hideUl1" class="mob" style="display: none;"><span style="color:#fff; font-size: 13px;">대학원소개</span><span class="caret" style="color: #fff;"></span>
                  <ul class="nav navbar-nav" style="display: none;">
                     <li><a id="mobAboutItpm" href="../about/itpm.jsp" style="color:#fff;">학과소개</a></li>
                     <li><a id="mobAboutProf" href="../about/prof.jsp" style="color:#fff;">교수소개</a></li>
                     <li><a id="mobAboutVi" href="../about/vision.jsp" style="color:#fff;">교육비전</a></li>
                     <li><a id="mobAboutMap" href="../about/map.jsp" style="color:#fff;">방문안내</a></li>
                  </ul>
               </li>
               <li id="hideUl2" class="mob" style="display: none;"><span style="color:#fff; font-size: 13px;">학사정보&nbsp;&nbsp;</span><span class="caret" style="color: #fff;"></span>
                  <ul class="nav navbar-nav" style="display: none;">
                     <li><a href="../academic/education.jsp" id="mobAcEdu" style="color:#fff;">개설과정</a></li>
                     <li><a href="../regulation/regulation.jsp" id="mobRegul" style="color:#fff;">규정</a></li>
                     <li><a href="../academic/calendar.jsp" id="mobAcCal" style="color:#fff;">학사일정</a></li>
                     <li><a href="../board/notice.jsp" id="mobBoardNotice" style="color:#fff;">공지사항</a></li>
                  </ul>
               </li>
               <li class="mob" style="display: none;"><span style="font-size: 13px;"><a href="http://grad.ssu.ac.kr/web/grad/enter_a" target="_blank" style="color:#fff;">입학정보</a></span></li>
               <li><a id="staff" href="../admin/insertStudent.jsp" onclick="alert('준비중입니다.'); return false;" style="color:#fff;">ADMIN</a></li>
           	</ul>
		</div>
	</nav><div id="space"><br/><br/></div>
	<div id="grayMenu" class="grayMenu col-lg-12">
		<div id="navbar" class="navbar-collapse collapse" style="font-size: 16px;">
			<ul class="nav navbar-nav dropdown" style="max-height:50px; padding: 0 0 0 0; float: inherit;" role="menu">
				<li style="padding-left: 1.5%; width: 25%;">
					<a style="padding:19px 15px 11px 15px; "href="#"><img style="display:inherit; margin:0 auto;" alt="대학원정보" src="image/menuimage_itpminfo.png"></a>
					<ul class="dropdown-sub list-group" style="width:94%">
						<li class="list-group-item" role="presentation"><a href="about/itpm.jsp">학과소개</a></li>
						<li class="list-group-item" role="presentation"><a href="about/prof.jsp">교수소개</a></li>
						<li class="list-group-item" role="presentation"><a href="about/vision.jsp">비전</a></li>
						<li class="list-group-item" role="presentation"><a href="about/map.jsp">방문안내</a></li>
					</ul>
				</li>
				<li style="padding-right: 1.5%; width: 25%;">
					<a style="padding:19px 15px 11px 15px; "href="#"><img style="display:inherit; margin:0 auto;" alt="학사정보" src="image/menuimage_schoolinfo.png"></a>
					<ul class="dropdown-sub list-group" style="width:94%">
						<li class="list-group-item" role="presentation"><a href="academic/education.jsp">개설과정</a></li>
						<li class="list-group-item" role="presentation"><a href="regulation/regulation.jsp">규정</a></li>
						<li class="list-group-item" role="presentation"><a href="academic/calendar.jsp">학사일정</a></li>
						<li class="list-group-item" role="presentation"><a href="board/notice.jsp">공지사항</a></li>
					</ul>
				</li>
				<li style="padding-left: 1.5%; width: 25%;"><a href="http://grad.ssu.ac.kr/web/grad/enter_a" style="padding:19px 15px 11px 15px;"><img style="display:inherit; margin:0 auto;"  alt="입학정보" src="image/menuimage_admission.png"></a></li>
				<c:choose>
					<c:when test="${null eq loginSession}">
						<li style="padding-right: 3%; width: 25%;"><a href="login/login.jsp"style="padding:19px 15px 11px 15px;"><img style="display:inherit; margin:0 auto;" alt="원우수첩" src="image/menuimage_notebook.png"></a></li>
					</c:when>
					<c:otherwise>
						<form name="goNotebook" id="goNoteBook" method="get" action="getAllMemberList.do" style="display: none;">
							<input type="hidden" id="studentId" name="studentId" value="${loginSession.studentId}"> 
						</form>
						<li style="padding-right: 3%; width: 25%;"><a href="javascript:document.getElementById('goNoteBook').submit();" style="padding:19px 15px 11px 15px;"><img style="display:inherit; margin:0 auto;" alt="원우수첩" src="image/menuimage_notebook.png"></a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
	<div class="main-img" style="vertical-align:top; width:100%; height:50%; ">
		<img id="main_img" src="image/350img.png" style="z-index:5; position:absolute; margin-top:0px; width:100%; height:160px;"/>	
		<img id="main_img1" src="image/767img.png" style="z-index:5; position:absolute; margin-top:0px; width:100%; height:550px;"/>
		<img id="main_img2" src="image/1020img.png" style="z-index:5; position:absolute; margin-top:0px; width:100%; height:550px;"/>
		<img id="main_img3" src="image/1920img.png" style="z-index:5; position:absolute; margin-top:0px; width:100%; height:550px;"/>		
	</div>
	<a href="#" style="position:absolute; float:left; z-index:6; margin-top:90px; margin-left:6%; left:0;"><img id="main_logo" class="main-logo" style="width:120%;" src="image/main_logo.png"/></a>
	<div id="text" class="text" style="margin-left:5%; margin-top:350px;">
		<p style="letter-spacing:1pt; font-size:20pt; margin-top:0%; margin-bottom:0%; font-style: bold;">&nbsp;&nbsp;&nbsp;IT정책경영학과</p>
		<p style="letter-spacing:0.5pt; font-size:17pt; margin-top:3%; margin-bottom:0%; font-style: bold;">&nbsp;&nbsp;&nbsp;Graduate School of</p>
		<p style="letter-spacing:0.5pt; font-size:17pt; margin-top:1%; margin-bottom:0%; font-style: bold;">&nbsp;&nbsp;&nbsp;Information Technology Policy and Management</p>
	</div>
	<div id="main_content" class="main-content" style="z-index:4; margin-bottom:250px; width:100%; height:auto;">
		<div id="main_notice" class="col-sm-4" style="background-color:white; padding-top:50px;">
			<div>
				<table style="margin-left: auto; margin-right: auto;">
					<colgroup>
						<col width="225px" style="padding-right:3%; color:black; white-space:nowrap;" />
						<col style="float:right; font-size:7pt;"/>
					</colgroup>
					<thead>
						<tr>
							<td style="font-size:12pt; padding-bottom:10px; color:#b31b1b;"><strong>공지사항</strong></td>
							<td><a href="board/notice.jsp" style="float:right; color:#00688f; padding-bottom:10px; text-decoration: none;">more</a></td>
						</tr>
					</thead>
					<tr>
						<td><a class="list" href="#" style="padding-right:3%; color:black; white-space:nowrap; text-decoration: none;">개인정보 변경 안내</a></td>
						<td class="date" style="float:right; font-size:7pt;">04.21</td>
					</tr>
					<!-- <tr>
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
					</tr> -->
				</table>
			</div>
		</div>
		<hr id="line" style="border: solid 1px gray; width:90%;"></hr>
		<div id="main_board" class="col-sm-4" style="background-color:white; padding-top:50px;">
			<div>
				<table style="margin-left: auto; margin-right: auto;">
					<colgroup>
						<col width="225px" style="padding-right:3%; color:black; white-space:nowrap;" />
						<col style="float:right; font-size:7pt;"/>
					</colgroup>
					<thead>
						<tr>
							<td style="font-size:12pt; padding-bottom:10px; color:#b31b1b;"><strong>학사일정</strong></td>
							<td><a href="board/notice.jsp" style="float:right; color:#00688f; padding-bottom:10px; text-decoration: none;">more</a></td>
						</tr>
					</thead>
					<tr>
						<td><a class="list" href="#" style="padding-right:3%; color:black; white-space:nowrap; text-decoration: none;">2017-1 학사 일정 안내</a></td>
						<td class="date" style="float:right; font-size:7pt;">04.21</td>
					</tr>
				</table>			
			</div>
		</div>
		<hr id="line" style="border: solid 1px gray; width:90%;"></hr>
		<div id="main_sched" class="col-sm-4" style="background-color:white; padding-top:30px; ">
			<div>
				<table style="margin-left: auto; margin-right: auto;">
					<tr>
						<td><img alt="contact us" src="image/contactus.png" style="width: 280px; height: inherit;"></td>
					</tr>
				</table>	
			</div>
		</div>
	</div>
	<div class="footer container-fluid bg-4 col-lg-12" style="padding: 0; margin: 0 auto !important; background-color: #313131;">
		<div class="footer_menu">
			<ul style="margin: 0; padding: 20px 0 0 20px; text-align: center; list-style: none; font-size: 14px; clear: both;">
				<li style="display: inline-block; float: left;"><a href="https://www.ssu.ac.kr/html/themes/kor/html/footer/privacy.html" target="_blank"><font color="#fff">개인정보처리방침</font></a></li>
				<li id="bullet" style="display: inline-block; float: left; margin: 0 0 0 10px; padding: 0 0 0 12px; background: url('image/bullet_foot_li.gif') no-repeat 0; list-style: none; list-style-type: noen;">
					<a href="https://www.ssu.ac.kr/html/themes/kor/html/footer/email.html" target="_blank"><font color="#fff">이메일무단수집거부</font></a>
				</li>
			</ul>
		</div>
		<address class="address" style="padding: 21px 0 0 20px; font-size: 12px; color: #adadad; font-style: normal; margin-bottom: 20px; line-height: 20px;">
			서울특별시 동작구 상도로369 숭실대학교 미래관101호 IT정책경영학과 사무실 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tel: 02-828-7361&nbsp;&nbsp;&nbsp;&nbsp;E-mail: yrbak@ssu.ac.kr
			<span class="copyright" style="display: block;">Copyright(c) 2017 Soongsil University. All rights reserved</span>
		</address>
	</div>
</body>
</html>