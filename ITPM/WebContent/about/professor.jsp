<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
		<meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" name="viewport" />
		<meta content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공." name="description" />
		<link href="image/favicon.ico" rel="Shortcut Icon" />
		<title>교수소개 | IT정책경영학과</title>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="css/itpm.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			function getWidth() {
				if(self.innerWidth) {
					return self.innerWidth;
				}
				if(document.documentElement && document.documentElement.clientWidth) {
					return document.documentElement.clientWidth;
				}
				if(document.body) {
					return document.body.clientWidth;
				}
			}
			$(window).resize(function () {
				if(getWidth() >= '767') { //큰화면
					document.getElementById('side_menu').style.display = 'block';
					$('.content-div').css('padding-left', '250px');
				} else {
					document.getElementById('side_menu').style.display = 'none';
					$('.content-div').css('padding-left', '10px');
					$('.content-div').css('padding-right', '10px');
				}
			});
			$(document).ready(function () {
				if (getWidth() >= '767') { //큰화면
					document.getElementById('side_menu').style.display = 'block';
					$('.content-div').css('padding-left', '250px');
				} else {
					document.getElementById('side_menu').style.display = 'none';
					$('.content-div').css('padding-left', '10px');
					$('.content-div').css('padding-right', '10px');
				}
				$('#update').click(function() {
					if(confirm('교수 정보를 수정하시겠습니까?') == true) {
						$('#updateForm').submit();
					} else {
						return false;
					}
				});
			});
		</script>
		<style type="text/css">
		/* 작은 기기들 (태블릿, 768px 이상) */
		@media only screen and (max-width: 376px) {
			#prof_img {float: none;}
			#profTable {font-size: 9px;}
		}
		@media only screen and (min-width: 377px) and (max-width: 767px) {
			#prof_img {float: left;}
			#profTable {font-size: 9px;}
		}
		/* 중간 기기들 (데스크탑, 992px 이상) */
		@media only screen and (min-width: 768px) and (max-width: 1020px) {
			#prof_img {float: left;}
		}
		/* 큰 기기들 (큰 데스크탑, 1200px 이상) */
		@media only screen and (min-width: 1021px) {
			#prof_img {float: left;}
		}
		</style>
	</head>
	<body class="document" role="document">
		<form action="getProfessorDetail.do" method="post" id="goUpdate"></form>
		<c:import url="../import/header.jsp" />
		<div class="container" id="side_menu">
			<div class="redline"></div>
			<div class="menutitle">대학원소개</div>
			<div class="grayline"></div>
			<ul class="nav nav-pills nav-stacked">
				<li class="inactive"><a href="goItpm.do">학과소개</a></li>
				<li class="active1"><a href="getAllProfList.do">교수소개</a></li>
				<li class="inactive"><a href="goVision.do">교육비전</a></li>
				<li class="inactive"><a href="goMap.do">방문안내</a></li>
			</ul>
		</div>
		<div class="content-div">
			<div class="small-title">
				<p>
					<span><img alt="menu main title bar" src="image/menu_main_titlebar.png">교수소개</span>
					<span class="small-title-right">
						<small><a href="welcome.do">홈</a> > 대학원소개 > 교수소개</small>
					</span>
				</p>
			</div>
			<div class="content-board">
				<table class="bbs-list" style="width: 100%; border-collapse: inherit; border-top: solid 2px #b31b1b; border-spacing: 0; font-size: 15px;">
					<colgroup>
						<col width="30%">
						<col width="20%">
						<col width="50%">
					</colgroup>
					<c:forEach items="${requestScope.allProfList}" var="result">
						<tr align="center">
							<td rowspan="5">
								<c:choose>
									<c:when test="${result.photo eq '' || result.photo eq null}">
										<img class="prof-img prof_img" border="1" height="120px" width="90px" src="image/nophoto.png" style="vertical-align: middle;">
									</c:when>
									<c:otherwise>
										<img class="prof-img prof_img" border="1" width="120px" height="90px" src="image/prof/${result.photo}" style="vertical-align: middle;">
									</c:otherwise>
								</c:choose></td>
							<td style="text-align: center;">성명</td>
							<td style="text-align: left;">
								<c:choose>
									<c:when test="${loginSession.studentId eq 'itpm'}">
										<a href="getProfessorDetail.do?no=${result.no}">${result.nameKor}(${result.nameEng})</a>
									</c:when>
									<c:otherwise>
										<c:out value="${result.nameKor}" />(<c:out value="${result.nameEng}" />)
									</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${result.no eq '001'}">
										, 주임교수
									</c:when>
									<c:otherwise>
										&nbsp;
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
						<tr>
							<td style="text-align: center;">학력</td>
							<td style="text-align: left;"><c:out value="${result.education}" /></td>
						</tr>
						<tr>
							<td style="text-align: center;">연구실</td>
							<td style="text-align: left;"><c:out value="${result.office}" /></td>
						</tr>
						<tr>
							<td style="text-align: center;">이메일</td>
							<td style="text-align: left;"><c:out value="${result.email}" /></td>
						</tr>
						<tr style="border-bottom: solid 2px #a1a4a8;">
							<td style="text-align: center;">연구분야</td>
							<td style="text-align: left;"><c:out value="${result.about}" /></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<c:import url="../import/footer.jsp" />
	</body>
</html>