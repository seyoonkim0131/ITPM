<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
		<link rel="Shortcut Icon" href="../image/favicon.ico" />
		<title>원우수첩 | IT정책경영학과</title>
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
            <div style="font-size: 15pt; padding-top:10%; padding-bottom:10%; padding-left: 15px;font-weight: 900;">원우수첩</div>            
        </div>
        <div class="content-div">
			<div class="small-title" style="margin: 80px 0 0 0;">
	            <p>
	                <span><img alt="menu main title bar" src="../image/menu_main_titlebar.png">원우수첩</span>
	                <span style="float:right;">
	                    <small><a href="../index.jsp">홈</a> > 원우수첩</small>
	                </span>
	            </p>
	            <select style="float: right;">
   					<option value="volvo">Volvo</option>
   					<option value="saab">Saab</option>
   					<option value="mercedes">Mercedes</option>
   					<option value="audi">Audi</option>
				</select>
                <table
                    class="bbs-list"
                    style="width: 100%; border-top: solid 2px #b31b1b; table-layout: fixed; border-spacing: 0;">
                    <tbody>
                        <tr align="center">
                            <td rowspan="6" style="padding-right">
                            	<img border="1" height="177" width="155" 
                            	 	 src="../image/1.jpg" style="vertical-align: middle;"></td>
                            <td style="padding-right:50px" >기수</td>
                            <td style="text-align:left" >1기</td>
                        </tr>
                        <tr align="left">
                            <td style="padding-right:50px" >이름</td>
                            <td style="text-align:left">류훈선</td>
                        </tr>
                        <tr align="left">
                            <td style="padding-right:50px" >회사명</td>
                            <td style="text-align:left" >숭실대학교</td>
                        </tr>
                        <tr align="left">
                            <td style="padding-right:50px" >직급</td>
                            <td style="text-align:left" >총장</td>
                        </tr>
                        <tr align="left">
                            <td style="padding-right:50px" >핸드폰</td>
                            <td style="text-align:left" >010-1234-1234</td>
                        </tr>
                        <tr align="left">
                            <td style="padding-right:50px" >E-mail</td>
                            <td style="text-align:left" >hoonseon@nate.com</td>
                        </tr>
                    </tbody>
                </table>
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
			<div style="width:80%;">&nbsp;</div>
		</div>
		<c:import url="../import/footer.jsp" />
	</body>
</html>