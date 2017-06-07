<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공." />
		<link rel="Shortcut Icon" href="image/favicon.ico" />
		<title>교수소개 | IT정책경영학과</title>
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
				$('#update').click(function () {
					$('#goUpdate').submit();
				});
				$('#delete').click(function () {
					if(confirm("삭제하시겠습니까?") == true) {
						$('#goDelete').submit();
					}else{
						return false;
					}
				});
			});
		</script>
	</head>
	<body>
		<form action="updateProfessorPage.do" method="post" id="goUpdate">
			<input type="hidden" name="no" id="no" value="${requestScope.professorDetail.no}" />
		</form>
		<form action="deleteProfessor.do" method="get" id="goDelete">
			<input type="hidden" name="no" id="no" value="${requestScope.professorDetail.no}" />
		</form>
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
					<span class="small-title-right"><small><a href="welcome.do">홈</a> > 대학원소개 > 교수소개 > 교수정보</small></span>
				</p>
			</div>
			<div class="content">
				<div class="list">
					<div class="table_list">
						<table class="table">
							<colgroup>
								<col width="30%">
								<col width="70%">
							</colgroup>
							<tr>
								<td>교수번호</td>
								<td>${requestScope.professorDetail.no}</td>
							</tr>
							<tr>
								<td>성명(한글)</td>
								<td>${requestScope.professorDetail.nameKor}</td>
							</tr>
							<tr>
								<td>성명(영문)</td>
								<td>${requestScope.professorDetail.nameEng}</td>
							</tr>
							<tr>
								<td>학력</td>
								<td>${requestScope.professorDetail.education}</td>
							</tr>
							<tr>
								<td>연구실</td>
								<td>${requestScope.professorDetail.office}</td>
							</tr>
							<tr>
								<td>이메일</td>
								<td>${requestScope.professorDetail.email}</td>
							</tr>
							<tr>
								<td>연구분야</td>
								<td>${requestScope.professorDetail.about}</td>
							</tr>
							<c:choose>
								<c:when test="${null ne loginSession}">
									<tr>
										<td colspan="2">
											<input type="button" value="수정" id="update" class="pull-right" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap; margin-top: 10px; margin-right: 20px;" />
											<input type="button" value="목록" class="pull-right" onclick="javascript:location.href='getAllProfList.do'" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap; margin-top: 10px; margin-right: 20px;" />
											<input type="button" value="삭제" id="delete" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap; margin-top: 10px; margin-right: 20px;">
										</td>
									</tr>
								</c:when>
								<c:otherwise>
									<input type="button" value="목록" class="pull-right" onclick="javascript:location.href='getAllProfList.do'" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap; margin-top: 10px; margin-right: 20px;" />
								</c:otherwise>
							</c:choose>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div style="width: 80%;">&nbsp;</div>
		<c:import url="../import/footer.jsp" />
	</body>
</html>