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
	            $('#sideSchoolRule').click(function() {
					if(confirm('숭실대학교 홈페이지로 이동합니다. \n계속하시겠습니까?') == true) {
						window.open('http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=23', '_blank');
					} else {
						return false;
					}
				});
	            $('#sideSchoolRuleD').click(function() {
					if(confirm('숭실대학교 홈페이지로 이동합니다. \n계속하시겠습니까?') == true) {
						window.open('http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=25', '_blank');
					} else {
						return false;
					}
				});
	            $('#sideSchoolPaper').click(function() {
					if(confirm('숭실대학교 대학원 홈페이지로 이동합니다. \n계속하시겠습니까?') == true) {
						window.open('http://grad.ssu.ac.kr/web/grad/paper_f', '_blank');
					} else {
						return false;
					}
				});
				$('#insert').click(function () {
					if(confirm("과목을 등록하시겠습니까?") == true) {
						$('#insertForm').submit();
					}else{
						return false;
					}
				});
			});
		</script>
	</head>
	<body>
		<c:import url="../import/header.jsp" />
		<div class="container" id="side_menu">
			<div class="redline"></div>
			<div class="menutitle">학사정보</div>
			<div class="grayline"></div>
			<ul class="nav nav-pills nav-stacked">
				<li class="active1"><a href="education.jsp">개설과정</a></li>
				<li class="inactive" onclick="submenu()">
					<a href="#">규정</a>
					<ul id="hide">
                      <li id="sideSchoolRule" class="inactive"><a href="#">학칙</a></li>
                      <li id="sideSchoolRuleD" class="inactive"><a href="#">시행세칙</a></li>
                      <li class="inactive"><a href="getRuleList.do">학과내규</a></li>
                      <li id="sideSchoolPaper" class="inactive"><a href="#">논문심사기준</a></li>
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
					<span class="small-title-right">
						<small><a href="welcome.do">홈</a> > 학사정보 > 개설과정</small>
					</span>
				</p>
			</div>
			<div class="content-board">
				<form action="insertEducation.do" method="post" id="insertForm" name="insertForm" enctype="multipart/form-data">
					<table class="table">
						<tr>
							<th>전공</th>
							<td>
								<select name="major" id="major">
								    <option value="공통과목">공통과목</option>
								    <option value="IT경영전공">IT경영전공</option>
								    <option value="IT정책전공">IT정책전공</option>
								    <option value="IT금융전공">IT금융전공</option>
								    <option value="IT서비스전공">IT서비스전공</option>
								    <option value="IT법령전공">IT법령전공</option>
								    <option value="IT보안전공">IT보안전공</option>
								    <option value="IT행정전공">IT행정전공</option>
								    <option value="IT국방전공">IT국방전공</option>
								    <option value="IT사업전공">IT사업전공</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>과목코드</th>
							<td><input type="text" name="no" id="no" class="form-control" placeholder="과목코드를 입력하세요."/></td>
						</tr>
						<tr>
							<th>과목명(한글)</th>
							<td><input type="text" name="nameKor" id="nameKor" class="form-control" placeholder="과목명(한글)을 입력하세요."/></td>
						</tr>
						<tr>
							<th>과목명(영문)</th>
							<td><input type="text" name="nameEng" id="nameEng" class="form-control" placeholder="과목명(영문)을 입력하세요."/></td>
						</tr>	                          
						<tr>
							<td colspan="2">
								<input type="button" value="등록" id="insert" class="pull-right" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;"/>
								<input type="button" value="목록" id="list" onclick="javascript:location.href='getAllEduList.do'" class="pull-right" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;"/>
							</td>
						</tr>
	                </table>
                </form>
			</div>           
		</div>
		<div style="width: 80%;">&nbsp;</div>
		<c:import url="../import/footer.jsp" />
	</body>
</html>