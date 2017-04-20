<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" name="viewport"/>
        <meta content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공." name="description"/>
        <link href="../image/favicon.ico" rel="Shortcut Icon"/>
        <title>비밀번호 수정 | IT정책경영학과</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/itpm.css" rel="stylesheet"/>
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
                $('#cancel').click(function () { 
                	if(confirm('취소하시겠습니까?') == true) {
                		window.location = 'login/login.jsp'
                	} else {
                		return false;
                	}
                });
                $('#submit').click(function () {
                	if(confirm('변경하시겠습니까?') == true) {
                		document.getElementById('loginResetForm').submit();
                	} else {
                		return false;
                	}
                });
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
        </style>
    </head>
    <body>
        <c:import url="../import/header.jsp"/>
        <div class="container" id="side_menu">
            <div style="height: 14px; width:100%; padding: 0 0 0 0; background-color: #b31b1b;"></div>
            <div style="font-size: 15pt; padding-top:10%; padding-bottom:10%; padding-left: 15px;font-weight: 900;">로그인</div>
        </div>
        <div class="content-div">
            <div class="small-title" style="margin: 80px 0 0 0;">
                <p>
                    <span><img alt="menu main title bar" src="image/menu_main_titlebar.png">비밀번호 재설정</span>
                    <span style="float:right;">
                        <small><a href="index.jsp">홈</a> > 비밀번호 재설정</small>
                    </span>
                </p>
                <div>
                	<form action="updateNewPw.do" id="loginResetForm" name="loginResetForm" method="post">
		                <table class="bbs-list" style="width: 100%; border-spacing: 0; margin-top: 5%; margin-bottom: 5%;"> 
		                    <tbody>
		                        <tr>
		                            <td style="white-space: nowrap; text-align: center;">이름</td>
		                            <td>${requestScope.myInfo.name}<input type="hidden" class="form-control" name="resetName" id="resetName" style="width: 100%;" value="${requestScope.myInfo.name}"/></td>
		                        </tr>
		                         <tr>
		                            <td style="white-space: nowrap; text-align: center;">학번</td>
		                            <td>${requestScope.myInfo.studentId}<input type="hidden" class="form-control" name="studentId" id="studentId" style="width: 100%;" value="${requestScope.myInfo.studentId}"/></td>
		                        </tr>
		                        <tr>
		                            <td style="white-space: nowrap; text-align: center;">새 비밀번호</td>
		                            <td><input type="text" class="form-control" name="pw" id="pw" style="width: 100%;" tabindex="1" value=""/></td>
		                        </tr>
		                        <tr>
		                            <td style="white-space: nowrap; text-align: center;">비밀번호 확인</td>
		                            <td><input type="text" class="form-control" name="checkPw" id="checkpw" tabindex="2"style="width: 100%;" value=""/></td>
		                        </tr>
		                    </tbody>
		                </table>
	          		</form>
	             <div class="button-list">
					<ul class="right">
						<li>
							<input type="button" id="submit" value="확인" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;">
							<input type="button" id="cancel" value="취소" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;  margin-top: 10px; margin-right: 20px;">
						</li>
					</ul>
				</div><br>
                </div>
            </div>
        </div>
        <div style="width: 80%">&nbsp;</div>
        <c:import url="../import/footer.jsp"/>
    </body>
</html>