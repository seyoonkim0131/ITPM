<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
		<link rel="Shortcut Icon" href="../image/favicon.ico" />
        <title>로그인 | IT정책경영학과</title>
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
        <c:import url="../import/header.jsp" />
        <div class="body">
            <div class="floating">
                <div style="height: 14px; background-color: #b31b1b;">&nbsp;</div>
                <div style="padding: 10%; padding-left: 20%; font-size: 15pt; font-weight: 900;">로그인</div>
                <div style="height: 2px; background-color: #b6b6b6;"></div>
            </div>
            <div class="small-title">
                <p>
                    <span><strong>로그인</strong></span>
                    <span style="padding-left: 60%;"><small>홈 > 로그인</small></span>
                </p>
            </div>
            <div class="content">
                <table
                    class="bbs-list"
                    style="width: 70%; border-spacing: 0; margin-top: 5%;">
                    <tbody>
                    	<tr style="vertical-align:top; border-top: solid 4px #b31b1b; "> 
                    		<td><img src="../image/login_logo.png" width="38px" height="30px"></td>  
                    		<td><img src="../image/login_memberlogin.png" width="88px" height="37px"></td>
                    		<td><img src="../image/login_welcome.png" width="231px" height="33px" style="margin-top: 6px"></td>
                    	</tr>	
                    	<tr>                 		 
                    	    <td colspan="2">아이디&nbsp; &nbsp;       
                            	<input
                                    class="input"
                                    name="Account"
                                    onblur="if(this.value=='') this.style.backgroundImage='url(../image/login_id.png)';"
                                    onfocus="this.style.backgroundImage='';"
                                    onkeydown=""
                                    style="width:160px;
                    			  	   background-image: url('..image/login_id.png'); background-repeat: no-repeat"
                                    tabindex="1"
                                    type="text"
                                    value=""/>
                            </td>
                            <td rowspan="2" style="border-bottom: solid 4px #b31b1b; ">                                
                                <input
                                    class="img"
                                    height="54"
                                    src="../image/login_button.png"
                                    type="image"
                                    width="71">
                            </td>
                        </tr>    
                        <tr>                            
                            <td colspan="2" style="border-bottom: solid 4px #b31b1b;">비밀번호                            	
                                <input
                                    class="input"
                                    name="Password"
                                    onblur="if(this.value=='') this.style.backgroundImage='url(../image/login_password.png)';"
                                    onkeydown=""
                                    style="width:160px;
                    			   	   background-image: url('..image/login_password.png'); background-repeat: no-repeat"
                                    type="password"
                                    value=""/>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <c:import url="../import/footer.jsp"/>
    </body>
</html>