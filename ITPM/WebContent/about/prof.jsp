<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" name="viewport"/>
        <meta content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공." name="description"/>
        <link href="../image/favicon.ico" rel="Shortcut Icon"/>
        <title>교수소개 | IT정책경영학과</title>
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
            .navbar {
                min-height: 40px;
                font-size: 11px;
            }
            .navbar-inverse .navbar-nav > li > a {
                color: #fff;
            }
            /* 작은 기기들 (태블릿, 768px 이상) */
         @media only screen and (max-width: 376px) { 
            #prof_img{float:none;}
            #profTable{font-size: 9px;}
         }
   
         @media only screen and (min-width: 377px) and (max-width: 767px) { 
            #prof_img{float:left;}      
            #profTable{font-size: 9px;}
         }

         /* 중간 기기들 (데스크탑, 992px 이상) */
         @media only screen and (min-width: 768px) and (max-width: 1020px) {
            #prof_img{float:left;}
         }
      
         /* 큰 기기들 (큰 데스크탑, 1200px 이상) */
         @media only screen and (min-width: 1021px){
            #prof_img{float:left;}
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
                <li class="active">
                    <a href="prof.jsp" style="color:#b31b1b; background-color:transparent;">교수소개</a>
                </li>
                <li>
                    <a href="vision.jsp" style="color:gray; background-color:transparent;">교육비전</a>
                </li>
                <li>
                    <a href="map.jsp" style=" color:gray;background-color:transparent; margin-bottom:6%;">방문안내</a>
                </li>
            </ul>
        </div>
		<div class="content-div">
	        <div class="small-title" style="margin: 0 0 10px 0; width:100%; padding: 0 10% 0 0;">
	            <p>
	                <span><img alt="menu main title bar" src="../image/menu_main_titlebar.png">교수소개</span>
	                <span style="float:right;">
	                    <small><a href="../index.jsp">홈</a> > 대학원소개 > 교수소개</small>
	                </span>
	            </p>
	        </div>
			<div class="content" style=" margin: 70px 0 60px 0; width:90%;">   
				<table id="profTable">
					<colgroup>
						<col width="20%">
						<col width="80%">
					</colgroup>
					<tr>
						<td rowspan="6"> <img id="prof_img" alt="" src="../image/nophoto.png" style="padding: 0 20px 0 0; max-width:160px; width: auto; height: auto;"></td>
					</tr>
					<tr>
						<td>성 명(영문) : 이남용 (Lee, NamYong)</td>
					</tr>
					<tr>
						<td>학 력 : Ph. D ( Mississippi State Univ. )</td>
					</tr>
					<tr>
						<td>연 구 실 : 정보과학관 222호</td>
					</tr>
					<tr>
						<td>이 메 일 : nylee@ssu.ac.kr</td>
					</tr>
					<tr>
						<td>연구분야 : 소프트웨어, 시스템 엔지니어링, 소프트웨어 엔지니어링, 전자상거래시스템, 경영정보시스템</td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td rowspan="6"><img id="prof_img" alt="" src="../image/nophoto.png" style="padding: 0 20px 0 0; max-width:160px; width: auto; height: auto;"></td>
					</tr>
					<tr>
						<td>성 명(영문) : 신용태 (Shin, YongTae)</td>
					</tr>
					<tr>
						<td>학 력 : Ph. D ( Univ. of lowa )</td>
					</tr>
					<tr>
						<td>연 구 실 : 정보과학관 222호</td>
					</tr>
					<tr>
						<td>이 메 일 : nylee@ssu.ac.kr</td>
					</tr>
					<tr>
						<td>연구분야 : Computer Networks</td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td rowspan="6"><img id="prof_img" alt="" src="../image/nophoto.png"style="padding: 0 20px 0 0; max-width:160px; width: auto; height: auto;"></td>
					</tr>
					<tr>
						<td>성 명(영문) : 한경석 (Han, KyeongSeok)</td>
					</tr>
					<tr>
						<td>학 력 : Ph. D ( Purdue Univ. )</td>
					</tr>
					<tr>
						<td>연 구 실 : 정보과학관 222호</td>
					</tr>
					<tr>
						<td>이 메 일 : nylee@ssu.ac.kr</td>
					</tr>
					<tr>
						<td>연구분야 : Electronic Business</td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td rowspan="6"><img id="prof_img" alt="" src="../image/nophoto.png" style="padding: 0 20px 0 0; max-width:160px; width: auto; height: auto;"></td>
					</tr>
					<tr>
						<td>성 명(영문) : 오철호 ( Oh, ChulHo )</td>
					</tr>
					<tr>
						<td>학 력 : Ph. D ( Univ. of Illinois-Urbana )</td>
					</tr>
					<tr>
						<td>연 구 실 : 정보과학관 222호</td>
					</tr>
					<tr>
						<td>이 메 일 : nylee@ssu.ac.kr</td>
					</tr>
					<tr>
						<td>연구분야 : Policy Making</td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td rowspan="6"><img id="prof_img" alt="" src="../image/nophoto.png" style="padding: 0 20px 0 0; max-width:160px; width: auto; height: auto;"></td>
					</tr>
					<tr>
						<td>성 명(영문) : 김광용 ( Kim, KwangYong )</td>
					</tr>
					<tr>
						<td>학 력 : Ph. D ( Georgia State Univ. )</td>
					</tr>
					<tr>
						<td>연 구 실 : 정보과학관 222호</td>
					</tr>
					<tr>
						<td>이 메 일 : nylee@ssu.ac.kr</td>
					</tr>
					<tr>
						<td>연구분야 : Digital Business</td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td rowspan="6"><img id="prof_img" alt="" src="../image/nophoto.png" style="padding: 0 20px 0 0; max-width:160px; width: auto; height: auto;"></td>
					</tr>
					<tr>
						<td>성 명(영문) : 전삼현 ( Jun, SamHyun )</td>
					</tr>
					<tr>
						<td>학 력 : Dr. Jur. ( Frankfurt Univ. )</td>
					</tr>
					<tr>
						<td>연 구 실 : 정보과학관 222호</td>
					</tr>
					<tr>
						<td>이 메 일 : nylee@ssu.ac.kr</td>
					</tr>
					<tr>
						<td>연구분야 : Business Laws</td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr><td>&nbsp;</td></tr>
		            <tr>
						<td rowspan="6"> <img id="prof_img" alt="" src="../image/nophoto.png" style="padding: 0 20px 0 0; max-width:160px; width: auto; height: auto;"></td>
					</tr>
					<tr>
						<td>성 명(영문) : 이정현 ( Yi, JungHyun )</td>
					</tr>
					<tr>
						<td>학 력 : Ph. D ( Univ. of California )</td>
					</tr>
					<tr>
						<td>연 구 실 : 정보과학관 222호</td>
					</tr>
					<tr>
						<td>이 메 일 : nylee@ssu.ac.kr</td>
					</tr>
					<tr>
						<td>연구분야 : Network Security</td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td rowspan="6"> <img id="prof_img" alt="" src="../image/nophoto.png" style="padding: 0 20px 0 0; max-width:160px; width: auto; height: auto;"></td>
					</tr>
					<tr>
						<td>성 명(영문) : 최정일 ( Choi, JeongIl )</td>
					</tr>
					<tr>
						<td>학 력 : Ph. D ( Univ. of Nebraska-Lincoln )</td>
					</tr>
					<tr>
						<td>연 구 실 : 정보과학관 222호</td>
					</tr>
					<tr>
						<td>이 메 일 : nylee@ssu.ac.kr</td>
					</tr>
					<tr>
						<td>연구분야 : Electronic Business</td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td rowspan="6"> <img id="prof_img" alt="" src="../image/nophoto.png" style="padding: 0 20px 0 0; max-width:160px; width: auto; height: auto;"></td>
					</tr>
					<tr>
						<td>성 명(영문) : 최용락 ( Choi, YongRak )</td>
					</tr>
					<tr>
						<td>학 력 : Ph. D ( Univ. of Soongsil )</td>
					</tr>
					<tr>
						<td>연 구 실 : 정보과학관 222호</td>
					</tr>
					<tr>
						<td>이 메 일 : nylee@ssu.ac.kr</td>
					</tr>
					<tr>
						<td>연구분야 : Data Base</td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr><td>&nbsp;</td></tr>
					<tr>
						<td rowspan="6"> <img id="prof_img" alt="" src="../image/nophoto.png" style="padding: 0 20px 0 0; max-width:160px; width: auto; height: auto;"></td>
					</tr>
					<tr>
						<td>성 명(영문) : 김종배 ( Kim, JongBae )</td>
					</tr>
					<tr>
						<td>학 력 : Ph. D ( Univ. of Soongsil )</td>
					</tr>
					<tr>
						<td>연 구 실 : 정보과학관 222호</td>
					</tr>
					<tr>
						<td>이 메 일 : nylee@ssu.ac.kr</td>
					</tr>
					<tr>
						<td>연구분야 : Software Engineering</td>
					</tr>
					<tr><td>&nbsp;</td></tr>
					<tr><td>&nbsp;</td></tr>
				</table>
			</div>
		</div>
        <c:import url="../import/footer.jsp"/>
    </body>
</html>