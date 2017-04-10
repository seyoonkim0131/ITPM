<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" name="viewport"/>
        <meta content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공." name="description"/>
        <link href="../image/favicon.ico" rel="Shortcut Icon"/>
        <title>학과소개 | IT정책경영학과</title>
        <link href="../css/itpm.css" rel="stylesheet"/>       
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
				#itpm_list{margin-left:-30px;}
			}
	
			@media only screen and (min-width: 377px) and (max-width: 767px) { 
				#itpm_list{margin-left:-30px;}	
			}

			/* 중간 기기들 (데스크탑, 992px 이상) */
			@media only screen and (min-width: 768px) and (max-width: 1020px) {
				
			}
		
			/* 큰 기기들 (큰 데스크탑, 1200px 이상) */
			@media only screen and (min-width: 1021px){
				
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
                <li class="active1">
                    <a href="itpm.jsp">학과소개</a>
                </li>
                <li class="inactive">
                    <a href="prof.jsp">교수소개</a>
                </li>
                <li class="inactive">
                    <a href="vision.jsp">교육비전</a>
                </li>
                <li class="inactive">
                    <a href="map.jsp">방문안내</a>
                </li>
            </ul>
        </div>
		<div class="content-div" >
	        <div class="small-title">
	            <p>
	                <span><img alt="menu main title bar" src="../image/menu_main_titlebar.png">학과소개</span>
	                <span class="small-title-right"><small><a href="../index.jsp">홈</a> > 대학원소개 > 학과소개</small></span>
	            </p>
	        </div>
	        <div class="content">
				<ul class="about-list" id="itpm_list">
	        		<li>위대한 선교사 배위량 박사에 의하여 우리민족 최초의 대학으로 설립되어 안익태, 현제명, 조만식, 한경직 등 민족의 위대한 지도자를 배출한 정신을 기반으로 지식정보화시대에 걸 맞는 서계적 IT리더십을 양성한다.</li>
	        		<li>과거반세기동안 약 2만명의 학사급 IT전문인력을 배출하였고, 대학원에서 석박사급 약 4천명의 IT전문고급인력을 배출한 최고의 휴먼네트워크를 기반으로 다양한 IT리더십을 양성한다.</li>
	        		<li>대학원 IT정책경영학과는 중앙정부, 지방정부, 공공기관, 연구기관, 산업체로부터 최고수준의 전문가를 발굴하여 국제적 IT리더십을 양성한다.</li>
	        		<li>대학원 IT정책경영학과는 시대적으로 국가사회가 요구하는 전문인력은 단순한 IT의 기술을 넘어 서비스, 과학, 경영, 공학(SSME)의 다중학문(Interdisciplinary or Multidisciplinary)을 전공한 다중학문의 IT리더십을 양성한다.</li>
	        		<li>대학원 IT정책경영학과는 다중학문으로 컴퓨터학부, 경영학부, 행정학부, 법학부 등의 학제 간 협동으로 운영하고 있으며, 졸업생은 미래지향의 강력한 리더십을 발휘하고, 공공부문 및 민간부문에서 CIO, CKO, CTO, CEO로 국가사회와 경제발전에 크게 기여할 것으로 기대된다.</li>
	        	</ul>
	        </div>
        </div>
        <c:import url="../import/footer.jsp"/>
    </body>
</html>