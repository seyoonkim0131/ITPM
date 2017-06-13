<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공"/>
		<link rel="Shortcut Icon" href="image/favicon.ico" />
		<title>교수정보 | IT정책경영학과</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/itpm.css"/>
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
			
			$(document).ready(function() {
				if (getWidth() >= '767') {
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
			@media only screen and (max-width: 376px) { 
				.prof-img {width: 60px; height: 80px;}
				table.bbs-list thead th, table.bbs-list tbody td {font-size: 13px;}
			}
		</style>
	</head>
	<body class="document" role="document">
		<c:import url="../import/header.jsp"/>
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
				<p><span><img alt="menu main title bar" src="image/menu_main_titlebar.png">교수소개</span>
					<span class="small-title-right"><small><a href="welcome.do">홈</a> > 대학원소개 > 교수소개 > 교수정보</small></span>
				</p>
			</div>
			<div class="content-board">
				<form id="updateForm" name="updateForm" method="post" action="updateProfessor.do" enctype="multipart/form-data">
					<input type="hidden" id="no" name="no" value="${requestScope.updateProfessor.no}" />
					<input type="hidden" id="photo" name="photo" value="${requestScope.updateProfessor.photo}" />
					<table class="bbs-list" style="width: 100%; border-top: solid 2px #b31b1b; border-spacing: 0; font-size: 15px;">
						<colgroup>
							<col width="30%">
							<col width="20%">
							<col width="50%">
						</colgroup>
						<tr align="center">
							<td rowspan="7" style="padding-top: 3px;">
								<c:choose>
									<c:when test="${requestScope.updateProfessor.photo eq '' || requestScope.updateProfessor.photo eq null}">
										<img class="professorImg" border="1" height="120px" width="90px" src="image/nophoto.png" style="vertical-align: middle;">
									</c:when>
									<c:otherwise>
										<img class="professorImg" border="1" height="120px" width="90px" src="image/prof/${requestScope.updateProfessor.photo}" style="vertical-align: middle;">
									</c:otherwise>
								</c:choose>
							</td>
							<td style="text-align:center">교수번호</td>
							<td style="text-align:left">${requestScope.updateProfessor.no}</td>
						</tr>	
						<tr>	
							<td style="text-align:center">성명(한글)</td>
							<td style="text-align:left"><input type="text" name="nameKor" id="nameKor" class="form-control" value="${requestScope.updateProfessor.nameKor}"/></td>
						</tr>						
						<tr align="left">
							<td style="text-align:center">성명(영문)</td>
							<td style="text-align:left"><input type="text" name="nameEng" id="nameEng" class="form-control" value="${requestScope.updateProfessor.nameEng}"/></td>
						</tr>
						<tr align="left">
							<td style="text-align:center">학력</td>
							<td style="text-align:left"><input type="text" name="education" id="education" class="form-control" value="${requestScope.updateProfessor.education}"/></td>
						</tr>
						<tr align="left">
							<td style="text-align:center">연구실</td>
							<td style="text-align:left"><input type="text" name="office" id="office" class="form-control" value="${requestScope.updateProfessor.office}"/></td>
						</tr>
						<tr align="left">
							<td style="text-align:center">연구분야</td>
							<td style="text-align:left"><input type="text" name="about" id="about" class="form-control" value="${requestScope.updateProfessor.about}"/></td>
						</tr>
						<tr align="left">
							<td style="text-align:center">전화번호</td>
							<td style="text-align:left; letter-spacing:-2px;"><input type="text" name="phone" id="phone" class="form-control" value="${requestScope.updateProfssor.phone}" placeholder="02-1234-5678형식으로 입력해주세요"/></td>
						</tr>
						<tr align="left" style="border-bottom: solid 2px #b31b1b;">
							<td><input type="file" class="form-control" id="photoFile" name="photoFile"></td>
							<td style="text-align:center">E-mail</td>
							<td style="text-align:left"><input type="text" name="email" id="email" class="form-control" value="${requestScope.updateProfessor.email}"/></td>
						</tr>
					</table>
					<div class="button-list">
						<ul class="right" style="border-color: #fff; border-style: solid;">
							<li>
								<input type="button" id="update" value="저장" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;">
								<input type="button" id="cancel" value="취소" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;" onclick="javascript:location.href='getAllProfList.do'">
							</li>
						</ul>
					</div>
				</form>
			</div>
			<div style="width:10%;">&nbsp;</div>
		</div>
		<c:import url="../import/footer.jsp" />
	</body>
</html>