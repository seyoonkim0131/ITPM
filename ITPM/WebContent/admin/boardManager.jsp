<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
		<link rel="Shortcut Icon" href="../image/favicon.ico" />
		<title>게시판 관리 | IT정책경영학과</title>
		<link rel="StyleSheet" href="../css/itpm.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script type="text/javascript">
			function submenu() {
				//$("#hide").display = "block";
				var sub = document.getElementById("hide");
				if(sub.style.display == 'none') {
					sub.style.display = 'block';
				} else {
					sub.style.display = 'none';
				}
			}
		</script>
	</head>
	<body>
		<c:import url="../import/header.jsp" />
		<div class="body">
			<div  class="floating">
				<div style="height: 14px; background-color: #b31b1b;">&nbsp;</div>
				<div style="padding: 10%; padding-left: 20%; font-size: 15pt; font-weight: 900;">관리자 메뉴</div>
				<div style="height: 2px; background-color: #b6b6b6;"></div>
				<div>
					<nav>
						<ul style="line-height: 200%;">
							<li><a href="insertStudent.jsp">신입생 등록</a></li>
							<li class="menu" onclick="submenu()"><a href="#">게시판 관리</a>
								<ul id="hide" class="hide" style="display: none;">
									<li><a href="boardManager.jsp">학과소개 관리</a></li>
									<li><a href="#">교육과정 관리</a></li>
									<li><a href="#">입학정보 관리</a></li>
								</ul>
							</li>
						</ul>
					</nav>
				</div>
			</div>
			<div class="small-title">
				<p>
					<span>게시판 관리</span>
					<span style="padding-left: 70%;"><small>홈 > 관리자 메뉴 > 게시판 관리</small></span>
				</p>
			</div>
			<div class="content">
			</div>
		</div>
		<c:import url="../import/footer.jsp" />
	</body>
</html>