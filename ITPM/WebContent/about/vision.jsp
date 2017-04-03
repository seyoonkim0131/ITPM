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
        <title>교육비전 | IT정책경영학과</title>
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
				#major_image{display:none;}
				#vision_list{margin-left:-50px;}
			}
	
			@media only screen and (min-width: 377px) and (max-width: 767px) { 
				#major_image{display:none;}	
				#vision_list{margin-left:-50px;}	
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
                    <a href="itpm.jsp" style="color:gray; background-color:transparent; margin-top:6%; ">학과소개</a>
                </li>
                <li>
                    <a href="prof.jsp" style="color:gray; background-color:transparent;">교수소개</a>
                </li>
                <li class="active">
                    <a href="vision.jsp" style="color: #b31b1b; background-color:transparent;">교육비전</a>
                </li>
                <li>
                    <a href="map.jsp" style=" color:gray;background-color:transparent; margin-bottom:6%;">방문안내</a>
                </li>
            </ul>
        </div>

		<div class="content-div" >
        <div class="small-title" style="margin: 0 0 10px 0; width:100%; padding: 0 10% 0 0;">
            <p>
                <span><img alt="menu main title bar" src="../image/menu_main_titlebar.png">교육비전</span>
                <span style="float:right;">
                    <small>홈 > 대학원소개 > 교육비전</small>
                </span>
            </p>
        </div>
        <div class="content" style="margin: 70px 0 60px 0; max-width:800px; width:90%; padding: 70px 0 0 0;">
        	<ul id="vision_list" style="list-style-type:disc;">
        	<li style="margin-bottom:11px;">대학원 IT정책경영학과는 IT를 기반으로 한 다중학문을 탐구하고, IT정책경영의 석박사급(고급인재)인력을 양성하는 최고의 교육기관으로 세게최고의 IT정책경영 전문대학원으로 우뚝 선다.</li>
            <li style="margin-bottom:11px;">우수한 신입생을 유치하기 위하여 정부기관의 고급관료, 성적우수자 등에게 많은 장학금을 배려하고, 관산연학의 긴밀한 협력관계를 유지하며, 수요자 중심으로 선진화된 교육연구서비스를 제공한다.</li>
            <li style="margin-bottom:11px;">우수한 교육연구서비스를 제공하기 위하여 세계적인 전임교수를 지속적으로 확보하고, 국내외의 저명인사를 석좌교수, 객원교수, 겸임교수로 활용한다.</li>
            <li style="margin-bottom:11px;">IT정책경영학과의 세부전공은 9개 세부전공으로 운영하며, 공공부문과 민간부문이 균형발전하도록 하고 상호 긴밀히 공동협력할 수 있도록 한다.</li>
        	</ul>
        	
			<img id="major_image" alt="" src="../image/majorinfo.png"
                 style="padding: 0 20px 0 20%;  width: auto; height: auto;">
            <br>
                
        </div>
        </div>
        <c:import url="../import/footer.jsp"/>
    </body>
</html>