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
        <title>학과소개 | IT정책경영학과</title>
        <link href="../css/itpm.css" rel="stylesheet"/>
        <link href="../css/menu.css" rel="stylesheet">
        <link
            href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            rel="stylesheet">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
            /* 작은 기기들 (태블릿, 768px 이상) */
			@media only screen and (max-width: 376px) { 
				#itpm_list{margin-left:-50px;}
			}
	
			@media only screen and (min-width: 377px) and (max-width: 767px) { 
				#itpm_list{margin-left:-50px;}	
			}

			/* 중간 기기들 (데스크탑, 992px 이상) */
			@media only screen and (min-width: 768px) and (max-width: 1020px) {
				
			}
		
			/* 큰 기기들 (큰 데스크탑, 1200px 이상) */
			@media only screen and (min-width: 1021px){
				
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
                <li class="active">
                    <a href="#" style="color:#b31b1b; background-color:transparent; margin-top:6%; ">학과소개</a>
                </li>
                <li>
                    <a href="#" style="color:gray; background-color:transparent;">교수소개</a>
                </li>
                <li>
                    <a href="#" style="color:gray; background-color:transparent;">교육비전</a>
                </li>
                <li>
                    <a href="#" style="color:gray; background-color:transparent; margin-bottom:6%;">방문안내</a>
                </li>
            </ul>
        </div>

		<div class="content-div" >
        <div class="small-title" style="margin: 0 0 10px 0; width:100%; padding: 0 10% 0 0;">
            <p>
                <span>학과소개</span>
                <span style="float:right;">
                    <small>홈 > 대학원소개 > 학과소개</small>
                </span>
            </p>
        </div>
        <div class="content" style=" margin: 70px 0 60px 0; max-width:800px; width:90%; padding: 70px 0 0 0;">
            
			<ul id="itpm_list" style="list-style-type:disc;">
        		<li style="margin-bottom:11px;">위대한 선교사 배위량 박사에 의하여 우리민족 최초의 대학으로 설립되어 안익태, 현제명, 조만식, 한경직 등 민족의 위대한 지도자를 배출한 정신을 기반으로 지식정보화시대에 걸 맞는 서계적 IT리더십을 양성한다.</li>
        		<li style="margin-bottom:11px;">과거반세기동안 약 2만명의 학사급 IT전문인력을 배출하였고, 대학원에서 석박사급 약 4천명의 IT전문고급인력을 배출한 최고의 휴먼네트워크를 기반으로 다양한 IT리더십을 양성한다.</li>
        		<li style="margin-bottom:11px;">대학원 IT정책경영학과는 중앙정부, 지방정부, 공공기관, 연구기관, 산업체로부터 최고수준의 전문가를 발굴하여 국제적 IT리더십을 양성한다.</li>
        		<li style="margin-bottom:11px;">대학원 IT정책경영학과는 시대적으로 국가사회가 요구하는 전문인력은 단순한 IT의 기술을 넘어 서비스, 과학, 경영, 공학(SSME)의 다중학문(Interdisciplinary or Multidisciplinary)을 전공한 다중학문의 IT리더십을 양성한다.</li>
        		<li style="margin-bottom:11px;">대학원 IT정책경영학과는 다중학문으로 컴퓨터학부, 경영학부, 행정학부, 법학부 등의 학제 간 협동으로 운영하고 있으며, 졸업생은 미래지향의 강력한 리더십을 발휘하고, 공공부문 및 민간부문에서 CIO, CKO, CTO, CEO로 국가사회와 경제발전에 크게 기여할 것으로 기대된다.</li>
        	</ul>
        </div>
        </div>
        <c:import url="../import/footer.jsp"/>
    </body>
</html>