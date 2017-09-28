<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
		<link rel="Shortcut Icon" href="../image/favicon.ico" />
		<title>학과내규 | IT정책경영학과</title>
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
            $('#back').click(function () {
            	window.history.back();
            });
        });
		</script>
		
	</head>
	<body>
		<c:import url="import/header.jsp" />
		<div class="container" id="side_menu">
			<div class="redline"></div>
			<div class="menutitle">로그인 실패</div>
			<div class="grayline"></div>
		</div>
		<div class="content-div">
			<div class="small-title">
				<p>
					<span><img alt="menu main title bar" src="image/menu_main_titlebar.png">로그인 실패</span>
				</p>
			</div>
			<div class="content-board">
				<img align="left" height="60px" src="image/fail_image.png" width="69px"><br/>
				<strong>로그인에 실패했습니다.</strong><br>아이디와 비밀번호를 확인해주세요.<br>
				<input type="button" id="back" value="뒤로가기" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;">
			</div>
			<div class="button-list">
				<!-- <ul class="left">
					<li> -->
					<!-- </li>
				</ul> -->
			</div>
		</div>
		<c:import url="import/footer.jsp" />
	</body>
</html>