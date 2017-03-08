<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
      <meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
      <link rel="Shortcut Icon" href="../image/favicon.ico" />
      <title>원우수첩 | IT정책경영학과</title>
      <link rel="stylesheet" href="../css/itpm.css" />
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
      <script type="text/javascript">
         function submenu() {
            //$("#hide").display = "block";
            var sub = document.getElementById("hide");
            if(sub.style.display == 'none') {
               sub.style.display = 'block';
            } else {
               sub.style.display = 'none';
            }
         }
      </script>
   </head>
   <body>
      <c:import url="../import/header.jsp" />
      <div class="body">
         <div  class="floating">
            <div style="height: 14px; background-color: #b31b1b;">&nbsp;</div>
            <div style="padding: 15px 15px 15px 15px; font-size: 15pt; font-weight: 900;">커뮤니티</div>
            <div style="height: 2px; background-color: #b6b6b6;"></div>
            <div>
               <nav>
                  <ul>
                     <li class="menu" onclick="submenu()"><a href="#">공지사항</a>
                        <ul id="hide" class="hide" style="display: none;">
                           <li><a href="#">대학원 공지사항</a></li>
                           <li><a href="#">학과 공지사항</a></li>
                        </ul>
                     </li>
                     <li><a href="freeboard.jsp">자유게시판</a></li>
                     <li><a href="qnaboard.jsp">Q&A</a></li>
                     <li><a href="gallery.jsp">갤러리</a></li>
                     <li><a href="notebook.jsp">원우수첩</a></li>
                  </ul>
               </nav>
            </div>
         </div>
         <div class="small-title">
            <p><span>원우수첩</span></p>
         </div>
         <div class="content">
            <table class="bbs-list" style="width: 80%; border-top: solid 2px #b31b1b; table-layout: fixed; border-spacing: 0;">
               
               <tbody>                     
                  <tr align="center">
                     <td rowspan=5 style="padding-right"><img src="../image/1.jpg" WIDTH="155" HEIGHT="177" BORDER="1" style="vertical-align: middle;"></td>
                     <td width="100" style="padding-right:50px">기수</td><td width="280" style="text-align:left">1기</td> 
                  </tr>
                  <tr align="left">
                     <td width="100" style="padding-right:50px">이름</td><td width="280" style="text-align:left">류훈선</td>                        
                  </tr>
                  <tr align="left">
                     <td width="100" style="padding-right:50px">회사명</td><td width="280" style="text-align:left">숭실대학교</td>
                  </tr>
                  <tr align="left">
                     <td width="100" style="padding-right:50px">핸드폰</td><td width="280" style="text-align:left">010-1234-1234</td>
                  </tr>
                  <tr align="left">
                     <td width="100" style="padding-right:50px">E-mail</td><td width="280" style="text-align:left">hoonseon@nate.com</td>
                  </tr>                     
               </tbody>
            </table>
            <div class="paginate">
               <a href="#"><img style="vertical-align: middle;" alt="page prev more" src="../image/page_prev_more.gif"></a>
               <a href="#"><img style="vertical-align: middle;" alt="page prev" src="../image/page_prev.gif"></a>
               <a href="#" class="num">1</a>
               <a href="#" class="num">2</a>
               <a href="#" class="num">3</a>
               <a href="#" class="num">4</a>
               <a href="#" class="num">5</a>
               <a href="#" class="num">6</a>
               <a href="#" class="num">7</a>
               <a href="#" class="num">8</a>
               <a href="#" class="num">9</a>
               <a href="#" class="num">10</a>
               <a href="#"><img style="vertical-align: middle;" alt="page next" src="../image/page_next.gif"></a>
               <a href="#"><img style="vertical-align: middle;" alt="page next more" src="../image/page_next_more.gif"></a>
            </div>
         </div>
      </div>
      <c:import url="../import/footer.jsp" />
   </body>
</html>