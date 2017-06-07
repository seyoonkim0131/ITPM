<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" name="viewport"/>
        <meta content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공." name="description"/>
        <link href="image/favicon.ico" rel="Shortcut Icon"/>
        <title>교육비전 | IT정책경영학과</title>
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
			@media only screen and (max-width: 376px) { 
				#major_image{display:none;}
				#vision_list{margin-left:-30px;}
			}
	
			@media only screen and (min-width: 377px) and (max-width: 767px) { 
				#major_image{display:none;}	
				#vision_list{margin-left:-30px;}	
			}

			/* 중간 기기들 (데스크탑, 992px 이상) */
			@media only screen and (min-width: 768px) and (max-width: 1020px) {
				#major_image{display:block; max-width:80%;}
			}
		
			/* 큰 기기들 (큰 데스크탑, 1200px 이상) */
			@media only screen and (min-width: 1021px){
				#major_image{display:block; max-width:80%;}
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
                <li class="active1">
                    <a href="goVision.do">교육비전</a>
                </li>
                <li class="inactive">
                    <a href="goMap.do">방문안내</a>
                </li>
            </ul>
        </div>
		<div class="content-div" >
	        <div class="small-title">
	            <p>
	                <span><img alt="menu main title bar" src="image/menu_main_titlebar.png">교육비전</span>
	                <span class="small-title-right">
	                    <small><a href="welcome.do">홈</a> > 대학원소개 > 교육비전</small>
	                </span>
	            </p>
	        </div>
	        <div class="content-board">
	        	<ul class="about-list" id="vision_list">
		        	<li>대학원 IT정책경영학과는 IT를 기반으로 한 다중학문을 탐구하고, IT정책경영의 석박사급(고급인재)인력을 양성하는 최고의 교육기관으로 세게최고의 IT정책경영 전문대학원으로 우뚝 선다.</li>
		            <li>우수한 신입생을 유치하기 위하여 정부기관의 고급관료, 성적우수자 등에게 많은 장학금을 배려하고, 관산연학의 긴밀한 협력관계를 유지하며, 수요자 중심으로 선진화된 교육연구서비스를 제공한다.</li>
		            <li>우수한 교육연구서비스를 제공하기 위하여 세계적인 전임교수를 지속적으로 확보하고, 국내외의 저명인사를 석좌교수, 객원교수, 겸임교수로 활용한다.</li>
		            <li>IT정책경영학과의 세부전공은 9개 세부전공으로 운영하며, 공공부문과 민간부문이 균형발전하도록 하고 상호 긴밀히 공동협력할 수 있도록 한다.</li>
	        	</ul>
				<img class="major-img" id="major_image" alt="" src="image/majorinfo.png">
	            <br>
	        </div>
        </div>
        <c:import url="../import/footer.jsp"/>
    </body>
</html>