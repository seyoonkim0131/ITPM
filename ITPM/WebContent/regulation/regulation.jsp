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
		<link rel="stylesheet" href="../css/itpm.css" />
		<link rel="stylesheet" href="../css/menu.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(window).resize(function(){
				if(getWidth() <= '767') { //얘가 작을때얌
					document.getElementById('side_menu').style.display = 'none';
					$('.content-div').css('margin-left', '80px');
				} else {
					document.getElementById('side_menu').style.display = 'block';
					$('.content-div').css('margin-left', '250px');
				}
			});
			
			$(document).ready(function() {
				if(getWidth() <= '767') { //얘가 작다고
					document.getElementById('side_menu').style.display = 'none';
					$('.content-div').css('margin-left', '80px');
				} else {
					document.getElementById('side_menu').style.display = 'block';
					$('.content-div').css('margin-left', '250px');
				}
			});
		</script>
		<style type="text/css">
			.table_list>ul>li {position: relative; z-index: 0; padding: 10px 18px; border-bottom: 1px solid #d0d0d0; line-height: 20px; display: list-item;}
			.table_list {color: #666; margin: 0;}
			.table_list .top_area:after {display: block; clear: both; content: '';}
			.pagination {display: inline-block;}
			.pagination a {color: black; padding: 8px 16px; text-decoration: none;}
			.pagination a.active {color: white; background-color: #b31b1b;}
			.pagination a:hover:not(.active) {background-color: #ddd;}
		</style>
	</head>
	<body>
		<c:import url="../import/header.jsp" />
		<div class="container" id="side_menu">
            <div style="height: 14px; width:100%; padding: 0 0 0 0; background-color: #b31b1b;"></div>
            <div style="font-size: 15pt; padding-top:10%; padding-bottom:10%; padding-left: 15px;font-weight: 900;">학사정보</div>
            <div style="height: 2px; background-color: #b6b6b6;"></div>
            <ul class="nav nav-pills nav-stacked">
                <li><a href="../academic/education.jsp" style="color:gray; background-color:transparent; margin-top:6%;">개설과정</a></li>
                <li onclick="submenu()">
                	<a href="#" style="color:gray; background-color:transparent;">규정</a>
                	<ul id="hide" style="display: block;">
                		<li><a href="http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=23" target="_blank" style="color: gray;">학칙</a></li>
                		<li><a href="http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=25" target="_blank" style="color: gray;">시행세칙</a></li>
                		<li class="active"><a href="../regulation/regulation.jsp" style="color: #b31b1b;">학과내규</a></li>
                		<li><a href="http://grad.ssu.ac.kr/web/grad/paper_f" target="_blank" style="color: gray;">논문심사기준</a></li>
                	</ul>
                </li>
                <li><a href="../academic/calendar.jsp" style="color:gray; background-color:transparent;">학사일정</a></li>
                <li><a href="../board/notice.jsp" style="color: gray; background-color:transparent; margin-bottom:6%;">공지사항</a></li>
            </ul>
        </div>
        <div class="content-div">
			<div class="small-title" style="margin: 80px 0 0 0;">
	            <p>
	                <span><img alt="menu main title bar" src="../image/menu_main_titlebar.png">학과내규</span>
	                <span style="float:right;">
	                    <small><a href="../index.jsp">홈</a> > 학사정보 > 규정 > 학과내규</small>
	                </span>
	            </p>
		        <div class="list">
		        	<div class="table_list" style="border-top: 2px solid #b31b1b;">
		        		<ul style="display: block; padding: 0;">
		        			<li style="color: #666;">
		        				<div class="top_area">
		        					<div class="write_num" style="float: left; font-size: 11px;">
		        						<img alt="중요공지" src="../image/notice.png" style="padding: 3px 3px 0 0;">
		        					</div>
		        					<div class="num_area" style="float: right;">
		        						<span class="table_date" style="display: inline-block; width: 100px; height: 13px; padding: 0 5px 0 17px; background: url(../image/icon_date.jpg) no-repeat 0 0; line-height: 13px;"><strong>2017.03.01</strong></span>
		        						<span class="table_hit" style="display: inline-block; width: 45px; height: 13px; margin: 0; padding: 0 5px 0 19px; background: url(../image/icon_view.gif) no-repeat 0 3px; line-height: 13px;"><strong>342</strong></span>
		        					</div>
		        				</div>
	        					<div class="subject">
	        						<a href="regulationDetail.jsp" style="vertical-align: top;">2017년 IT정책경영학과 학과내규</a>
	        					</div>
		        			</li>
		        			<li style="color: #666;">
		        				<div class="top_area">
		        					<div class="write_num" style="float: left; font-size: 11px;">
		        						NO.3
		        					</div>
		        					<div class="num_area" style="float: right;">
		        						<span class="table_date" style="display: inline-block; width: 100px; height: 13px; padding: 0 5px 0 17px; background: url(../image/icon_date.jpg) no-repeat 0 0; line-height: 13px;"><strong>2016.03.03</strong></span>
		        						<span class="table_hit" style="display: inline-block; width: 45px; height: 13px; margin: 0; padding: 0 5px 0 19px; background: url(../image/icon_view.gif) no-repeat 0 3px; line-height: 13px;"><strong>342</strong></span>
		        					</div>
		        				</div>
	        					<div class="subject">
	        						<a href="#" style="vertical-align: top;">2016년 IT정책경영학과 학과내규</a>
	        					</div>
		        			</li>
		        			<li style="color: #666;">
		        				<div class="top_area">
		        					<div class="write_num" style="float: left; font-size: 11px;">
		        						NO.2
		        					</div>
		        					<div class="num_area" style="float: right;">
		        						<span class="table_date" style="display: inline-block; width: 100px; height: 13px; padding: 0 5px 0 17px; background: url(../image/icon_date.jpg) no-repeat 0 0; line-height: 13px;"><strong>2015.03.03</strong></span>
		        						<span class="table_hit" style="display: inline-block; width: 45px; height: 13px; margin: 0; padding: 0 5px 0 19px; background: url(../image/icon_view.gif) no-repeat 0 3px; line-height: 13px;"><strong>342</strong></span>
		        					</div>
		        				</div>
	        					<div class="subject">
	        						<a href="#" style="vertical-align: top;">2015년 IT정책경영학과 학과내규</a>
	        					</div>
		        			</li>
		        			<li style="color: #666;">
		        				<div class="top_area">
		        					<div class="write_num" style="float: left; font-size: 11px;">
		        						NO.1
		        					</div>
		        					<div class="num_area" style="float: right;">
		        						<span class="table_date" style="display: inline-block; width: 100px; height: 13px; padding: 0 5px 0 17px; background: url(../image/icon_date.jpg) no-repeat 0 0; line-height: 13px;"><strong>2014.03.03</strong></span>
		        						<span class="table_hit" style="display: inline-block; width: 45px; height: 13px; margin: 0; padding: 0 5px 0 19px; background: url(../image/icon_view.gif) no-repeat 0 3px; line-height: 13px;"><strong>342</strong></span>
		        					</div>
		        				</div>
	        					<div class="subject">
	        						<a href="#" style="vertical-align: top;">2014년 IT정책경영학과 학과내규</a>
	        					</div>
		        			</li>
		        		</ul>
		        	</div>
		        </div>
	        </div>
			<div class="pagination-centered" style="text-align: center; width: 80%;">
				<div class="pagination">
					<a href="#" style="color: #666">&laquo;</a>
					<a class="active" href="#">1</a>
					<a href="#">2</a>
					<a href="#">3</a>
					<a href="#">4</a>
					<a href="#">5</a>
					<a href="#" style="color: #666">&raquo;</a>
				</div>
			</div>
		</div>
		<c:import url="../import/footer.jsp" />
	</body>
</html>