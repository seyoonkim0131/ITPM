<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" name="viewport"/>
        <meta content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공." name="description"/>
        <link href="../image/favicon.ico" rel="Shortcut Icon"/>
        <title>방문안내 | IT정책경영학과</title>
        <link href="../css/itpm.css" rel="stylesheet"/>
        <link href="../css/menu.css" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
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
            $(window).resize(function () {
                if (getWidth() >= '767') {
                    document.getElementById('side_menu').style.display = 'block';
                    $('.content-div').css('padding-left', '250px');
                } else {
                    document.getElementById('side_menu').style.display = 'none';
                    $('.content-div').css('padding-left', '80px');
                }
            });
            $(document).ready(function () {
                if (getWidth() >= '767') {
                    document.getElementById('side_menu').style.display = 'block';
                    $('.content-div').css('padding-left', '250px');
                } else {
                    document.getElementById('side_menu').style.display = 'none';
                    $('.content-div').css('padding-left', '80px');
                }
            });
            
        </script>
        <style type="text/css">
            .navbar {
                min-height: 40px;
                font-size: 11px;
            }
            .navbar-inverse .navbar-nav > li > a {
                color: #fff;
            }
            /* 작은 기기들 (태블릿, 768px 이상) */
			@media only screen and (max-width: 415px) { 
				#nav_tab{display:none;}
				#hw_image{margin-left:-5px; max-width:110%}
				#hw_text{display:none;}
			}
	
			@media only screen and (min-width: 416px) and (max-width: 767px) { 
				#nav_tab{display:block;}
				#hw_image{max-width:80%;}
				#hw_text{display:block; max-width:80%; margin:0 0 0 6%;}
			}

			/* 중간 기기들 (데스크탑, 992px 이상) */
			@media only screen and (min-width: 768px) and (max-width: 1020px) {
				#nav_tab{display:block;}
				#hw_image{max-width:70%;}
				#hw_text{display:block; max-width:70%; margin:0 0 0 11%;}
			}
		
			/* 큰 기기들 (큰 데스크탑, 1200px 이상) */
			@media only screen and (min-width: 1021px){
				#nav_tab{display:block;}
				#hw_image{max-width:70%;}
				#hw_text{display:block; max-width:70%; margin:0 0 0 11%;}
			}
        </style>
    </head>
    <body role="document" style="overflow-x:hidden;">
    <c:import url="../import/header.jsp" />
		<div class="container" id="side_menu" style="text-align:left; position:absolute; max-width:150px; border: 1px solid #dcdcdc; float: left; padding:0 0 0 0; margin: 70px 50px 0 30px;">
			<div style="height: 14px; width:100%; background-color: #b31b1b;"></div>
            <div style="font-size: 15pt; padding-top:10%; padding-left:15px; padding-bottom:10%; font-weight: 900;">대학원소개</div>
            <div style="height: 2px; background-color: #b6b6b6;"></div>
            <ul class="nav nav-pills nav-stacked" style="float:center;">
                <li>
                    <a href="itpm.jsp" style="color:gray; background-color:transparent; margin-top:6%; ">학과소개</a>
                </li>
                <li>
                    <a href="prof.jsp" style="color:gray; background-color:transparent;">교수소개</a>
                </li>
                <li>
                    <a href="vision.jsp" style="color:gray; background-color:transparent;">교육비전</a>
                </li>
                <li  class="active">
                    <a href="map.jsp" style="color:#b31b1b;background-color:transparent; margin-bottom:6%;">방문안내</a>
                </li>
            </ul>
        </div>
		<div class="content-div" >
	        <div class="small-title" style="margin: 0 0 10px 0; width:100%; padding: 0 10% 0 0;">
	            <p>
	                <span><img alt="menu main title bar" src="../image/menu_main_titlebar.png">방문안내</span>
	                <span style="float:right;">
	                    <small><a href="../index.jsp">홈</a> > 대학원소개 > 방문안내</small>
	                </span>
	            </p>
	        </div>
	        <div class="content" style=" margin: 70px 0 60px 0; width:90%; padding: 70px 0 0 0;">
	        	<p><strong>IT정책경영학과 위치</strong></p>
				<p>서울특별시 동작구 상도로369 숭실대학교 미래관101호 IT정책경영학과</p>
				<br>&nbsp;<br>        	
	        	<p>학교 위치</p> 
				<ul id="nav_tab" class="nav nav-tabs">
	    			<li><a href="map.jsp">지하철</a></li>
	    			<li><a href="map_02.jsp">버스</a></li>
	   				<li><a href="map_03.jsp">자가용</a></li>
	    			<li class="active"><a href="map_04.jsp">고속도로</a></li>
	  			</ul>
	  			<br>
	  			<div style="text-align:center;">
	  				<img id="hw_image" alt="" src="../image/map_highway_image.png" > 		
	  				<img id="hw_text" alt="" src="../image/map_highway_text.png"">
	        	</div>
	        </div>
        </div>
        <c:import url="../import/footer.jsp"/>
    </body>
</html>