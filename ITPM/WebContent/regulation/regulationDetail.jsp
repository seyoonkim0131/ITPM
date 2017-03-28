<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
		<link rel="Shortcut Icon" href="../image/favicon.ico" />
		<title>학과내규 | IT정책경영학과</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="../css/itpm.css" />
		<link rel="stylesheet" href="../css/menu.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(window).resize(function(){
				if(getWidth() <= '767') { //얘가 작을때얌
					document.getElementById('side_menu').style.display = 'none';
					$('.content-div').css('margin-left', '80px');
				} else {
					document.getElementById('side_menu').style.display = 'block';
					$('.content-div').css('margin-left', '250px');
				}
			});
			
			$(document).ready(function() {
				if(getWidth() <= '767') { //얘가 작다고
					document.getElementById('side_menu').style.display = 'none';
					$('.content-div').css('margin-left', '80px');
				} else {
					document.getElementById('side_menu').style.display = 'block';
					$('.content-div').css('margin-left', '250px');
				}
				
			});
		</script>
		<style type="text/css">
			.view>fieldset>table th {height: 30px; padding-left: 25px; border-top: 0; background: #f9f1f2; line-height: 30px; color: #333; text-align: left; border-bottom: 1px solid #e7e7e7; font-weight: bold; display: table-cell; vertical-align: inherit;}
			.view>fieldset>table>tbody>tr>td {height: 30px; padding-left: 25px; border-top: 0; background: #fff; line-height: 30px; color: #333; text-align: left; border-bottom: 1px solid #e7e7e7;}
			.view>fieldset>table .title {width: 100%; height: 40px; padding-left: 25px; background: #f7f7f7; line-height: 40px; font-size: 19px;}
			.view ul.file_list {padding: 5px 3px !important; margin: 0 !important;}
			.view>fieldset>table td.content {width: 100%; height: auto; margin: 0; padding: 30px 25px; line-height: 17px;}
		</style>
	</head>
	<body>
		<c:import url="../import/header.jsp" />
		<div class="container" id="side_menu">
            <div style="height: 14px; width:100%; padding: 0 0 0 0; background-color: #b31b1b;"></div>
            <div style="font-size: 15pt; padding-top:10%; padding-bottom:10%; padding-left: 15px;font-weight: 900;">학사정보</div>
            <div style="height: 2px; background-color: #b6b6b6;"></div>
            <ul class="nav nav-pills nav-stacked">
                <li><a href="#" style="color:gray; background-color:transparent; margin-top:6%;">개설과정</a></li>
                <li onclick="submenu()">
                	<a href="#" style="color:gray; background-color:transparent;">규정</a>
                	<ul id="hide" style="display: block;">
                		<li><a href="http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=23" target="_blank" style="color: gray;">학칙</a></li>
                		<li><a href="http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=25" target="_blank" style="color: gray;">시행세칙</a></li>
                		<li class="active"><a href="../regulation/regulation.jsp" style="color: #b31b1b;">학과내규</a></li>
                		<li><a href="http://grad.ssu.ac.kr/web/grad/paper_f" target="_blank" style="color: gray;">논문심사기준</a></li>
                		<li><a href="#" style="color: gray;">장학금기준</a></li>
                	</ul>
                </li>
                <li><a href="#" style="color:gray; background-color:transparent;">학사일정</a></li>
                <li><a href="../board/notice.jsp" style="color: gray; background-color:transparent; margin-bottom:6%;">공지사항</a></li>
            </ul>
        </div>
        <div class="content-div">
			<div class="small-title" style="margin: 80px 0 0 0;">
	            <p>
	                <span><img alt="menu main title bar" src="../image/menu_main_titlebar.png">학과내규</span>
	                <span style="float:right;">
	                    <small><a href="../index.jsp">홈</a> > 학사정보 > 규정 > 학과내규</small>
	                </span>
	            </p>
	            <div class="view" style="position: relative; width: 100%;">
	            	<fieldset style="position: relative; width: 100%; padding: 0; margin: 0; border: 0; min-width: 0;">
	            		<legend style="display: block; width: 100%; padding: 0; margin-bottom: 20px; font-size: 21px; line-height: 40px; color: #333; border: 0; border-bottom: 1px solid #e5e5e5; visibility: hidden; overflow: hidden; position: absolute; top: -50px; left: -50px;">게시판 상세보기</legend>
						<table style="clear: both; width: 100%; margin: 0 auto; border-top: 2px solid #b3b1b1; border-collapse: inherit; max-width: 100%; background-color: transparent; border-spacing: 0; display: table;"><!-- .view>fieldset>table -->
							<colgroup>
								<col width="22%">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th colspan="2" class="title">2017년 IT정책경영학과 학과내규</th>
								</tr>
								<tr>
									<th>작성자</th>
									<td>관리자</td>
								</tr>
								<tr>
									<th>작성일</th>
									<td>2017.03.03</td>
								</tr>
								<tr>
									<th>조회수</th>
									<td>324</td>
								</tr>
								<tr>
									<th>첨부파일</th>
									<td>
										<ul class="file_list">
											<li><a href="#" target="_blank">짜잔 이거봐라 첨부파일이당</a></li>
										</ul>
									</td>
								</tr><!-- 여기까지가 헤더 -->
								<tr>
									<td colspan="2" class="content">
										<div style="max-width: 840px;">
											<div class="form-group">
												<div class="col-lg-12">
제14조(장학금의 정의) 대학원 IT정책경영학과의 장학금지급기준은 대학원규정에 의한다.<br>

①정부 및 공공기관의 공직관료(사무관급/령관급 이상)가 박사과정에 입학할 경우에 재학기간 중의 매학기 등록금의 일정부분(최고 50%)을 공직관료 장학금으로 지급가능하다.<br>

②성적이 우수한 학생에게는 일반장학금, 연구조교장학금, 교육조교장학금 등을 지급할 수 있다.<br>

③기타 숭실대학교 발전기금 또는 비영리단체(학회 등)가 제공하는 기금이 가용할 경우에 등록금의 일정금액을 장학금으로 지급할 수 있다.<br>

④장학생 선정은 교수들의 추천을 통해 운영위원회에서 결정한다.<br>

제15조(장학금의 재원) IT정책경영학과의 우수한 신입생을 유치하고 최고 수준의 석박사과정을 운영하기 위하여 장학금재원을 다음과 같이 확보한다.<br>

① IT정책경영학과 주임교수는 유수한 기업 등과 협약을 체결하여 필요한 재정적 지원을 받을 수 있다.<br>

②장학금의 재원으로 다양한 기금을 활용할 수 있다.<br>

③기타 재원에 대한 사안은 IT정책경영학과 운영위원회의 결정에 따른다.<br>
													<!-- <textarea class="form-control" cols="100%" rows="100%">
제14조(장학금의 정의) 대학원 IT정책경영학과의 장학금지급기준은 대학원규정에 의한다.

①정부 및 공공기관의 공직관료(사무관급/령관급 이상)가 박사과정에 입학할 경우에 재학기간 중의 매학기 등록금의 일정부분(최고 50%)을 공직관료 장학금으로 지급가능하다.

②성적이 우수한 학생에게는 일반장학금, 연구조교장학금, 교육조교장학금 등을 지급할 수 있다.

③기타 숭실대학교 발전기금 또는 비영리단체(학회 등)가 제공하는 기금이 가용할 경우에 등록금의 일정금액을 장학금으로 지급할 수 있다.

④장학생 선정은 교수들의 추천을 통해 운영위원회에서 결정한다.

제15조(장학금의 재원) IT정책경영학과의 우수한 신입생을 유치하고 최고 수준의 석박사과정을 운영하기 위하여 장학금재원을 다음과 같이 확보한다.

① IT정책경영학과 주임교수는 유수한 기업 등과 협약을 체결하여 필요한 재정적 지원을 받을 수 있다.

②장학금의 재원으로 다양한 기금을 활용할 수 있다.

③기타 재원에 대한 사안은 IT정책경영학과 운영위원회의 결정에 따른다.
													</textarea> -->
												</div>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
	            	</fieldset>
	            </div>
				<div class="button-list" style="position: relative; width: 100%; height: 100%; padding: 10px 0;">
					<ul class="right" style="float: right; margin: 0; padding: 2px;">
						<li style="float: left; margin-left: 5px; line-height: 20px; margin: 0; padding: 0;">
							<a href="regulation.jsp" style="display: inline-block; float: right; height: 31px; padding: 0 20px; border: 1px solid #b31b1b; background: #b31b1b; line-height: 31px; font-weight: 400; font-size: 14px; color: #fff; text-align: center; white-space: nowrap;">목록</a>
						</li>
					</ul>
				</div><br>
				<div style="margin: 20px 0; border-top: 1px solid #e7e7e7; border-bottom: 1px solid #e7e7e7;">
					<dl style="list-style: none; position: relative; margin: 10px 0!important;">
						<dt style="list-style: none; background-position: 95% 0; position: absolute; z-index: 10; left: 0; top: 0; padding-right: 30px!important; font-weight: bold; line-height: 20px; ">다음글</dt>
						<dd style="padding-left: 90px!important; margin-left: 10px; line-height: 20px; margin: 0; padding: 0;"><a href="#">ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</a></dd>
					</dl>
					<dl style="list-style: none; position: relative; margin: 10px 0!important;">
						<dt style="list-style: none; background-position: 95% -36px; position: absolute; z-index: 10; left: 0; top: 0; padding-right: 30px!important; font-weight: bold; line-height: 20px; ">이전글</dt>
						<dd style="padding-left: 90px!important; margin-left: 10px; line-height: 20px; margin: 0; padding: 0;"><a href="#">ㅎㅎㅎㅎㅎㅎㅎㅎㅎ</a></dd>
					</dl>
				</div>
	        </div>
		</div>
		<c:import url="../import/footer.jsp" />
	</body>
</html>