<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
        <meta
            content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes"
            name="viewport"/>
        <meta content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공." name="description"/>
        <link href="../image/favicon.ico" rel="Shortcut Icon"/>
        <title>원우수첩 | IT정책경영학과</title>
        <link
            href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            rel="stylesheet">
        <link href="../css/itpm.css" rel="stylesheet"/>
        <link href="../css/menu.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            function submenu() {
                //$("#hide").display = "block";
                var sub = document.getElementById("hide");
                if (sub.style.display == 'none') {
                    sub.style.display = 'block';
                } else {
                    sub.style.display = 'none';
                }
            }
        </script>
    </head>
    <body>
        <c:import url="../import/header.jsp"/>
        <div class="body">
            <div class="floating">
                <div style="height: 14px; background-color: #b31b1b;">&nbsp;</div>
                <div
                    style="padding: 10%; padding-left: 20%; font-size: 15pt; font-weight: 900;">원우수첩</div>
                <div style="height: 2px; background-color: #b6b6b6;"></div>
            </div>
            <div class="small-title">
                <p>
                    <span>원우수첩</span>
                    <span style="padding-left: 70%;">
                        <small>홈 > 원우수첩</small>
                    </span>
                </p>
            </div>
            <div class="content">
                <table
                    class="bbs-list"
                    style="width: 80%; border-top: solid 2px #b31b1b; table-layout: fixed; border-spacing: 0;">
                    <tbody>
                        <tr align="center">
                            <td rowspan="5" style="padding-right"><img
                                border="1"
                                height="177"
                                width="155"
                                src="../image/1.jpg"
                                style="vertical-align: middle;"></td>
                            <td style="padding-right:50px" width="100">기수</td>
                            <td style="text-align:left" width="280">1기</td>
                        </tr>
                        <tr align="left">
                            <td style="padding-right:50px" width="100">이름</td>
                            <td style="text-align:left" width="280">류훈선</td>
                        </tr>
                        <tr align="left">
                            <td style="padding-right:50px" width="100">회사명</td>
                            <td style="text-align:left" width="280">숭실대학교</td>
                        </tr>
                        <tr align="left">
                            <td style="padding-right:50px" width="100">핸드폰</td>
                            <td style="text-align:left" width="280">010-1234-1234</td>
                        </tr>
                        <tr align="left">
                            <td style="padding-right:50px" width="100">E-mail</td>
                            <td style="text-align:left" width="280">hoonseon@nate.com</td>
                        </tr>
                    </tbody>
                </table>
                <div class="paginate">
                    <a href="#"><img
                        alt="page prev more"
                        src="../image/page_prev_more.gif"
                        style="vertical-align: middle;"></a>
                    <a href="#"><img
                        alt="page prev"
                        src="../image/page_prev.gif"
                        style="vertical-align: middle;"></a>
                    <a class="num" href="#">1</a>
                    <a class="num" href="#">2</a>
                    <a class="num" href="#">3</a>
                    <a class="num" href="#">4</a>
                    <a class="num" href="#">5</a>
                    <a class="num" href="#">6</a>
                    <a class="num" href="#">7</a>
                    <a class="num" href="#">8</a>
                    <a class="num" href="#">9</a>
                    <a class="num" href="#">10</a>
                    <a href="#"><img
                        alt="page next"
                        src="../image/page_next.gif"
                        style="vertical-align: middle;"></a>
                    <a href="#"><img
                        alt="page next more"
                        src="../image/page_next_more.gif"
                        style="vertical-align: middle;"></a>
                </div>                
            </div>
        </div>
        <c:import url="../import/footer.jsp"/>
        <!-- Bootstrap core JavaScript
	    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="../dist/js/bootstrap.min.js"></script>
        <!-- <script src="assets/js/docs.min.js"></script> -->
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../assets/js/ie10-viewport-bug-workaround.js"></script>
    </body>
</html>