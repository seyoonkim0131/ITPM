<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
function submenu() {
	var hide = document.getElementById("hide");
	if(hide.style.display == "none") {
		hide.style.display = "block";
	} else {
		hide.style.display = "none";
	}
}
$(document).ready(function(){
	$("#about").hover(function(){
		if(document.getElementById('about2').style.display == 'none') {
			document.getElementById('about2').style.display = 'block';
			//document.getElementById('about').style.font
		} else {
			document.getElementById('about2').style.display = 'none';
		}
	});
	$("#inform").hover(function(){
		if(document.getElementById('inform2').style.display == 'none') {
			document.getElementById('inform2').style.display = 'block';
		} else {
			document.getElementById('inform2').style.display = 'none';
		}
	});
	$("#comm").hover(function(){
		if(document.getElementById('comm2').style.display == 'none') {
			document.getElementById('comm2').style.display = 'block';
		} else {
			document.getElementById('comm2').style.display = 'none';
		}
	});
});
</script>
</head>
<body>
<div class="head-menu">
	<nav class="head-nav" style="padding-left: 60%;">
		<div class="nav-div"><a class="head-a" href="../index.jsp">HOME</a></div>
		<div class="nav-div"><a class="head-a" href="#">CONTACT US</a></div>
		<div class="nav-div"><a class="head-a" href="#">SITE MAP</a></div>
		<div class="nav-div"><a class="head-a" href="../admin/insertStudent.jsp">STAFF</a></div>
		<div class="nav-div"><a class="head-a" href="#"><img alt="question mark" src="../image/icon_search.png" width="18px" height="15px" style="margin-top: 2px;"></a></div>
	</nav>
</div>
<div>
	<p style="padding-left: 2%;"><a href="#">
		<img alt="숭실대학교 대학원" src="../image/menu_ssu_logo.png" width="100px" height="40px">
		<img alt="IT정책경영학과" src="../image/menu_itpm_logo.png" width="220px" height="40px">
	</a></p>
	<ul style="overflow: auto; background-color: #f7f7f7; height: 40px; border-color: #e4e4e4; border-style: solid; border-width: 1px; padding-left: 10%; margin-bottom: 5px;">
		<li style="float: left; padding-right: 12%; padding-top: 1.4%;"><a id="about" href="#"><strong>대학원 소개</strong></a></li>
		<li style="float: left; padding-right: 12%; padding-top: 1.4%;"><a id="inform" href="#"><strong>학사정보</strong></a></li>
		<li style="float: left; padding-right: 12%; padding-top: 1.4%;"><a id="admis" href="http://grad.ssu.ac.kr/web/grad/enter_a" target="_blank"><strong>입학정보</strong></a></li>
		<li style="float: left; padding-right: 12%; padding-top: 1.4%;"><a id="comm" href="#"><strong>커뮤니티</strong></a></li>
		<li style="float: left; padding-right: 12%; padding-top: 1.4%;"><a id="note" href="../notebook/notebook.jsp"><strong>원우수첩</strong></a></li>
	</ul>
	<div>
		<div id="about2" style="display: none; position: absolute; z-index: 991; padding-left: 10%; width: 400px;">
			<span style="padding-right: 3%;"><font size="2px">학과소개</font></span>
			<span style="padding-right: 3%;"><font size="2px">교수소개</font></span>
			<span style="padding-right: 3%;"><font size="2px">비전&연혁</font></span>
			<span><font size="2px">찾아오시는 길</font></span>
		</div>
		<div id="inform2" style="display: none; position: absolute; z-index: 991; padding-left: 28.5%; width: 450px;">
			<span style="padding-right: 3%;"><font size="2px">개설과정</font></span>
			<span style="padding-right: 3%;"><font size="2px">규정</font></span>
			<span style="padding-right: 3%;"><font size="2px">학사일정</font></span>
			<span><font size="2px">자료실</font></span>
		</div>
		<div id="comm2" style="display: none; position: absolute; z-index: 991; padding-left: 62%; width: 380px;">
			<span style="padding-right: 3%;"><font size="2px">공지사항</font></span>
			<span style="padding-right: 3%;"><font size="2px">자유게시판</font></span>
			<span style="padding-right: 3%;"><font size="2px">Q&A</font></span>
			<span><font size="2px">갤러리</font></span>
		</div>
	</div>
	<img alt="banner" src="../image/banner.png" style="position: relative;">
</div>
</body>
</html>