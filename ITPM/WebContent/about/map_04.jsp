<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" name="viewport"/>
        <meta content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공." name="description"/>
        <link href="image/favicon.ico" rel="Shortcut Icon"/>
        <title>방문안내 | IT정책경영학과</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/itpm.css" rel="stylesheet"/>
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
            });
            
        </script>
        <style type="text/css">
            /* 작은 기기들 (태블릿, 768px 이상) */
			@media only screen and (max-width: 415px) { 
				#hw_image{margin-left:-5px; max-width:110%}
				#hw_text{display:none;}
			}
	
			@media only screen and (min-width: 416px) and (max-width: 767px) { 
				#hw_image{max-width:80%;}
				#hw_text{display:block; max-width:80%; margin:0 0 0 6%;}
			}

			/* 중간 기기들 (데스크탑, 992px 이상) */
			@media only screen and (min-width: 768px) and (max-width: 1020px) {
				#hw_image{max-width:70%;}
				#hw_text{display:block; max-width:70%; margin:0 0 0 11%;}
			}
		
			/* 큰 기기들 (큰 데스크탑, 1200px 이상) */
			@media only screen and (min-width: 1021px){
				#hw_image{max-width:70%;}
				#hw_text{display:block; max-width:70%; margin:0 0 0 11%;}
			}
        </style>
    </head>
    <body class="document" role="document">
    <c:import url="../import/header.jsp" />
		<div class="container" id="side_menu">
			<div class="redline"></div>
            <div class="menutitle">대학원소개</div>
            <div class="grayline"></div>
            <ul class="nav nav-pills nav-stacked">
                <li class="inactive">
                    <a href="goItpm.do">학과소개</a>
                </li>
                <li class="inactive">
                    <a href="prof.jsp">교수소개</a>
                </li>
                <li class="inactive">
                    <a href="goVision.do">교육비전</a>
                </li>
                <li class="active1">
                    <a href="goMap.do">방문안내</a>
                </li>
            </ul>
        </div>
		<div class="content-div" >
	        <div class="small-title">
	            <p>
	                <span><img alt="menu main title bar" src="image/menu_main_titlebar.png">방문안내</span>
	                <span class="small-title-right">
	                    <small><a href="welcome.do">홈</a> > 대학원소개 > 방문안내</small>
	                </span>
	            </p>
	        </div>
	        <div class="content-board">
	        	<p><strong>IT정책경영학과 위치</strong></p>
				<p>서울특별시 동작구 상도로369 숭실대학교 미래관101호 IT정책경영학과</p>
				<br>&nbsp;<br>        	
	        	<p><strong>학교 위치</strong></p> 
				<ul id="nav_tab" class="nav nav-tabs">
	    			<li><a href="goMap.do">지하철</a></li>
	    			<li><a href="goMap2.do">버스</a></li>
	   				<li><a href="goMap3.do">자가용</a></li>
	    			<li class="active"><a href="goMap4.do">고속도로</a></li>
	  			</ul>
	  			<br>
	  			<div class="map-contents">
	  				<img id="hw_image" alt="" src="image/map_highway_image.png" > 		
	  				<img id="hw_text" alt="" src="image/map_highway_text.png">
	        	</div>
	        </div>
        </div>
        <c:import url="../import/footer.jsp"/>
    </body>
</html>