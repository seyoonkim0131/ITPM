<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
        <meta
            content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes"
            name="viewport"/>
        <meta content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공." name="description"/>
        <link href="../image/favicon.ico" rel="Shortcut Icon"/>
        <title>방문안내 | IT정책경영학과</title>
        <link href="../css/itpm.css" rel="stylesheet"/>
        <link href="../css/menu.css" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript">

            function submenu() {
                //$("#hide").display = "block";
                var sub = document.getElementById("hide");
                if (sub.style.display == 'none') {
                    sub.style.display = 'block';
                } else {
                    sub.style.display = 'none';
                }
            }
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
            $(window).resize(function () {
                if (getWidth() >= '767') { //큰화면
                    document.getElementById('side_menu').style.display = 'block';
                    $('.content-div').css('padding-left', '250px');
                } else {
                    document.getElementById('side_menu').style.display = 'none';
                    $('.content-div').css('padding-left', '80px');
                }
            });
            $(document).ready(function () {
                if (getWidth() >= '767') { //큰화면
                    document.getElementById('side_menu').style.display = 'block';
                    $('.content-div').css('padding-left', '250px');
                } else {
                    document.getElementById('side_menu').style.display = 'none';
                    $('.content-div').css('padding-left', '80px');
                }
            });
            
        </script>
        <style type="text/css">
            @import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
            body {
                font-family: 'Nanum Gothic', sans-serif;
            }
            .navbar {
                min-height: 40px;
                font-size: 11px;
            }
            .navbar-inverse .navbar-nav > li > a {
                color: #fff;
            }
        </style>
    </head>

    <body role="document" style="overflow-x:hidden;">
    <c:import url="../import/header.jsp" />
       <div
            class="container"
            id="side_menu"
            style="text-align:left; position:absolute; max-width:150px; border: 1px solid #dcdcdc; float: left; padding:0 0 0 0; margin: 70px 50px 0 30px;">
            <div style="height: 14px; width:100%; background-color: #b31b1b;"></div>
            <div
                style="font-size: 15pt; padding-top:10%; padding-left:15px; padding-bottom:10%; font-weight: 900;">대학원소개</div>
            <div style="height: 2px; background-color: #b6b6b6;"></div>
            <ul class="nav nav-pills nav-stacked" style="float:center;">
                <li>
                    <a href="#" style="color:gray; background-color:transparent; margin-top:6%; ">학과소개</a>
                </li>
                <li>
                    <a href="#" style="color:gray; background-color:transparent;">교수소개</a>
                </li>
                <li class="active">
                    <a href="#" style="color:gray; background-color:transparent;">교육비전</a>
                </li>
                <li>
                    <a href="#" style="color:#b31b1b; background-color:transparent; margin-bottom:6%;">방문안내</a>
                </li>
            </ul>
        </div>

		<div class="content-div" >
        <div class="small-title" style="margin: 70px 0 10px 0; width:80%;">
            <p>
                <span>방문안내</span>
                <span style="float:right;">
                    <small>홈 > 대학원소개 > 방문안내</small>
                </span>
            </p>
        </div>
        <br>
        <div class="content" style=" margin: 0 0 60px 0; width:80%;">
        	<br>&nbsp;<br>
        	<p>IT정책경영학과 위치</p>
			<p>서울특별시 동작구 상도로369 숭실대학교 미래관101호 IT정책경영학과</p>
			<br>&nbsp;<br>  
			<ul class="nav nav-tabs">
    			<li><a href="map.jsp">지하철</a></li>
    			<li><a href="map_02.jsp">버스</a></li>
   				<li><a href="map_03.jsp">자가용</a></li>
    			<li class="active"><a href="map_04.jsp">고속도로</a></li>
  			</ul>
  			<br>
  			<div style="text-align:center;">
  				<img alt="" src="../image/map_highway.PNG" style="width:80%; height:auto;">
        	</div>
        	
        </div>
        </div>
        <c:import url="../import/footer.jsp"/>
    </body>
</html>