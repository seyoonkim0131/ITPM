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
   <body>
      <c:import url="../import/header.jsp" />
      <div class="container" id="side_menu">
            <div class="redline"></div>
            <div class="menutitle">학사정보</div>
            <div class="grayline"></div>
            <ul class="nav nav-pills nav-stacked">
                <li class="inactive"><a href="#">개설과정</a></li>
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
               <div class="view">
                  <fieldset>
                     <legend>게시판 상세보기</legend>
                  <table>
                     <colgroup>
                        <col width="22%">
                        <col>
                     </colgroup>
                     <tbody>
                        <tr>
                           <th colspan="2" class="title">2016-2 성적확인 및 정정기간 안내</th>
                        </tr>
                        <tr>
                           <th>작성자</th>
                           <td>관리자</td>
                        </tr>
                        <tr>
                           <th>작성일</th>
                           <td>2017.03.03</td>
                        </tr>
                        <tr>
                           <th>조회수</th>
                           <td>324</td>
                        </tr>
                        <tr>
                           <th>첨부파일</th>
                           <td>
                              <ul class="file_list">
                                 <li><a href="#" target="_blank">첨부파일</a></li>
                              </ul>
                           </td>
                        </tr><!-- 여기까지가 헤더 -->
                        <tr>
                           <td colspan="2" class="content">
                              <div>
                                 <div class="form-group">
                                    <div class="col-lg-12">
1. 성적평가기간 :  2016. 12. 15. (목) 09:00 ~ 12. 27. (화) 17:00<br>
   => 과목 담당 교수님꼐서 직접 성적을 입력하시는 기간입니다.<br>
 <br>
2. 성적확인기간 및 정정기간 : 2016. 12. 28. (수) 10:00 ~ 12. 30. (금) 17:00<br>
   => U-SAINT 로그인 후 -> 성적 / 졸업 -> 학기별 성적 조회<br>
       (강의만족도 조사 기간에는 강의만족도 화면에서 만족도 조사 후 확인 가능)<br>
 <br>
3. 강의만족도 조사 기간 : 2016. 12. 6. (화) 09:00 ~ 12. 21. (수) 24:00<br>
   => 별도 메일 공지 확인하시기 바랍니다.<br>
 <br>
※ 강의만족도 조사를 하지 않은 학생은 성적 열람이 제한됨.<br>
※ 성적 확인 후 이의가 있을 경우, 정정기간 내에 과목담당 교수에게 정정 요청 하여야 하며,<br>
   이 기간이 지나면 성적 정정이 불가함.<br>
※ 성적평가 기간 중에는 조회한 성적이 변동될 수 있음.<br>
                                       <!-- <textarea class="form-control" cols="100%" rows="100%">
제14조(장학금의 정의) 대학원 IT정책경영학과의 장학금지급기준은 대학원규정에 의한다.

①정부 및 공공기관의 공직관료(사무관급/령관급 이상)가 박사과정에 입학할 경우에 재학기간 중의 매학기 등록금의 일정부분(최고 50%)을 공직관료 장학금으로 지급가능하다.

②성적이 우수한 학생에게는 일반장학금, 연구조교장학금, 교육조교장학금 등을 지급할 수 있다.

③기타 숭실대학교 발전기금 또는 비영리단체(학회 등)가 제공하는 기금이 가용할 경우에 등록금의 일정금액을 장학금으로 지급할 수 있다.

④장학생 선정은 교수들의 추천을 통해 운영위원회에서 결정한다.

제15조(장학금의 재원) IT정책경영학과의 우수한 신입생을 유치하고 최고 수준의 석박사과정을 운영하기 위하여 장학금재원을 다음과 같이 확보한다.

① IT정책경영학과 주임교수는 유수한 기업 등과 협약을 체결하여 필요한 재정적 지원을 받을 수 있다.

②장학금의 재원으로 다양한 기금을 활용할 수 있다.

③기타 재원에 대한 사안은 IT정책경영학과 운영위원회의 결정에 따른다.
                                       </textarea> -->
                                    </div>
                                 </div>
                              </div>
                           </td>
                        </tr>
                     </tbody>
                  </table>
                  </fieldset>
               </div>
            <div class="button-list">
               <ul class="right">
                  <li>
                     <a href="notice.jsp" >목록</a>
                  </li>
               </ul>
            </div><br>
            <div class="before-next">
               <dl>
                  <dt>다음글</dt>
                  <dd><a>2016년도 석사논문 최종심사 준비서류 안내</a></dd>
               </dl>
               <dl>
                  <dt>이전글</dt>
                  <dd><a href="#" onclick="alert('준비중입니다.'); return false;">2016-2 신입생 수시모집</a></dd>
               </dl>
            </div>
           </div>
           <div style="width: 80%;">&nbsp;</div>
      </div>
      <c:import url="../import/footer.jsp" />
   </body>
</html>