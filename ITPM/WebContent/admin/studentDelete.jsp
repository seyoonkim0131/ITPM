<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공." />
<link rel="Shortcut Icon" href="image/favicon.ico" />
<title>원우 삭제 | IT정책경영학과</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="css/itpm.css" rel="stylesheet" />
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
			function checkFileType(filePath) {
				var fileFormat = filePath.split(".");
				if(fileFormat.indexOf("xlsx") > -1) {
					return true;
				} else {
					return false;
				}
			}
			$(window).resize(function() {
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
				$('#search').click(function() {
					if($('#searchId').val() == "" || $('#searchId').val() == null) {
						alert('검색할 학번을 입력하세요.');
						$('#searchId').focus();
						return false;
					}
					//$('#excelUploadForm').submit();
					$.ajax({
						url: "getMemberById.do",
						method: "GET",
						contentType: "application/json",
						data: "studentId="+document.getElementById("searchId").value,
						dataType: "json",
						success: function(data) {
							alert(data);
							//var html = '';
							//html += '<input type="text" id="deleteId" name="deleteId" value="'+data.studentId+'"/>';
							//$('#test').after(html);
							
						},
						error: function() {
							alert("실패");
						}
					});
				});
			});
		</script>
</head>
<body class="document" role="document">
	<c:import url="../import/header.jsp" />
	<div class="container" id="side_menu">
		<div class="redline"></div>
		<div class="menutitle">관리자 메뉴</div>
		<div class="grayline"></div>
		<ul class="nav nav-pills nav-stacked">
			<li class="inactive"><a href="goInsertStudent.do">신입생 등록</a></li>
			<li class="active1"><a href="goDeleteStudent.do">원우 삭제</a></li>
		</ul>
	</div>
	<div class="content-div">
		<div class="small-title">
			<p>
				<span><img alt="menu main title bar" src="image/menu_main_titlebar.png">원우 삭제</span>
				<span class="small-title-left"><small><a href="welcome.do">홈</a> > 관리자 메뉴 > 원우 삭제</small></span>
			</p>
		</div>
		<div class="content-board">
			<form id="deleteForm" name="deleteForm" method="post" action="deleteStudent.do">
				<table class="bbs-list" style="width: 100%; border-top: solid 2px #b31b1b; border-spacing: 0; font-size: 15px;">
					<tr>
						<th style="text-align: center;">학번</th>
						<td><input type="text" class="form-control" id="searchId" name="searchId" /></td>
						<td><input type="button" id="search" value="검색" style="display: inline-block; float: center; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;">
						</td>
					</tr>
				</table>
			</form>
			<div id="test"></div>
			<table class="bbs-list" style="width: 100%; border-top: solid 2px #b31b1b; border-spacing: 0; font-size: 15px;">
				<colgroup>
					<col width="30%">
					<col width="20%">
					<col width="50%">
				</colgroup>
				<tr align="center">
					<td rowspan="6" style="padding-top: 3px;">
						<c:choose>
							<c:when test="${result.photo eq '' || result.photo eq null}">
								<img class="memberImg" border="1" height="120px" width="90px" src="image/nophoto.png" style="vertical-align: middle;">
							</c:when>
							<c:otherwise>
								<img class="memberImg" border="1" height="120px" width="90px" src="image/member/${result.photo}" style="vertical-align: middle;">
							</c:otherwise>
						</c:choose></td>
					<td style="text-align: center">구분</td>
					<td style="text-align: left"><c:out value="${result.sGroup}" /></td>
				</tr>
				<tr align="left">
					<td style="text-align: center">이름</td>
					<td style="text-align: left"><c:out value="${result.name}" /></td>
				</tr>
				<tr align="left">
					<td style="text-align: center">소속</td>
					<td style="text-align: left">${result.job}</td>
				</tr>
				<tr align="left">
					<td style="text-align: center">직급</td>
					<td style="text-align: left">${result.jobPosition}</td>
				</tr>
				<tr align="left">
					<td style="text-align: center">핸드폰</td>
					<td style="text-align: left;">${result.phoneNumber}</td>
				</tr>
				<tr align="left" style="border-bottom: solid 2px #a1a4a8;">
					<td style="text-align: center; letter-spacing: -1px;">E-mail</td>
					<td style="text-align: left; letter-spacing: -1px;"><c:choose>
							<c:when test="${result.mailId eq null || result.mailId == ''}">
                           			&nbsp;-
                           		</c:when>
							<c:otherwise>
		                            ${result.mailId}@${result.mailDomain}
                           		</c:otherwise>
						</c:choose></td>
				</tr>
			</table>
		</div>
	</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<c:import url="../import/footer.jsp" />
</body>
</html>