<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
		<link rel="Shortcut Icon" href="image/favicon.ico" />
		<title>원우수첩 | IT정책경영학과</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/itpm.css" />
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
			
			$(document).ready(function() {
				if (getWidth() >= '767') {
		              document.getElementById('side_menu').style.display = 'block';
		              $('.content-div').css('padding-left', '250px');
		          } else {
		              document.getElementById('side_menu').style.display = 'none';
		              $('.content-div').css('padding-left', '10px');
		              $('.content-div').css('padding-right', '10px');
		          }
				
				$('#group').change(function() {
					document.getElementById('sGroup').value = $('#group option:selected').val();
					document.getElementById('groupForm').submit();
				});
				
				$('#update').click(function() {
					if(confirm('나의 정보를 수정하시겠습니까?') == true) {
						$('#updateForm').submit();
					} else {
						return false;
					}
				});
				if(window.localStorage) {
					if(!localStorage.getItem('firstLoad')) {
						localStorage['firstLoad'] = true;
						window.opener.location.href = window.opener.document.URL;
						window.location.reload();
					} else {
						localStorage.removeItem('firstLoad');
					}
				}
			});
		</script>
		<style type="text/css">
			.table_list>ul>li {position: relative; z-index: 0; padding: 10px 18px; border-bottom: 1px solid #d0d0d0; line-height: 20px; display: list-item;}
			.table_list {color: #666; margin: 0;}
			.table_list .top_area:after {display: block; clear: both; content: '';}
			.pagination {display: inline-block;}
			.pagination a {color: black; padding: 8px 16px; text-decoration: none;}
			.pagination a.active {color: white; background-color: #b31b1b;}
			.pagination a:hover:not(.active) {background-color: #ddd;}
			@media only screen and (max-width: 376px) { 
				.memberImg {width: 60px; height: 80px;}
				table.bbs-list thead th, table.bbs-list tbody td {font-size: 13px;}
			}
		</style>
	</head>
	<body class="document" role="document">
		<c:import url="../import/header.jsp" />
		<div class="container" id="side_menu">
			<div class="redline"></div>
			<div class="menutitle">원우수첩</div>
			<div class="grayline"></div>
			<ul class="nav nav-pills nav-stacked">
				<li class="active1"><a href="#">원우수첩</a></li>
				<li class="inactive"><a href="javascript:document.getElementById('goMyInfoForm').submit();">내 정보</a></li>
			</ul>
        </div>
        <div class="content-div">
			<div class="small-title">
	            <p>
	                <span><img alt="menu main title bar" src="image/menu_main_titlebar.png">원우수첩</span>
	                <span class="small-title-right"><small>홈 > 원우수첩 > 원우수첩</small></span>
	            </p>
			</div>
			<div class="content-board">
				<form id="goMyInfoForm" action="goMyInfo.do" method="post" style="display: none;">
					<input type="text" id="myId" name="myId" value="${loginSession.studentId}"/>
				</form>
	            <form id="groupForm" action="getAllMemberList.do" method="get" style="display: none;">
	            	<input type="text" id="studnetId" name="studentId" value="${loginSession.studentId}"/>
	            	<input type="text" id="sGroup" name="sGroup" value="" />
	            </form>
	            <select id="group" style="float: right;">
	            	<option value="">전체</option>
	            	<c:forEach items="${requestScope.groupList}" var="result" varStatus="status">
            			<option value="${result.sGroup}" ${requestScope.curGroup == result.sGroup ? 'selected' : '' }><c:out value="${result.sGroup}"></c:out></option>
	            	</c:forEach>
				</select><br/><br/>
                <table class="bbs-list" style="width: 100%; border-top: solid 2px #b31b1b; border-spacing: 0; font-size: 15px;">
                    <colgroup>
                    	<col width="30%">
                    	<col width="20%">
                    	<col width="50%">
                    </colgroup>
                    <c:forEach items="${requestScope.allMemberList}" var="result">
                        <tr align="center">
                            <td rowspan="6" style="padding-top: 3px; border-bottom: solid 2px #a1a4a8;">
                            	<c:choose>
                            		<c:when test="${result.photo eq '' || result.photo eq null}">
		                            	<img class="memberImg" border="1" height="120px" width="90px" src="image/nophoto.png" style="vertical-align: middle;">
                            		</c:when>
                            		<c:otherwise>
		                            	<img class="memberImg" border="1" height="120px" width="90px" src="image/member/${result.photo}" style="vertical-align: middle;">
                            		</c:otherwise>
                            	</c:choose>
                            </td>
                            <td style="text-align:center">구분</td>
                            <td style="text-align:left"><c:out value="${result.sGroup}" /></td>
                        </tr>
                        <tr align="left">
                            <td style="text-align:center">이름</td>
                            <td style="text-align:left"><c:out value="${result.name}" /></td>
                        </tr>
                        <tr align="left">
                            <td style="text-align:center">소속</td>
                            <td style="text-align:left">${result.job}</td>
                        </tr>
                        <tr align="left">
                            <td style="text-align:center">직급</td>
                            <td style="text-align:left">${result.jobPosition}</td>
                        </tr>
                        <tr align="left">
                            <td style="text-align:center">핸드폰</td>
                            <td style="text-align:left;">${result.phoneNumber}</td>
                        </tr>
                        <tr align="left" style="border-bottom: solid 2px #a1a4a8;">
                            <td style="text-align:center; letter-spacing: -1px;">E-mail</td>
                            <td style="text-align:left; letter-spacing:-1px;">
                            	<c:choose>
                            		<c:when test="${result.mailId eq null || result.mailId == ''}">
                            			&nbsp;-
                            		</c:when>
                            		<c:otherwise>
			                            ${result.mailId}@${result.mailDomain}
                            		</c:otherwise>
                            	</c:choose>
                            </td>
                        </tr>
                   </c:forEach>
                </table>
			</div>
			<div style="width:10%;">&nbsp;</div>
		</div>
		<c:import url="../import/footer.jsp" />
	</body>
</html>