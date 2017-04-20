<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
      <meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
      <link rel="Shortcut Icon" href="../image/favicon.ico" />
      <title>공지사항 | IT정책경영학과</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <link rel="stylesheet" href="../css/itpm.css" />
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script type="text/javascript">
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
     
   </head>
   <body class="document" role="document">
      <c:import url="../import/header.jsp" />
      <div class="container" id="side_menu">
            <div class="redline"></div>
            <div class="menutitle">학사정보</div>
            <div class="grayline"></div>
            <ul class="nav nav-pills nav-stacked">
                <li class="inactive"><a href="../academic/education.jsp">개설과정</a></li>
                <li class="inactive" onclick="submenu()">
                   <a href="#">규정</a>
                   <ul id="hide">
                      <li class="inactive"><a href="http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=23" target="_blank">학칙</a></li>
                      <li class="inactive"><a href="http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=25" target="_blank">시행세칙</a></li>
                      <li class="inactive"><a href="../regulation/regulation.jsp">학과내규</a></li>
                      <li class="inactive"><a href="http://grad.ssu.ac.kr/web/grad/paper_f" target="_blank">논문심사기준</a></li>
                   </ul>
                </li>
                <li class="inactive"><a href="../academic/calendar.jsp">학사일정</a></li>
                <li class="active1"><a href="../board/notice.jsp">공지사항</a></li>
            </ul>
        </div>
        <div class="content-div">
         <div class="small-title">
               <p>
                   <span><img alt="menu main title bar" src="../image/menu_main_titlebar.png">공지사항</span>
                   <span class="small-title-right">
                       <small><a href="../index.jsp">홈</a> > 학사정보 > 공지사항</small>
                   </span>
               </p>
          </div>
          <div class="content-board">
                 <div class="table_list">
                 	<ul>
                 		<li>
                 			내용이 없습니다.
                 		</li>
                 	</ul>
                    <!-- <ul>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                <img alt="중요공지" src="../image/notice.png">
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="noticeDetail.jsp">2016-2 성적확인 및 정정기간 안내</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.19
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">2016-2 강의만족도 조사(강의평가)</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.18
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">학위논문 원문파일 및 완본 제출일 안내</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.17
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">2016년도 영어교육 프로그램 Orientation</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.16
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">2016-1 외국어 시험 안내</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.15
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">2016-1 신입생 수시 2차 추가모집</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.14
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">2016-1 신입생 수시 1차 추가모집</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.13
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">ICT 국가표준 아이디어 공모</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.12
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">2016-1 예비군 기본교육 편성 안내</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.11
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">2015학년도 논문 관련 일정 안내</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.10
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">제 1회 학위수여식 안내</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.9
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">2015학년도 논문 관련 일정 안내</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.8
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">산학협력 프로젝트 공모</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.7
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">신입생 LAB실 임시 배정</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.6
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">강의실 공사 관련 안내</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.5
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">2015년도 영어교육 프로그램 Orientation</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.4
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">2015-2 강의만족도 조사(강의평가)</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.3
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">2015년도 학위논문 원문파일 및 완본 제출일 안내</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.2
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">2014-2 논문지도비 납부 안내</a>
                          </div>
                       </li>
                       <li>
                          <div class="top_area">
                             <div class="write_num">
                                NO.1
                             </div>
                             <div class="num_area">
                                <span class="table_date"><strong>2017.03.03</strong></span>
                                <span class="table_hit"><strong>342</strong></span>
                             </div>
                          </div>
                          <div class="subject">
                             <a href="#">2014-2학기 시간표 및 강의실 공지</a>
                          </div>
                       </li>
                       
                    </ul> -->
                 </div>
                 
                 <div><p>&nbsp;</p></div>
                 <div><p>&nbsp;</p></div>
                 <div><p>&nbsp;</p></div>
                 <div><p>&nbsp;</p></div>
         <!-- <div class="pagination-centered">
						<div class="pagination">
							<a class="laquo" href="#">&laquo;</a>
							<a class="active" href="#">1</a>
							<a href="#">2</a>
							<a href="#">3</a>
							<a href="#">4</a>
							<a href="#">5</a>
							<a class="raquo" href="#">&raquo;</a>
						</div>
			  </div> -->
         </div>
      </div>
      <c:import url="../import/footer.jsp" />
   </body>
</html>