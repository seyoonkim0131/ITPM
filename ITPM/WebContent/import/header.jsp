<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function submenu() {
	   if($('#hide').css('display') == 'none') {
	      $('#hide').css('display', 'block');
	   } else if($('#hide').css('display') == 'block') {
	      $('#hide').css('display', 'none');
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
	$(window).resize(function(){
	   if(getWidth() <= '767') { //mobile
	      document.getElementById('whiteLogo').style.display = 'block';
	      document.getElementById('logo').style.display = 'none';
	      document.getElementById('grayMenu').style.display = 'none';
	      document.getElementById('logoSpace').style.display = 'none';
	      $('.mob').css('display', 'block');
	      $('#navbar').css('max-height', '700px');
	   } else {
	      document.getElementById('whiteLogo').style.display = 'none';
	      document.getElementById('logo').style.display = 'block';
	      document.getElementById('grayMenu').style.display = 'block';
	      document.getElementById('logoSpace').style.display = 'block';
	      $('.mob').css('display', 'none');
	      $('#navbar').css('max-height', '40px');
	   }
	});
	$(document).ready(function(){
	   if(getWidth() <= '767') {
	      document.getElementById('whiteLogo').style.display = 'block';
	      document.getElementById('logo').style.display = 'none';
	      document.getElementById('grayMenu').style.display = 'none';
	      document.getElementById('logoSpace').style.display = 'none';
	      $('.mob').css('display', 'block');
	      $('#navbar').css('max-height', '700px');
	   } else {
	      document.getElementById('whiteLogo').style.display = 'none';
	      document.getElementById('logo').style.display = 'block';
	      document.getElementById('grayMenu').style.display = 'block';
	      document.getElementById('logoSpace').style.display = 'block';
	      $('.mob').css('display', 'none');
	      $('#navbar').css('max-height', '40px');
	   }
	   
	   $('#hideUl1').click(function() {
	      if($('#hideUl1 > ul').css('display') == 'none') {
	         $('#hideUl1 > ul').css('display', 'block');
	      } else {
	         $('#hideUl1 > ul').css('display', 'none');
	      }
	   });
	   $('#hideUl2').click(function() {
	      if($('#hideUl2 > ul').css('display') == 'none') {
	         $('#hideUl2 > ul').css('display', 'block');
	      } else {
	         $('#hideUl2 > ul').css('display', 'none');
	      }
	   });
	   /* $('#mobGoLogin').click(function() {
			if(document.location.href.indexOf('.do') != -1) {
				location.href="../login/login.jsp";
			} else {
				if(document.location.href.split('ITPM/')[1] == 'index.jsp' || document.location.href.split('ITPM/')[1] == '' || document.location.href.indexOf('.do') != -1) {
					location.href="../login/login.jsp";
				} else {
					location.href="login/login.jsp";
				}
			}
	   }); */
	   $('#mobNotebook').click(function() {
			if(document.location.href.indexOf('.do') != -1) {
				document.getElementById('goNotebook').action = 'getAllMemberList.do';
				document.getElementById('goNotebook').submit();
			} else if(document.location.href.split('ITPM/')[1] == 'index.jsp') { 
				document.getElementById('goNotebook').action = 'getAllMemberList.do';
				document.getElementById('goNotebook').submit();
			} else if(document.location.href.indexOf('.do') == -1) {
				document.getElementById('goNotebook').action = '../getAllMemberList.do';
				document.getElementById('goNotebook').submit();
			}
	   });
	   console.log(document.location.href.indexOf('.do'));
	   if(document.location.href.indexOf('.do') != -1) {console.log('ddfsad');
	      document.getElementById('home').href = 'index.jsp';
	      document.getElementById('whiteHome').href = 'index.jsp';
	      document.getElementById('staff').href = 'admin/insertStudent.jsp';
	      document.getElementById('aboutItpm').href = 'about/itpm.jsp';
	      document.getElementById('aboutProf').href = 'about/prof.jsp';
	      document.getElementById('aboutVi').href = 'about/vision.jsp';
	      document.getElementById('aboutMap').href = 'about/map.jsp';
	      document.getElementById('acEdu').href = 'academic/education.jsp';
	      document.getElementById('regul').href = 'regulation/regulation.jsp';
	      document.getElementById('acCal').href = 'academic/calendar.jsp';
	      document.getElementById('boardNotice').href = 'board/notice.jsp';
	      document.getElementById('mobAboutItpm').href = 'about/itpm.jsp';
	      document.getElementById('mobAboutProf').href = 'about/prof.jsp';
	      document.getElementById('mobAboutVi').href = 'about/vision.jsp';
	      document.getElementById('mobAboutMap').href = 'about/map.jsp';
	      document.getElementById('mobAcEdu').href = 'academic/education.jsp';
	      document.getElementById('mobRegul').href = 'regulation/regulation.jsp';
	      document.getElementById('mobAcCal').href = 'academic/calendar.jsp';
	      document.getElementById('mobBoardNotice').href = 'board/notice.jsp';
	      /* if(document.getElementById('mobGoLogin')) {
		      document.getElementById('mobGoLogin').href = 'login/login.jsp';
	      } */
	      if(document.getElementById('login')) {
		      document.getElementById('login').href = 'login/login.jsp';
	      }
	      if(document.getElementById('goLogin')) {
		      document.getElementById('goLogin').href = 'login/login.jsp';
	      }
	      if(document.getElementById('notebook')) {
		      document.getElementById('notebook').href = 'login/login.jsp';
	      }
	   } else {
		   document.getElementById('logoutForm').action = '../logout.do';
	   }
	   console.log(document.location.href.split('ITPM/')[1]);
	   if(document.location.href.split('ITPM/')[1] == 'index.jsp' || document.location.href.split('ITPM/')[1] == '' /*|| document.location.href.indexOf('.do') != -1*/) { console.log('ddddd');
	      document.getElementById('mobAboutItpm').href = 'about/itpm.jsp';
	      document.getElementById('mobAboutProf').href = 'about/prof.jsp';
	      document.getElementById('mobAboutVi').href = 'about/vision.jsp';
	      document.getElementById('mobAboutMap').href = 'about/map.jsp';
	      document.getElementById('mobAcEdu').href = 'academic/education.jsp';
	      document.getElementById('mobRegul').href = 'regulation/regulation.jsp';
	      document.getElementById('mobAcCal').href = 'academic/calendar.jsp';
	      document.getElementById('mobBoardNotice').href = 'board/notice.jsp';
	      document.getElementById('space').style.display = 'none';
	      document.getElementById('headMenu').style.display = 'none';
	      document.getElementById('home').href = 'index.jsp';
	      document.getElementById('whiteHome').href = 'index.jsp';
	      document.getElementById('staff').href = 'admin/insertStudent.jsp';
	      /* if(document.getElementById('mobGoLogin')) {
		      document.getElementById('mobGoLogin').href = 'login/login.jsp';
	      } */
	      if(document.getElementById('login')) {
		      document.getElementById('login').href = 'login/login.jsp';
	      }
		  document.getElementById('bullet').style.background = "url('image/bullet_foot_li.gif') no-repeat 0";
		  document.getElementById('logoutForm').action = 'logout.do';
	   }
	   if(document.location.href.split('ITPM/')[1] == 'logout.do') {
		   document.getElementById('space').style.display = 'none';
		   document.getElementById('headMenu').style.display = 'none';
	   }
	   
	});
</script>
</head>
<body role="document-header" >
   <nav id="redMenu" class="navbar navbar-inverse navbar-fixed-top" style="background-color: #b31b1b; border-style: none; letter-spacing: 2px;">
      <div class="container-header">
         <a id="whiteHome" class="navbar-brand" href="../index.jsp"><img id="whiteLogo" alt="white logo" src="../image/main_logo.png" style="disply: none;" onerror="this.src='image/main_logo.png'"></a>
         <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
            </button>
         </div>
		<form action="logout.do" id="logoutForm" method="post" style="display: none;"></form>
         <div id="navbar" class="navbar-collapse collapse" style="overflow-y:hidden; overflow-x:hidden; background-color: #b31b1b;" >
            <ul class="nav navbar-nav" style="float: right; font-size: 11px;">
               <li style="line-height: 30px;"><a id="home" href="../index.jsp" style="color:#fff;">HOME</a></li>
               <c:choose>	
					<c:when test="${null eq loginSession}" >
		               <li><a id="login" href="../login/login.jsp" style="color:#fff;">LOGIN</a></li>
					</c:when>
					<c:otherwise>
						<li><a id="logout" style="color:#fff;" href="javascript: return false;" onclick="document.getElementById('logoutForm').submit();">LOGOUT</a></li>
					</c:otherwise>
				</c:choose>
               <c:choose>
					<c:when test="${null eq loginSession}">
						<li class="mob" style="display: none;"><span id="mobGoLogin" style="color:#fff; font-size: 13px; cursor:pointer;" onclick="javascript:alert('로그인 후 이용하세요.'); return false;">원우수첩</span></li>
					</c:when>
					<c:otherwise>
						<form name="goNotebook" id="goNotebook" method="get" style="display: none;">
							<input type="hidden" id="studentId" name="studentId" value="${loginSession.studentId}">
						</form>
						<li class="mob" style="display: none;"><span id="mobNotebook" style="color:#fff; cursor:pointer; font-size: 13px;">원우수첩</span></li>
					</c:otherwise>
               </c:choose>
               <li id="hideUl1" class="mob" style="display: none;"><span style="color:#fff; font-size: 13px;">대학원소개</span><span class="caret" style="color: #fff;"></span>
                  <ul class="nav navbar-nav" style="display: none;">
                     <li><a id="mobAboutItpm" href="../about/itpm.jsp" style="color:#fff;">학과소개</a></li>
                     <li><a id="mobAboutProf" href="../about/prof.jsp" style="color:#fff;">교수소개</a></li>
                     <li><a id="mobAboutVi" href="../about/vision.jsp" style="color:#fff;">교육비전</a></li>
                     <li><a id="mobAboutMap" href="../about/map.jsp" style="color:#fff;">방문안내</a></li>
                  </ul>
               </li>
               <li id="hideUl2" class="mob" style="display: none;"><span style="color:#fff; font-size: 13px;">학사정보&nbsp;&nbsp;</span><span class="caret" style="color: #fff;"></span>
                  <ul class="nav navbar-nav" style="display: none;">
                     <li><a href="../academic/education.jsp" id="mobAcEdu" style="color:#fff;">개설과정</a></li>
                     <li><a href="../regulation/regulation.jsp" id="mobRegul" style="color:#fff;">규정</a></li>
                     <li><a href="../academic/calendar.jsp" id="mobAcCal" style="color:#fff;">학사일정</a></li>
                     <li><a href="../board/notice.jsp" id="mobBoardNotice" style="color:#fff;">공지사항</a></li>
                  </ul>
               </li>
               <li class="mob" style="display: none;"><span style="font-size: 13px;"><a href="http://grad.ssu.ac.kr/web/grad/enter_a" target="_blank" style="color:#fff;">입학정보</a></span></li>
               <li><a id="staff" href="../admin/insertStudent.jsp" onclick="alert('준비중입니다.'); return false;" style="color:#fff;">ADMIN</a></li>
            </ul>
         </div>
      </div>
   </nav><div id="space"><br/><br/>&nbsp;</div>
   <div id="headMenu" class="container-fluid" >
      <div class="row">
         <div id="logo" class="col-lg-12">
            <a href="../index.jsp"><img alt="숭실대학교 대학원 IT정책경영학과" src="../image/menu_itpmlogo.png" width="400px" height="65px" onerror="this.src='image/menu_itpmlogo.png'"></a>
         </div><div id="logoSpace"><br/>&nbsp;</div>
         <div id="grayMenu" class="grayMenu col-lg-12" style="max-height:50px; z-index:100; background-color: #f7f7f7; border-style: solid; border-color: #ececec; border-left-style: none; border-right-style: none; border-width: 1px;">
            <div id="navbar" class="navbar-collapse collapse" style="font-size: 16px;">
               <ul class="nav navbar-nav dropdown" style="max-height:50px; padding: 0 0 0 0; float: inherit;" role="menu">
                  <li style="padding-left: 1.5%; width: 25%;">
                  <a href="#" style="padding:19px 15px 11px 15px;"><img style="display:inherit; margin:0 auto;" alt="대학원정보" src="../image/menuimage_itpminfo.png" onerror="this.src='image/menuimage_itpminfo.png'"></a>
                     <ul class="dropdown-sub list-group"  style="width:94%;">
                        <li class="list-group-item" role="presentation"><a href="../about/itpm.jsp" id="aboutItpm">학과소개</a></li>
                        <li class="list-group-item" role="presentation"><a href="../about/prof.jsp" id="aboutProf">교수소개</a></li>
                        <li class="list-group-item" role="presentation"><a href="../about/vision.jsp" id="aboutVi">교육비전</a></li>
                        <li class="list-group-item" role="presentation"><a href="../about/map.jsp" id="aboutMap">방문안내</a></li>
                     </ul>
                  </li>
                  <li style="padding-right: 1.5%; width: 25%;">
                  <a href="#" style="padding:19px 15px 11px 15px; "><img style="display:inherit; margin:0 auto;" alt="학사정보" src="../image/menuimage_schoolinfo.png" onerror="this.src='image/menuimage_schoolinfo.png'"></a>
                     <ul class="dropdown-sub list-group" style="width:94%;">
                        <li class="list-group-item" role="presentation"><a href="../academic/education.jsp" id="acEdu">개설과정</a></li>
                        <li class="list-group-item" role="presentation"><a href="../regulation/regulation.jsp" id="regul">규정</a></li>
                        <li class="list-group-item" role="presentation"><a href="../academic/calendar.jsp" id="acCal">학사일정</a></li>
                        <li class="list-group-item" role="presentation"><a href="../board/notice.jsp" id="boardNotice">공지사항</a></li>
                     </ul>
                  </li>
                  <li style="padding-left: 1.5; width: 25%;"><a href="http://grad.ssu.ac.kr/web/grad/enter_a" target="_blank" style="padding:19px 15px 11px 15px;"><img style="display:inherit; margin:0 auto;" alt="입학정보" src="../image/menuimage_admission.png" onerror="this.src='image/menuimage_admission.png'"></a></li>
                  <c:choose>
					<c:when test="${null eq loginSession}">
						<li style="padding-right: 3%; width: 25%;"><a href="../login/login.jsp" id="goLogin" style="color:#fff;"><img style="display:inherit; margin:0 auto;" alt="원우수첩" src="../image/menuimage_notebook.png" onerror="this.src='image/menuimage_notebook.png'"></a></li>
					</c:when>
					<c:otherwise>
						<form name="goNotebook" id="goNoteBook" method="get" action="../getAllMemberList.do" style="display: none;">
							<input type="hidden" id="studentId" name="studentId" value="${loginSession.studentId}"> 
						</form>
						<li style="padding-right: 3%; width: 25%;"><a href="javascript:document.getElementById('goNoteBook').submit();" id="notebook" style="color:#fff;"><img style="display:inherit; margin:0 auto;" alt="원우수첩" src="../image/menuimage_notebook.png" onerror="this.src='image/menuimage_notebook.png'"></a></li>
					</c:otherwise>
               </c:choose>
               </ul>
            </div>
         </div>
         <div class="col-lg-12">
            <img alt="banner" src="../image/banner_1.png" width="100%" onerror="this.src='image/banner_1.png'">
         </div>
      </div>
   </div>
</body>
</html>