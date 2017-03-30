<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function submenu() {
	if($('#hide').css('display') == 'none') {
		$('#hide').css('display', 'block');
	} else {
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
	if(getWidth() <= '767') {
		document.getElementById('whiteLogo').style.display = 'block';
		document.getElementById('logo').style.display = 'none';
		document.getElementById('grayMenu').style.display = 'none';
		document.getElementById('logoSpace').style.display = 'none';
	} else {
		document.getElementById('whiteLogo').style.display = 'none';
		document.getElementById('logo').style.display = 'block';
		document.getElementById('grayMenu').style.display = 'block';
		document.getElementById('logoSpace').style.display = 'block';
	}
});

$(document).ready(function(){
	if(getWidth() <= '767') {
		document.getElementById('whiteLogo').style.display = 'block';
		document.getElementById('logo').style.display = 'none';
		document.getElementById('grayMenu').style.display = 'none';
		document.getElementById('logoSpace').style.display = 'none';
	} else {
		document.getElementById('whiteLogo').style.display = 'none';
		document.getElementById('logo').style.display = 'block';
		document.getElementById('grayMenu').style.display = 'block';
		document.getElementById('logoSpace').style.display = 'block';
	}
	if(document.location.href.split('ITPM/')[1] == 'index.jsp' || document.location.href.split('ITPM/')[1] == '') {
		document.getElementById('space').style.display = 'none';
		document.getElementById('headMenu').style.display = 'none';
		document.getElementById('home').href = 'index.jsp';
		document.getElementById('contact').href = '#';
		document.getElementById('siteMap').href = '#';
		document.getElementById('staff').href = 'admin/insertStudent.jsp';
		document.getElementById('search').href = '#';
	}
});
</script>
</head>
<body role="document">
	<nav class="navbar navbar-inverse navbar-fixed-top" style="background-color: #b31b1b; border-style: none; letter-spacing: 2px;">
		<div class="container">
			<a class="navbar-brand" href="#"><img id="whiteLogo" alt="white logo" src="../image/main_logo.png" style="disply: none;"></a>
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav" style="float: right; font-size: 11px;">
					<li style=" line-height: 30px;"><a id="home" href="../index.jsp">HOME</a></li>
					<li><a id="siteMap" href="#">LOGIN</a></li>
					<li><a id="contact" href="#">CONTACT US</a></li>
					<li><a id="staff" href="../admin/insertStudent.jsp">STAFF</a></li>
					<li><a href="#"><img alt="search" src="../image/icon_search.png" onerror="this.src='image/icon_search.png'"></a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</nav><div id="space"><br/><br/>&nbsp;</div>
	<div id="headMenu" class="container-fluid" >
		<div class="row">
			<div id="logo" class="col-lg-12">
				<img alt="숭실대학교 대학원 IT정책경영학과" src="../image/menu_itpmlogo.png" width="400px" height="65px" onerror="this.src='image/menu_itpmlogo.png'">
			</div><div id="logoSpace"><br/>&nbsp;</div>
			<div id="grayMenu" class="col-lg-12" style="background-color: #f7f7f7; border-style: solid; border-color: #ececec; border-left-style: none; border-right-style: none; border-width: 1px;">
				<div id="navbar" class="navbar-collapse collapse" style="font-size: 16px;">
					<ul class="nav navbar-nav dropdown" style="float: inherit;" role="menu">
						<li style="padding-left: 3%; padding-right: 3%; width: 25%;"><a href="#"><img alt="대학원정보" src="../image/manuimage_itpminfo.png"></a>
							<ul class="dropdown-sub list-group">
								<li class="list-group-item" role="presentation"><a href="#">학과소개</a></li>
								<li class="list-group-item" role="presentation"><a href="../about/prof.jsp">교수소개</a></li>
								<li class="list-group-item" role="presentation"><a href="#">교육비전</a></li>
								<li class="list-group-item" role="presentation"><a href="#">방문안내</a></li>
							</ul>
						</li>
						<li style="padding-left: 3%; padding-right: 3%; width: 25%;"><a href="#"><img alt="학사정보" src="../image/manuimage_schoolinfo.png"></a>
							<ul class="dropdown-sub list-group">
								<li class="list-group-item" role="presentation"><a href="../academic/education.jsp">개설과정</a></li>
								<li class="list-group-item" role="presentation"><a href="../regulation/regulation.jsp">규정</a></li>
								<li class="list-group-item" role="presentation"><a href="../academic/calendar.jsp">학사일정</a></li>
								<li class="list-group-item" role="presentation"><a href="../board/notice.jsp">공지사항</a></li>
							</ul>
						</li>
						<li style="padding-left: 3%; padding-right: 3%; width: 25%;"><a href="http://grad.ssu.ac.kr/web/grad/enter_a" target="_blank"><img alt="입학정보" src="../image/manuimage_admission.png"></a></li>
						<li style="padding-left: 3%; width: 25%;"><a href="../getAllMemberList.do"><img alt="원우수첩" src="../image/manuimage_notebook.png"></a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-12">
				<img alt="banner" src="../image/banner_1.png" width="100%">
			</div>
		</div>
	</div>
</body>
</html>