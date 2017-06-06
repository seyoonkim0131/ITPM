<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes"/>
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
		<link rel="Shortcut Icon" href="image/favicon.ico"/>
		<title>공지사항 | IT정책경영학과</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/itpm.css"/>
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
				$('#update').click(function() {
					if(confirm("글을 수정하시겠습니까?")==true){
						$('#updateForm').submit();	
					}else{
						return false;                  		
					}
				});
				$('#list').click(function() {
					location.href='getNoticeList.do';
				});
			});
		</script>
	</head>
	<body>
		<c:import url="../import/header.jsp"/>
		<div class="container" id="side_menu">
			<div class="redline"></div>
			<div class="menutitle">학사정보</div>
			<div class="grayline"></div>
			<ul class="nav nav-pills nav-stacked">
				<li class="inactive"><a href="getAllEduList.do">개설과정</a></li>
				<li class="inactive" onclick="submenu()">
					<a href="#">규정</a>
					<ul id="hide">
						<li class="inactive"><a href="http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=23" target="_blank">학칙</a></li>
						<li class="inactive"><a href="http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=25" target="_blank">시행세칙</a></li>
						<li class="inactive"><a href="getRuleList.do">학과내규</a></li>
						<li class="inactive"><a href="http://grad.ssu.ac.kr/web/grad/paper_f" target="_blank">논문심사기준</a></li>
					</ul>
				</li>
				<li class="inactive"><a href="getAllScheduleList.do">학사일정</a></li>
				<li class="active1"><a href="getNoticeList.do">공지사항</a></li>
			</ul>
		</div>
		<div class="content-div">
			<div class="small-title">
				<p>
					<span><img alt="menu main title bar" src="image/menu_main_titlebar.png">공지사항</span>
					<span class="small-title-right">
						<small><a href="welcome.do">홈</a> > 학사정보 > 공지사항</small>
					</span>
				</p>
			</div>
			<div class="content">
				<form action="updateNotice.do" method="post" id="updateForm" name="updateForm" enctype="multipart/form-data">
					<input type="hidden" name="updateId" id="updateId" value="${loginSession.studentId}"/>
					<input type="hidden" name="no" id="no" value="${requestScope.updateNotice.no}"/>
					<input type="text" name="file1" id="file1" value="${requestScope.updateNotice.file1}"/>
					<input type="text" name="file2" id="file2" value="${requestScope.updateNotice.file2}"/>
					<input type="text" name="file3" id="file3" value="${requestScope.updateNotice.file3}"/>
					<table class="table">
						<tr>
							<th>제목</th>
							<td><input type="text" name="title" id="title" class="form-control" value="${requestScope.updateNotice.title}"/></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea style="resize:none;" cols="8" rows="15" name="body" id="body" class="form-control">${requestScope.updateNotice.body}</textarea></td>
						</tr>
						<tr>
							<th>첨부파일1</th>
							<td><input type="file" name="file_1" id="file_1" class="form-control"/></td>
						</tr>
						<tr>
							<th>첨부파일2</th>
							<td><input type="file" name="file_2" id="file_2" class="form-control"/></td>
						</tr>
						<tr>
							<th>첨부파일3</th>
							<td><input type="file" name="file_3" id="file_3" class="form-control"/></td>
						</tr>
						<tr>
							<th>중요여부</th>
							<td>
								<c:choose>
									<c:when test="${requestScope.updateNotice.point eq 'Y'}">
									<input type="checkbox" value="Y" name="point" id="point" checked="checked"/>
								</c:when>
								<c:otherwise>
									<input type="checkbox" value="Y" name="point" id="point"/>
									</c:otherwise>
								</c:choose>
							</td>
						</tr>                           
						<tr>
							<td colspan="2">
								<input type="button" class="pull-right" id="update" value="등록" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;">
                            	<input type="button" class="pull-right" id="list" value="목록" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<c:import url="../import/footer.jsp"/>
	</body>
</html>