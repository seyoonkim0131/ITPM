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
        <title>실패 | IT정책경영학과</title>
        <link
            href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            rel="stylesheet">
        <link href="../css/itpm.css" rel="stylesheet"/>
        <link href="../css/menu.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(window).resize(function () {
                if (getWidth() <= '767') { //얘가 작을때얌
                    document
                        .getElementById('side_menu')
                        .style
                        .display = 'none';
                    $('.content-div').css('margin-left', '80px');
                } else {
                    document
                        .getElementById('side_menu')
                        .style
                        .display = 'block';
                    $('.content-div').css('margin-left', '250px');
                }
            });

            $(document).ready(function () {
                if (getWidth() <= '767') { //얘가 작다고
                    document
                        .getElementById('side_menu')
                        .style
                        .display = 'none';
                    $('.content-div').css('margin-left', '80px');
                } else {
                    document
                        .getElementById('side_menu')
                        .style
                        .display = 'block';
                    $('.content-div').css('margin-left', '250px');
                }
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
        <table
           align="center"            
            style="max-width: 80%; border-spacing: 0; margin-top: 15%; margin-bottom: 5%;">
            <tbody>
                <tr align="center" style="vertical-align:top; border-top: solid 4px #b31b1b; border-bottom: solid 4px #b31b1b; ">
                    <td colspan="2" style="padding-top: 20px; padding-bottom: 20px;">
                        <img
                            align="left"
                            height="60px"
                            src="image/fail_image.png"
                            width="69px">
                    </td>
                    <td style="vertical-align: middle;">
                       <strong>페이지를 표시할 수 없습니다.</strong><br>
                       잠시 후 다시 시도해 주시기 바랍니다.
                       
                    </td>
                </tr>
                
            </tbody>
        </table>
        
    </body>
</html>