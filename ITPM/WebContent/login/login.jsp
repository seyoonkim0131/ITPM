<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" name="viewport"/>
        <meta content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공." name="description"/>
        <link href="../image/favicon.ico" rel="Shortcut Icon"/>
        <title>로그인 | IT정책경영학과</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/itpm.css" rel="stylesheet"/>
        <link href="../css/menu.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(window).resize(function () {
                if (getWidth() <= '767') {
                    document.getElementById('side_menu').style.display = 'none';
                    $('.content-div').css('padding-left', '10px');
                    $('.content-div').css('padding-right', '0px');
                } else {
                    document.getElementById('side_menu').style.display = 'block';
                    $('.content-div').css('padding-left', '250px');
                    $('.content-div').css('padding-right', '130px');
                }
            });

            $(document).ready(function () {
                if (getWidth() <= '767') {
                    document.getElementById('side_menu').style.display = 'none';
                    $('.content-div').css('padding-left', '10px');
                    $('.content-div').css('padding-right', '0px');
                } else {
                    document.getElementById('side_menu').style.display = 'block';
                    $('.content-div').css('padding-left', '250px');
                    $('.content-div').css('padding-right', '130px');
                }
                
                $('#loginSubmit').click(function() {
                	if($('#studentId').val() == '') {
						alert("아이디를 입력해주세요.");
						$('#studentId').focus();
						return false;
					}
                	if($('#pw').val() == '') {
                		alert("비밀번호를 입력해주세요.");
                		$('#pw').focus();
                		return false;
                	}
                	if(!$('#studentId').val() == '' && !$('#pw').val() == '') {
        				$.ajax({
        					url:"../checkPw.do",
        					method: "GET",
        					contentType: "application/json",
        					data: "studentId="+document.getElementById("studentId").value,
        					dataType: "json",
        					success: function(data){
        						if(data.data == 'Y') {
        							if(confirm('초기화된 비밀번호 입니다.\n비밀번호를 변경하세요.') == true) {
        								document.getElementById('loginForm').action = '../loginReset.do';
        								document.getElementById('loginForm').submit();
        							} else {
	        							return false;
        							}
        						} else if(data.data == 'N'){
			                		document.getElementById('loginForm').action = '../login.do';
			                		document.getElementById('loginForm').submit();
        						} else if(data.data == '') {
        							alert('비밀번호 초기화 후 로그인해주세요.');
        						}
        					}
        				});
                	}
                });
                $('#updatePw').click(function() {
                	if($('#studentId').val() == '') {
						alert("학번을 입력해주세요.");
						$('#studentId').focus();
						return false;
					}
                	
                	if(!$('#studentId').val()== '') {
        				$.ajax({
        					url:"../checkId.do",
        					method: "GET",
        					contentType: "application/json",
        					data: "studentId="+document.getElementById("studentId").value,
        					dataType: "json",
        					success: function(data){
        						if(data.data == '0') {
        							alert('존재하지 않는 학번입니다.\n다시입력해주세요.');
        							$('#studentId').focus();
        							return false;
        						} else if(data.data == '1') {
			        				$.ajax({
			        					url:"../updatePw.do",
			        					method: "GET",
			        					contentType: "application/json",
			        					data: "studentId="+document.getElementById("studentId").value,
			        					dataType: "json",
			        					success: function(data){
			        						if(data.message == 'success') {
			        							alert('비밀번호가 학번으로 초기화되었습니다.\n비밀번호 변경해주세요.');
			        						}
			        					}
			        				});
        						}
        					}
        				});
                	}
                });
            });
        </script>        
    </head>
    <body class="document" role="document">
        <c:import url="../import/header.jsp"/>
        <div class="container" id="side_menu">
            <div class="redline"></div>
            <div class="menutitle">로그인</div>
        </div>
        <div class="content-div">
            <div class="small-title">
                <p>
                    <span><img alt="menu main title bar" src="../image/menu_main_titlebar.png">로그인</span>
                    <span class="small-title-right">
                        <small><a href="../index.jsp">홈</a> > 로그인</small>
                    </span>
                </p>
			</div>
			<div class="login-content">
				<form id="loginForm" name="loginForm" method="post" onsubmit="return false;">
					<table class="bbs-list" style="table-layout: fixed; "> 
						<tbody>
							<tr class="login-redline" align="center">                           
								<td class="login-logo" colspan="3" align="center">
									<img height="67px" src="../image/login_firstline.png" width="250px"> 
								</td>
							</tr>
							<tr>
								<td class="login-id">아이디</td>
								<td class="input-id"><input type="text" class="form-control" name="studentId" id="studentId" tabindex="1" value=""/></td>
								<td class="input-button" rowspan="2" style="text-align: left;">
									<input type="image" class="img" id="loginSubmit" height="54px" src="../image/login_login_button.png" width="71px">
								</td>
							</tr>
							<tr>
								<td class="login-pw">비밀번호</td>
								<td class="input-pw"><input type="password" class="form-control" tabindex="2" name="pw" id="pw" value=""/></td>
							</tr>
							<tr>
								<td class="login-remakepw" colspan="3" align="center">
									<input type="image" class="img" height="17px" width="254px" src="../image/login_forget.png">
									<input type="image" class="img" id="updatePw" height="17px" width="128ps" src="../image/login_reset.png">
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
        <div class="login-footerdiv">&nbsp;</div>
        <c:import url="../import/footer.jsp"/>
    </body>
</html>