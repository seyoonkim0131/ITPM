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
                    $('.content-div').css('margin-left', '80px');
                } else {
                    document.getElementById('side_menu').style.display = 'block';
                    $('.content-div').css('margin-left', '250px');
                }
            });

            $(document).ready(function () {
                if (getWidth() <= '767') {
                    document.getElementById('side_menu').style.display = 'none';
                    $('.content-div').css('margin-left', '80px');
                } else {
                    document.getElementById('side_menu').style.display = 'block';
                    $('.content-div').css('margin-left', '250px');
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
	            	if(!$('#studentId').val()== '' && !$('#studentId').val() == '') {
	            		if($('#studentId').val() =='itpm' && $('#pw').val() == 'itpm1234') {
	            			console.log('dddd');
	            			location.href = "../getAllMemberList.do";
	            		} else {
	            			alert('아이디/비밀번호를 확인해주세요.');
	            			return false;
	            		}
	            	}
	            });

            });
        </script>
        <style type="text/css">
            .table_list > ul > li {
                position: relative;
                z-index: 0;
                padding: 10px 18px;
                border-bottom: 1px solid #d0d0d0;
                line-height: 20px;
                display: list-item;
            }
            .table_list {
                color: #666;
                margin: 0;
            }
            .table_list .top_area:after {
                display: block;
                clear: both;
                content: '';
            }
            .pagination {
                display: inline-block;
            }
            .pagination a {
                color: black;
                padding: 8px 16px;
                text-decoration: none;
            }
            .pagination a.active {
                color: white;
                background-color: #b31b1b;
            }
            .pagination a:hover:not(.active) {
                background-color: #ddd;
            }
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
                    <span><img alt="menu main title bar" src="../image/menu_main_titlebar.png">로그인</span>
                    <span style="float:right;">
                        <small><a href="../index.jsp">홈</a> > 로그인</small>
                    </span>
                </p>
                <div>
                	<!-- <form id="loginForm" name="loginForm" method="post"> -->
		                <table class="bbs-list" style="width: 100%; border-spacing: 0; margin-top: 5%; margin-bottom: 5%;"> 
		                    <tbody>
		                        <tr align="center" style="vertical-align:top; border-top: solid 4px #b31b1b;">                           
		                            <td colspan="3" style="padding-top: 20px; padding-bottom: 20px;">
		                               <img height="67px" src="../image/login_firstline.png" width="250px" align="center"> 
		                            </td>                            
		                        </tr>
		                        <tr>
		                            <td style="white-space: nowrap; text-align: right;">아이디</td>
		                            <td><input type="text" class="form-control" name="studentId" id="studentId" style="width: 100%;" tabindex="1" value=""/></td>
		                            <td rowspan="2" style="padding-left: 20px; padding-bottom: 5px;" >                                                          
		                                <input type="image" class="img" id="loginSubmit" height="54px" src="../image/login_login_button.png" width="71px" align="left" style="text-align: left; ">
		                            </td>
		                        </tr>
		                        <tr>
		                            <td style="padding-bottom: 10px; white-space: nowrap; text-align: right;">비밀번호</td>
		                            <td><input type="password" class="form-control" name="pw" id="pw" style="width: 100%;" value=""/></td>
		                        </tr>
		                        <tr>
		                           <td colspan="3" align="center" style="padding-bottom: 20px; border-bottom: solid 4px #b31b1b;">
		                              <img height="17px" width="409px" src="../image/login_passwordreset.png">
		                           </td>
		                        </tr>
		                    </tbody>
		                </table>
	                <!-- </form> -->
                </div>
            </div>
        </div>
        <div style="width: 80%">&nbsp;</div>
        <c:import url="../import/footer.jsp"/>
    </body>
</html>