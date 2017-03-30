<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" />
		<meta name="description" content="대학원소개, 학과소개, 입학안내, 학사일정 등 제공."/>
		<link rel="Shortcut Icon" href="../image/favicon.ico" />
		<title>개설과정 | IT정책경영학과</title>
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
		<c:import url="../import/header.jsp" />
		<div class="container" id="side_menu">
            <div style="height: 14px; width:100%; padding: 0 0 0 0; background-color: #b31b1b;"></div>
            <div style="font-size: 15pt; padding-top:10%; padding-bottom:10%; padding-left: 15px;font-weight: 900;">학사정보</div>
            <div style="height: 2px; background-color: #b6b6b6;"></div>
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="education.jsp" style="color: #b31b1b; background-color:transparent; margin-top:6%;">개설과정</a></li>
                <li onclick="submenu()">
                	<a href="#" style="color:gray; background-color:transparent;">규정</a>
                	<ul id="hide" style="display: none;">
                		<li><a href="http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=23" target="_blank" style="color: gray;">학칙</a></li>
                		<li><a href="http://rule.ssu.ac.kr/lmxsrv/law/lawFullView.srv?SEQ=25" target="_blank" style="color: gray;">시행세칙</a></li>
                		<li class="active"><a href="../regulation/regulation.jsp" style="color: gray;">학과내규</a></li>
                		<li><a href="http://grad.ssu.ac.kr/web/grad/paper_f" target="_blank" style="color: gray;">논문심사기준</a></li>
                	</ul>
                </li>
                <li><a href="calendar.jsp" style="color:gray; background-color:transparent;">학사일정</a></li>
                <li><a href="../board/notice.jsp" style="color: gray; background-color:transparent; margin-bottom:6%;">공지사항</a></li>
            </ul>
        </div>
        <div class="content-div">
			<div class="small-title" style="margin: 80px 0 0 0;">
	            <p>
	                <span><img alt="menu main title bar" src="../image/menu_main_titlebar.png">개설과정</span>
	                <span style="float:right;">
	                    <small><a href="../index.jsp">홈</a> > 학사정보 > 개설과정</small>
	                </span>
	            </p>
	            <p>
	            	<span><img alt="menu sub title bar" src="../image/menu_sub_titlebar.png">공통과목<img alt="menu sub title bar" src="../image/menu_sub_titlebar.png" style="padding: 0 2px 1px 10px;"></span>
	            </p>
		        <div class="list">
		        	<div class="table_list" style="border-top: 2px solid #b31b1b;">
		        		<ul style="display: block; padding: 0;">
		        			<li style="color: #666;">
	        					<div class="subject">시스템엔지니어링(System Engineering)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">소프트웨어엔지니어링(Software Engineering)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">실증연구방법론(Empirical Research Methodology)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">통합모델링언어론(Unified Modeling Language)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">IT기술경영론(IT Management of Technology)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">정보전략기획론(Information Strategy Planning)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">IT정책경영세미나</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">경영정보시스템론</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">연구조사방법론(Research & Survey Methods)</div>
		        			</li>
		        		</ul>
		        	</div>
		        </div>
	            <p>
	            	<span><img alt="menu sub title bar" src="../image/menu_sub_titlebar.png">IT경영전공<img alt="menu sub title bar" src="../image/menu_sub_titlebar.png" style="padding: 0 2px 1px 10px;"></span>
	            </p>
		        <div class="list">
		        	<div class="table_list" style="border-top: 2px solid #b31b1b;">
		        		<ul style="display: block; padding: 0;">
		        			<li style="color: #666;">
	        					<div class="subject">지식경영시스템론(Knowledge Management Systems)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">의사결정지원시스템론(Decision Support Systems)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">인터넷비즈니스모델론(Internet Business Model)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">정보화성과관리론(IT Performance Management)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">고급경영정보시스템론(Advanced Topics on Management Information Systems)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">e-비즈니스시스템론(e-Business Systems)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">고급연구조사방법론</div>
		        			</li>
		        		</ul>
		        	</div>
		        </div>
	            <p>
	            	<span><img alt="menu sub title bar" src="../image/menu_sub_titlebar.png">IT정책전공<img alt="menu sub title bar" src="../image/menu_sub_titlebar.png" style="padding: 0 2px 1px 10px;"></span>
	            </p>
		        <div class="list">
		        	<div class="table_list" style="border-top: 2px solid #b31b1b;">
		        		<ul style="display: block; padding: 0;">
		        			<li style="color: #666;">
	        					<div class="subject">미디어방송정책론(Policy of Digital Media with Broadcasting)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">소프트웨어정책론(Policy of Software)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">컴퓨터네트워크정책론(Policy of Computer Networks)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">정보화프로젝트관리론(IT Project Management)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">정보화품질인증론(IT Quality Certification)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">데이터품질관리론(Data Quality Management)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">모바일웹개발기술론(Technologies for Developing Mobile Web Applications)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">SW패키지수출전략론(Export Strategies of Software Packages)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">빅데이터관리론(Big-Data Management)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">오픈소스기반개발방법론(Methodology Based on Open Source SW)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">클라우드컴퓨팅론(Cloud Computing)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">디지털사회특론</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">고급IT정책경영세미나</div>
		        			</li>
		        		</ul>
		        	</div>
		        </div>
	            <p>
	            	<span><img alt="menu sub title bar" src="../image/menu_sub_titlebar.png">IT금융전공<img alt="menu sub title bar" src="../image/menu_sub_titlebar.png" style="padding: 0 2px 1px 10px;"></span>
	            </p>
		        <div class="list">
		        	<div class="table_list" style="border-top: 2px solid #b31b1b;">
		        		<ul style="display: block; padding: 0;">
		        			<li style="color: #666;">
	        					<div class="subject">정부재정관리시스템론(Government Financial Management Systems)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">조세전략론(Strategics of Taxes)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">국제금융론(International Finance Course)</div>
		        			</li>
		        		</ul>
		        	</div>
		        </div>
	            <p>
	            	<span><img alt="menu sub title bar" src="../image/menu_sub_titlebar.png">IT서비스전공<img alt="menu sub title bar" src="../image/menu_sub_titlebar.png" style="padding: 0 2px 1px 10px;"></span>
	            </p>
		        <div class="list">
		        	<div class="table_list" style="border-top: 2px solid #b31b1b;">
		        		<ul style="display: block; padding: 0;">
		        			<li style="color: #666;">
	        					<div class="subject">서비스경영론(Service Management)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">서비스사이언스(Service Science)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">서비스엔지니어링(Service Engineering)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">IT서비스수출전략론(Export Strategies of IT Services in the Field)</div>
		        			</li>
		        		</ul>
		        	</div>
		        </div>
	            <p>
	            	<span><img alt="menu sub title bar" src="../image/menu_sub_titlebar.png">IT법령전공<img alt="menu sub title bar" src="../image/menu_sub_titlebar.png" style="padding: 0 2px 1px 10px;"></span>
	            </p>
		        <div class="list">
		        	<div class="table_list" style="border-top: 2px solid #b31b1b;">
		        		<ul style="display: block; padding: 0;">
		        			<li style="color: #666;">
	        					<div class="subject">조달계약관계법령(Laws of Procurement and Contract)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">지적소유권법령(Laws of Intellectual Property)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">정보기술기업법론(Laws of Information Technology corporate)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">전자금융관계법론(Laws of Electronic Banking)
	        					</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">정보보호관계법령(Laws of Security and Privacy)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">정보보호관계법령(Laws of Security and Privacy)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">법률정보시스템론(Legal Information Systems)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">정보사회윤리론(Ethical Issues in Information Society)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">개인정보보호법론(Laws of Privacy)</div>
		        			</li>
		        		</ul>
		        	</div>
		        </div>
	            <p>
	            	<span><img alt="menu sub title bar" src="../image/menu_sub_titlebar.png">IT보안전공<img alt="menu sub title bar" src="../image/menu_sub_titlebar.png" style="padding: 0 2px 1px 10px;"></span>
	            </p>
		        <div class="list">
		        	<div class="table_list" style="border-top: 2px solid #b31b1b;">
		        		<ul style="display: block; padding: 0;">
		        			<li style="color: #666;">
	        					<div class="subject">암호화정책론(Policies of Encryption and Decryption)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">통신망보안정책론(Policies in Network Security)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">모바일보안정책론(Policies in Mobile Security)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">보안인증정책론(Policies of Security Certification)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">사이버해킹대응론(Issues in Anti-Cyber Terror)</div>
		        			</li>
		        		</ul>
		        	</div>
		        </div>
	            <p>
	            	<span><img alt="menu sub title bar" src="../image/menu_sub_titlebar.png">IT행정전공<img alt="menu sub title bar" src="../image/menu_sub_titlebar.png" style="padding: 0 2px 1px 10px;"></span>
	            </p>
		        <div class="list">
		        	<div class="table_list" style="border-top: 2px solid #b31b1b;">
		        		<ul style="display: block; padding: 0;">
		        			<li style="color: #666;">
	        					<div class="subject">스마트워크정부시스템론(Smart Work Government Systems)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">전자정부평가론(Evaluation Methodology of Electronic Government)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">전자정부기획론(PPBEES Techniques of Electronic Government)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">스마트워크정부행정서비스론(Government Administration Service with Smart Work)</div>
		        			</li>
		        		</ul>
		        	</div>
		        </div>
	            <p>
	            	<span><img alt="menu sub title bar" src="../image/menu_sub_titlebar.png">IT국방전공<img alt="menu sub title bar" src="../image/menu_sub_titlebar.png" style="padding: 0 2px 1px 10px;"></span>
	            </p>
		        <div class="list">
		        	<div class="table_list" style="border-top: 2px solid #b31b1b;">
		        		<ul style="display: block; padding: 0;">
		        			<li style="color: #666;">
	        					<div class="subject">네트워크중심전(NCW)론(Network Centric Warfare)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">국방자원관리시스템론(Reource Management Systems for Defense)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">군사사이버전론(Military Cyber Warfare)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">국제기술이전방법론(International Technology Transfer)</div>
		        			</li>
		        		</ul>
		        	</div>
		        </div>
	            <p>
	            	<span><img alt="menu sub title bar" src="../image/menu_sub_titlebar.png">IT사업전공<img alt="menu sub title bar" src="../image/menu_sub_titlebar.png" style="padding: 0 2px 1px 10px;"></span>
	            </p>
		        <div class="list">
		        	<div class="table_list" style="border-top: 2px solid #b31b1b;">
		        		<ul style="display: block; padding: 0;">
		        			<li style="color: #666;">
	        					<div class="subject">연구개발기획전략론(Planning and Strategies for Research and Development)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">IT기술평가전략론(Technology Evaluation Strategies for IT)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">IT기술거래전략론(Technology Commerce Strategies for IT)</div>
		        			</li>
		        			<li style="color: #666;">
	        					<div class="subject">IT기술사업화전략론(Technology Business Strategies for IT)</div>
		        			</li>
		        		</ul>
		        	</div>
		        </div>
	        </div>
	        <div style="width: 80%;">&nbsp;</div>
		</div>
		<c:import url="../import/footer.jsp" />
	</body>
</html>