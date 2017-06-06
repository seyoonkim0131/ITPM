<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
		<link rel="Shortcut Icon" href="image/favicon.ico" />
		<title>개설과정 | IT정책경영학과</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/itpm.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(window).resize(function () {
				if (getWidth() >= '767') {
					document.getElementById('side_menu').style.display = 'block';
					$('.content-div').css('padding-left', '250px');
				} else {
					document.getElementById('side_menu').style.display = 'none';
					$('.content-div').css('padding-left', '10px');
					$('.content-div').css('padding-right', '10px');
				}
			});
			$(document).ready(function () {
				if (getWidth() >= '767') {
					document.getElementById('side_menu').style.display = 'block';
					$('.content-div').css('padding-left', '250px');
				} else {
					document.getElementById('side_menu').style.display = 'none';
					$('.content-div').css('padding-left', '10px');
					$('.content-div').css('padding-right', '10px');
				}
				$('#insert').click(function () {
					$('#goInsert').submit();
				});
			});
		</script>
	</head>
	<body>
		<form action="insertEducationPage.do" method="post" id="goInsert"></form>
		<c:import url="../import/header.jsp" />
		<div class="container" id="side_menu">
			<div class="redline"></div>
			<div class="menutitle">학사정보</div>
			<div class="grayline"></div>
			<ul class="nav nav-pills nav-stacked">
				<li class="active1"><a href="getAllEduList.do">개설과정</a></li>
				<li class="inactive" onclick="submenu()">
					<a href="#">규정</a>
					<ul id="hide">
						<li><a href="http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=23" target="_blank">학칙</a></li>
						<li><a href="http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=25" target="_blank">시행세칙</a></li>
						<li class="active"><a href="getRuleList.do">학과내규</a></li>
						<li><a href="http://grad.ssu.ac.kr/web/grad/paper_f" target="_blank">논문심사기준</a></li>
					</ul>
				</li>
				<li class="inactive"><a href="getAllScheduleList.do">학사일정</a></li>
				<li class="inactive"><a href="getNoticeList.do">공지사항</a></li>
			</ul>
		</div>
		<div class="content-div">
			<div class="small-title" >
				<p>
					<span><img alt="menu main title bar" src="image/menu_main_titlebar.png">개설과정</span>
					<span class="small-title-right"><small><a href="welcome.do">홈</a> > 학사정보 > 개설과정</small></span>
				</p>
			</div>
			<div class="content-board">
				<c:choose>
					<c:when test="${null ne loginSession && loginSession.auth eq 1}"> 
						<input type="button" id="insert" value="과목추가" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;"><br>
					</c:when>
					<c:otherwise>
						&nbsp;
					</c:otherwise>
				</c:choose><br>
				<p>
					<span class="sub-title-bar"><img class="title-bar" alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>공통과목<span class="sub-title-bar2"><img alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>
				</p>
				<div class="table_list">
					<ul>
						<c:forEach items="${requestScope.CommonEducationList}" var="result1">
							<li>
								<div class="subject">
									<a href="getEducationDetail.do?no=${result1.no}">${result1.nameKor}(${result1.nameEng})</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div><br>
				<p>
					<span class="sub-title-bar"><img class="title-bar" alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>IT경영전공<span class="sub-title-bar2"><img alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>
				</p>
				<div class="table_list">
					<ul>
						<c:forEach items="${requestScope.BizEducationList}" var="result2">
							<li>
								<div class="subject">
									<a href="getEducationDetail.do?no=${result2.no}">${result2.nameKor}(${result2.nameEng})</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
				<p>
					<span class="sub-title-bar"><img class="title-bar" alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>IT정책전공<span class="sub-title-bar2"><img alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>
				</p>
				<div class="table_list">
					<ul>
						<c:forEach items="${requestScope.PolicyEducationList}" var="result3">
							<li>
								<div class="subject">
									<a href="getEducationDetail.do?no=${result3.no}">${result3.nameKor}(${result3.nameEng})</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div><br>
				<p>
					<span class="sub-title-bar"><img class="title-bar" alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>IT금융전공<span class="sub-title-bar2"><img alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>
				</p>
				<div class="table_list">
					<ul>
						<c:forEach items="${requestScope.FinEducationList}" var="result4">
							<li>
								<div class="subject">
									<a href="getEducationDetail.do?no=${result4.no}">${result4.nameKor}(${result4.nameEng})</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div><br>
				<p>
					<span class="sub-title-bar"><img class="title-bar" alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>IT서비스전공<span class="sub-title-bar2"><img alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>
				</p>
				<div class="table_list">
					<ul>
						<c:forEach items="${requestScope.ServEducationList}" var="result5">
							<li>
								<div class="subject">
									<a href="getEducationDetail.do?no=${result5.no}">${result5.nameKor}(${result5.nameEng})</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div><br>
				<p>
					<span class="sub-title-bar"><img class="title-bar" alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>IT법령전공<span class="sub-title-bar2"><img alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>
				</p>
				<div class="table_list">
					<ul>
						<c:forEach items="${requestScope.LawEducationList}" var="result6">
							<li>
								<div class="subject">
									<a href="getEducationDetail.do?no=${result6.no}">${result6.nameKor}(${result6.nameEng})</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div><br>
				<p>
					<span class="sub-title-bar"><img class="title-bar" alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>IT보안전공<span class="sub-title-bar2"><img alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>
				</p>
				<div class="table_list">
					<ul>
						<c:forEach items="${requestScope.SecurEducationList}" var="result7">
							<a href="getEducationDetail.do?no=${result7.no}">${result7.nameKor}(${result7.nameEng})</a>
						</c:forEach>	
					</ul>
				</div><br>
				<p>
					<span class="sub-title-bar"><img class="title-bar" alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>IT행정전공<span class="sub-title-bar2"><img alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>
				</p>
				<div class="table_list">
					<ul>
						<c:forEach items="${requestScope.AdminEducationList}" var="result8">
							<li>
								<div class="subject">
									<a href="getEducationDetail.do?no=${result8.no}">${result8.nameKor}(${result8.nameEng})</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div><br>
				<p>
					<span class="sub-title-bar"><img class="title-bar" alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>IT국방전공<span class="sub-title-bar2"><img alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>
				</p>
				<div class="table_list">
					<ul>
						<c:forEach items="${requestScope.DefEducationList}" var="result9">
							<li>
								<div class="subject">
									<a href="getEducationDetail.do?no=${result9.no}">${result9.nameKor}(${result9.nameEng})</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div><br>
				<p>
					<span class="sub-title-bar"><img class="title-bar" alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>IT사업전공<span class="sub-title-bar2"><img alt="menu sub title bar" src="image/menu_sub_titlebar.png"></span>
				</p>
				<div class="table_list">
					<ul>
						<c:forEach items="${requestScope.EntpEducationList}" var="result10">
							<li>
								<div class="subject">
									<a href="getEducationDetail.do?no=${result10.no}">${result10.nameKor}(${result10.nameEng})</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<div style="width: 80%;">&nbsp;</div>
		<c:import url="../import/footer.jsp" />
	</body>
</html>