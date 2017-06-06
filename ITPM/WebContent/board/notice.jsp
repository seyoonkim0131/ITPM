<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
		<link rel="Shortcut Icon" href="image/favicon.ico" />
		<title>공지사항 | IT정책경영학과</title>
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
		<form action="insertNoticePage.do" method="post" id="goInsert"></form>
		<c:import url="../import/header.jsp"/>
		<div class="container" id="side_menu">
			<div class="redline"></div>
			<div class="menutitle">학사정보</div>
			<div class="grayline"></div>
			<ul class="nav nav-pills nav-stacked">
				<li class="inactive"><a href="getAllEduList.do">개설과정</a></li>
				<li class="inactive" onclick="submenu()">
					<a href="#">규정</a>
					<ul id="hide">
						<li class="inactive"><a href="http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=23" target="_blank">학칙</a></li>
						<li class="inactive"><a href="http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=25" target="_blank">시행세칙</a></li>
						<li class="inactive"><a href="getRuleList.do">학과내규</a></li>
						<li class="inactive"><a href="http://grad.ssu.ac.kr/web/grad/paper_f" target="_blank">논문심사기준</a></li>
					</ul>
				</li>
				<li class="inactive"><a href="getAllScheduleList.do">학사일정</a></li>
				<li class="active1"><a href="getNoticeList.do">공지사항</a></li>
			</ul>
		</div>
		<div class="content-div">
		<div class="small-title">
			<p>
				<span><img alt="menu main title bar" src="image/menu_main_titlebar.png">공지사항</span>
				<span class="small-title-right">
					<small><a href="welcome.do">홈</a> > 학사정보 > 공지사항</small>
				</span>
			</p>
		</div>
		<div class="content-board">
			<div class="table_list">
				<ul>
					<c:forEach items="${requestScope.noticeList}" var="result">
						<li>
							<div class="top_area">
								<c:choose>
									<c:when test="${result.point eq 'Y'}">
			        					<div class="write_num"><img alt="중요공지" src="image/notice.png"></div>
				        			</c:when>
		    	    				<c:otherwise>&nbsp;</c:otherwise>
								</c:choose>
								<div class="num_area">
									<span class="table_date"><strong>${result.createDate}</strong></span>
									<span class="table_hit"><strong>${result.view}</strong></span>   <!-- view: xml에서 properties이름 -->
								</div>
							</div>
							<div class="subject">
								<a href="getNoticeDetail.do?no=${result.no}">${result.title}</a>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<c:choose>
				<c:when test="${null ne loginSession && loginSession.auth eq 1}">
					<div class="button-list">
						<ul class="right">
							<li>
								<input type="button" id="insert" value="글쓰기" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;">
							</li>
						</ul>
					</div>
				</c:when>
				<c:otherwise>&nbsp;</c:otherwise>
			</c:choose>
			<!-- <div class="pagination-centered">
			<div class="pagination">
			<a class="laquo" href="#">&laquo;</a>
			<a class="active" href="#">1</a>
			<a href="#">2</a>
			<a href="#">3</a>
			<a href="#">4</a>
			<a href="#">5</a>
			<a class="raquo" href="#">&raquo;</a>
			</div>
			</div> -->
			</div>
		</div>
		<c:import url="../import/footer.jsp"/>
	</body>
</html>