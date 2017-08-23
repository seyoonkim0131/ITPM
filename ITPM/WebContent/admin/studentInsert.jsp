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
		<title>신입생 등록 | IT정책경영학과</title>
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
				$('#insert').click(function() {
					var file = $('#excelFile').val();
					if(file == "" || file == null) {
						alert('파일을 선택해주세요.');
						return false;
					} else if(!checkFileType(file)) {
						alert('엑셀 파일만 업로드할 수 있습니다.');
						return false;
					}
					if(confirm('등록하시겠습니까?')) {
						$('#excelUploadForm').submit();
					}
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
				<li class="active1"><a href="goInsertStudent.do">신입생 등록</a></li>
				<li class="inactive"><a href="goDeleteStudent.do">원우 삭제</a></li>
			</ul>
		</div>
		<div class="content-div">
			<div class="small-title">
				<p>
					<span><img alt="menu main title bar" src="image/menu_main_titlebar.png">신입생 등록</span>
					<span class="small-title-left"><!-- <small><a href="welcome.do">홈</a> > 관리자 메뉴 > 신입생 등록</small> --></span>
				</p>
			</div>
			<div class="content-board">
				<form id="excelUploadForm" name="excelUploadForm" method="post" action="insertStudentExcel.do" enctype="multipart/form-data">
					<input type="file" class="form-control" id="excelFile" name="excelFile" />
					<input type="button" id="insert" value="등록" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;">
				</form>
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