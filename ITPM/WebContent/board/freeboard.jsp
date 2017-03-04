<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
		<link rel="Shortcut Icon" href="../image/favicon.ico" />
		<title>자유게시판 | IT정책경영학과</title>
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
		<c:import url="../import/header.html" />
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
						</ul>
					</nav>
				</div>
			</div>
			<div class="small-title">
				<p><span>자유게시판</span></p>
			</div>
			<div class="content">
				<table class="bbs-list" style="width: 80%; border-top: solid 2px #b31b1b; table-layout: fixed; border-spacing: 0;">
					<colgroup>
						<col width="5%"/>
						<col width="auto"/>
						<col width="5%"/>
						<col width="10%"/>
						<col width="20%"/>
						<col width="10%"/>
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>파일</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="text-align: center;">3</td>
							<td style="text-align: left;">2015년 3월 숭실대 PM연구소 "3월 PM정기세미나: 프로젝트관리방법론(PRINCE2)...</td>
							<td style="text-align: center;"><img alt="file" src="../image/ico_file.gif" style="vertical-align: middle;"></td>
							<td style="text-align: center;">남재덕</td>
							<td style="text-align: center;">2015.03.19</td>
							<td style="text-align: center;">5036</td>
						</tr>
						<tr>
							<td style="text-align: center;">2</td>
							<td style="text-align: left;">2015년 3월 숭실대 PM연구소 "3월 PM정기세미나: 프로젝트관리방법론(PRINCE2)...</td>
							<td style="text-align: center;"><img alt="file" src="../image/ico_file.gif" style="vertical-align: middle;"></td>
							<td style="text-align: center;">남재덕</td>
							<td style="text-align: center;">2015.03.19</td>
							<td style="text-align: center;">5036</td>
						</tr>
						<tr>
							<td style="text-align: center;">1</td>
							<td style="text-align: left;">2015년 3월 숭실대 PM연구소 "3월 PM정기세미나: 프로젝트관리방법론(PRINCE2)...</td>
							<td style="text-align: center;"></td>
							<td style="text-align: center;">남재덕</td>
							<td style="text-align: center;">2015.03.19</td>
							<td style="text-align: center;">5036</td>
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