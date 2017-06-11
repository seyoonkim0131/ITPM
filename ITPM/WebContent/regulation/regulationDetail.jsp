<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
		<link rel="Shortcut Icon" href="image/favicon.ico" />
		<title>학과내규 | IT정책경영학과</title>
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
	        $(document).ready(function () {
	            if (getWidth() >= '767') {
	                document.getElementById('side_menu').style.display = 'block';
	                $('.content-div').css('padding-left', '250px');
	            } else {
	                document.getElementById('side_menu').style.display = 'none';
	                $('.content-div').css('padding-left', '10px');
	                $('.content-div').css('padding-right', '10px');
	            }
	            $('#sideSchoolRule').click(function() {
					if(confirm('숭실대학교 홈페이지로 이동합니다. \n계속하시겠습니까?') == true) {
						window.open('http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=23', '_blank');
					} else {
						return false;
					}
				});
	            $('#sideSchoolRuleD').click(function() {
					if(confirm('숭실대학교 홈페이지로 이동합니다. \n계속하시겠습니까?') == true) {
						window.open('http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=25', '_blank');
					} else {
						return false;
					}
				});
	            $('#sideSchoolPaper').click(function() {
					if(confirm('숭실대학교 대학원 홈페이지로 이동합니다. \n계속하시겠습니까?') == true) {
						window.open('http://grad.ssu.ac.kr/web/grad/paper_f', '_blank');
					} else {
						return false;
					}
				});
	            $('#list').click(function () {
			    	location.href = "getRuleList.do";
			    });
	            $('#delete').click(function () {
			    	if(confirm("삭제하시겠습니까?") == true){
			    		$('#deleteform').submit();
			    	} else {
			    		return false;
			    	}
			    });
			    $('#update').click(function () {
			    	$('#goUpdate').submit();
			    });
	        });
		</script>
	</head>
	<body>
		<c:import url="../import/header.jsp" />
		<div class="container" id="side_menu">
            <div style="height: 14px; width:100%; padding: 0 0 0 0; background-color: #b31b1b;"></div>
            <div style="font-size: 15pt; padding-top:10%; padding-bottom:10%; padding-left: 15px;font-weight: 900;">학사정보</div>
            <div style="height: 2px; background-color: #b6b6b6;"></div>
            <ul class="nav nav-pills nav-stacked">
                <li class="inactive"><a href="getAllEduList.do">개설과정</a></li>
                <li class="inactive" onclick="submenu()">
                	<a href="#" style="color:gray; background-color:transparent;">규정</a>
                	<ul id="hide" style="display: block;">
                      <li id="sideSchoolRule" class="inactive"><a href="#">학칙</a></li>
                      <li id="sideSchoolRuleD" class="inactive"><a href="#">시행세칙</a></li>
                      <li class="active1"><a href="getRuleList.do">학과내규</a></li>
                      <li id="sideSchoolPaper" class="inactive"><a href="#">논문심사기준</a></li>
                	</ul>
                </li>
                <li class="inactive"><a href="getAllScheduleList.do">학사일정</a></li>
                <li class="inactive"><a href="getNoticeList.do">공지사항</a></li>
            </ul>
        </div>
        <div class="content-div">
			<div class="small-title">
	            <p>
	                <span><img alt="menu main title bar" src="image/menu_main_titlebar.png">학과내규</span>
	                <span class="small-title-right">
	                    <small><a href="welcome.do">홈</a> > 학사정보 > 규정 > 학과내규</small>
	                </span>
	            </p>
	        </div>
	        <div class="content-board">
	        	<form action="deleteRule.do" method="post" id="deleteform"><input type="hidden" name="no" value="${requestScope.rule.no}"></form>
				<form action="goUpdateRule.do" method="get" id="goUpdate"><input type="hidden" name="no" value="${requestScope.rule.no}"></form>
	        	<form action="fileDownload.do" id="downForm" name="downForm" method="post"><input type="hidden" name="file1" id="file1" value="${requestScope.rule.file1}"/></form>
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
									<th colspan="2" class="title">${requestScope.rule.title}</th>
								</tr>
								<tr>
									<th>작성자</th>
									<td>${requestScope.rule.updateId}</td>
								</tr>
								<tr>
									<th>작성일</th>
									<td>${requestScope.rule.updateDate}</td>
								</tr>
								<tr>
									<th>조회수</th>
									<td>${requestScope.rule.view}</td>
								</tr>
								<tr>
									<th>첨부파일</th>
									<td>
										<ul class="file_list"><li><a href="javascript:document.getElementById('downForm').submit();" target="_blank">${requestScope.rule.file1 }</a></li></ul>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="text-content">
										<div>
											<div class="form-group">
												<div class="regulation col-lg-12"><pre style="border: none; background-color: #fff;">${requestScope.rule.body}</pre></div>
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
						<li><input type="button" id="list" value="목록" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;"></li>
						<c:choose>
               				<c:when test="${loginSession.studentId eq requestScope.rule.createId}">
		                  		<li><input type="button" id="delete" value="삭제" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;"></li>
		                  		<li><input type="button" id="update" value="수정" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;"></li>
               				</c:when>
               				<c:otherwise>
               					&nbsp;
               				</c:otherwise>
               			</c:choose>
					</ul>
				</div><br>
				<div class="before-next">
					<dl>
               			<dt>이전글</dt>
               			<dd>
               				<c:choose>
               					<c:when test="${requestScope.rule.no eq 1}">이전글이 없습니다.</c:when>
               					<c:otherwise>
		               				<a href="getRuleDetail.do?no=${requestScope.beforeNext[0].no}">${requestScope.beforeNext[0].title}</a>
               					</c:otherwise>
               				</c:choose>
               			</dd>
               		</dl>
               		<dl>
               			<dt>다음글</dt>
               			<dd>
               				<c:choose>
               					<c:when test="${requestScope.rule.no eq 1}">
               						<a href="getRuleDetail.do?no=${requestScope.beforeNext[0].no}">${requestScope.beforeNext[0].title}</a>
								</c:when>
               					<c:otherwise>
		               				<a href="getRuleDetail.do?no=${requestScope.beforeNext[1].no}">${requestScope.beforeNext[1].title}</a>&nbsp;
               					</c:otherwise>
               				</c:choose>
               			</dd>
               		</dl>
				</div>
	    	</div>
		</div>
		<c:import url="../import/footer.jsp" />
	</body>
</html>