<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공"/>
		<link rel="Shortcut Icon" href="image/favicon.ico" />
		<title>내정보 | IT정책경영학과</title>
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
					if(confirm('나의 정보를 수정하시겠습니까?') == true) {
						$('#updateForm').submit();
					} else {
						return false;
					}
				});
				$('#cancel').click(function() {
					if(confirm('취소하시겠습니까?') == true) {
						$('#cancelForm').submit();
					} else {
						return false;
					}
				});
			});
		</script>
		<style type="text/css">
			@media only screen and (max-width: 376px) { 
				.memberImg {width: 60px; height: 80px;}
				table.bbs-list thead th, table.bbs-list tbody td {font-size: 13px;}
			}
		</style>
	</head>
	<body class="document" role="document">
		<c:import url="../import/header.jsp"/>
		<div class="container" id="side_menu">
			<div class="redline"></div>
			<div class="menutitle">원우수첩</div>
			<div class="grayline"></div>
			<ul class="nav nav-pills nav-stacked">
				<li class="inactive"><a href="javascript:document.getElementById('cancelForm').submit();">원우수첩</a></li>
				<li class="active1"><a href="#">내 정보</a></li>
			</ul>
		</div>
		<div class="content-div">
			<div class="small-title">
				<p><span><img alt="menu main title bar" src="image/menu_main_titlebar.png">원우수첩</span>
					<span class="small-title-right"><small><a href="welcome.do">홈</a> > 원우수첩 > 내 정보</small></span>
				</p>
			</div>
			<div class="content-board">
				<form id="cancelForm" name="cancelForm" action="getAllMemberList.do" method="get" style="display: none;">
					 <input type="text" id="studentId" name="studentId" value="${loginSession.studentId}" />
				</form>
				<form id="updateForm" name="updateForm" method="post" action="updateMyInfo.do" enctype="multipart/form-data">
					<input type="hidden" id="photo" name="photo" value="${requestScope.myInfo.photo}" />
					<input type="hidden" id="id" name="id" value="${loginSession.studentId }"/>
					<table class="bbs-list" style="width: 100%; border-top: solid 2px #b31b1b; border-spacing: 0; font-size: 15px;">
						<colgroup>
							<col width="30%">
							<col width="20%">
							<col width="50%">
						</colgroup>
						<tr align="center">
							<td rowspan="5" style="padding-top: 3px;">
								<c:choose>
									<c:when test="${requestScope.myInfo.photo eq '' || requestScope.myInfo.photo eq null}">
										<img class="memberImg" border="1" height="120px" width="90px" src="image/nophoto.png" style="vertical-align: middle;">
									</c:when>
									<c:otherwise>
										<img class="memberImg" border="1" height="120px" width="90px" src="image/member/${requestScope.myInfo.photo}" style="vertical-align: middle;">
									</c:otherwise>
								</c:choose>
							</td>
							<td style="text-align:center">구분</td>
							<td style="text-align:left"><c:out value="${requestScope.myInfo.sGroup}"/><input type="hidden" id="group" name="group" value="<c:out value='${requestScope.myInfo.sGroup}'/>"/></td>
						</tr>
						<tr align="left">
							<td style="text-align:center">이름</td>
							<td style="text-align:left"><c:out value="${requestScope.myInfo.name}"/></td>
						</tr>
						<tr align="left">
							<td style="text-align:center">소속</td>
							<td style="text-align:left"><input type="text" class="form-control" id="job" name="job" value="${requestScope.myInfo.job}"/></td>
						</tr>
						<tr align="left">
							<td style="text-align:center">직급</td>
							<td style="text-align:left"><input type="text" class="form-control" id="jobPosition" name="jobPosition" value="${requestScope.myInfo.jobPosition}"/></td>
						</tr>
						<tr align="left">
							<td style="text-align:center">핸드폰</td>
							<td style="text-align:left; letter-spacing:-2px;"><input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="${requestScope.myInfo.phoneNumber}" placeholder="010-1234-5678형식으로 입력해주세요"/></td>
						</tr>
						<tr align="left" style="border-bottom: solid 2px #b31b1b;">
							<td><input type="file" class="form-control" id="photoFile" name="photoFile"></td>
							<td style="text-align:center; letter-spacing: -1px;">E-mail</td>
							<td style="text-align:left; letter-spacing:-1px;">
								<c:choose>
									<c:when test="${requestScope.myInfo.mailId eq null || requestScope.myInfo.mailId == ''}">
										<input type="text" class="form-control" id="mailId" name="mailId" value=""/>@<input type="text" class="form-control" id="mailDomain" name="mailDomain" value=""/>
									</c:when>
									<c:otherwise>
										<input type="text" class="form-control" id="mailId" name="mailId" value="${requestScope.myInfo.mailId}"/>@<input type="text" class="form-control" id="mailDomain" name="mailDomain" value="${requestScope.myInfo.mailDomain}"/>
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
					</table>
					<div class="button-list">
						<ul class="right" style="border-color: #fff; border-style: solid;">
							<li>
								<input type="button" id="update" value="저장" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;">
								<input type="button" id="cancel" value="취소" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;">
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