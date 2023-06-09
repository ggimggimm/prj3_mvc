<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
    <meta id="ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png"></meta>
    <link rel="alternate" href="http://m.cgv.co.kr" />
    <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
    <title id="ctl00_headerTitle">아이디/비밀번호 찾기 &lt; 로그인 | 영화 그 이상의 감동.</title>
    <link rel="shortcut icon" type="image/x-icon" href="https://img.cgv.co.kr/R2014/images/favicon.ico" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css" />
	<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://localhost/prj3_mvc/css/module.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/content.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/common.css" />
    
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/eggupdate.css" />
    <link rel="stylesheet" media="print" type="text/css" href="https://img.cgv.co.kr/R2014/css/print.css" />    
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css" />

    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick.css" />
	<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick-theme-custom.css" />

    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/icheck/iCheck.css" />

    <!-- 2020.05.07 감정지수/프리에그 프로젝트 추가 -->
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/preegg.css" />

     <!-- 2023.03.27 홈페이지 스토어 영역 內 배너 영역 미노출의 件 -->
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/giftstore/giftstore.css" /> 

    <!-- 홈페이지 CSS 일원화로 인한 반영 20220721 -->
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css" />
    
    <!-- devplanet css -->
    <link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/mbr_style.css"/>
	<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/footer-sv-202301261521.css"/>

    
    <style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap');
	.mbrTplData1 li {clear:both; padding:5px 0 5px 24px; overflow:inherit;}
	.mbrTplData1 li:after { content:''; display:block; clear: both; }
	.mbrTplData1 li .tipHover { display:inline-block; position:relative; margin-left:5px; margin-top:-2px; vertical-align: middle;}
	.mbrTplData1 li .tipHover button {}
	.mbrTplData1 li .tipHover .tip { display:none; position:absolute; top:15px; left:0; width:208px; padding:15px 20px; border:1px solid #565d79; box-sizing:border-box; color:#666; font-weight:normal; line-height:1.5; background:#fff url('/img/member/popLoginClose.gif') no-repeat 190px 8px; }
	.mbrTplData1 li .tipHover .tip .tipClose { overflow:hidden; position:absolute; top:5px; right:5px; width:10px; height:9px; text-indent:-999px; background:url('/img/member/popLoginClose.gif') no-repeat }

	.secNav { width: 100%; height: 100px; background-color: #e74c3c}
	
	#spanId, #spanPass { font-family: 'Noto Sans KR', sans-serif; }
	#loginBtn {
	display: inline-block;
	overflow: visible;
    background: transparent;
    cursor: pointer;
    background-color: #fb4357;
    width: 100px;
    height: 50px;
    border-radius: 5px;
    color: white;
    font-size: 15px;
    font-weight: bold;
    margin-top: 30px;
    margin-left: 45%;
}
    #content { margin-top: 30px; margin-bottom: 30px; }
    </style>
    
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->

<script type="text/javascript">
$(function() {	
	$("#findId").click(function() {
		$("#findIdFrm").submit();
	});// click
});// ready

//이메일 선택 이벤트
function selectEmail() {
    var emailInput = document.getElementById("email2");
    var emailSelect = document.getElementById("Email_Addr");
    
	
    emailSelect.addEventListener("change", function() {
    	  emailInput.value = emailSelect.value;
    	  if(emailSelect.selectedIndex == 7) {
    		  $("#email2").focus();
    	  }//end if
    });
}//selectEmail

</script>
</head>
<body class="">

<div class="skipnaiv">
	<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
</div>    
<div id="cgvwrap">
    
    <div class="cgv-ad-wrap" id="cgv_main_ad">
        <div id="TopBarWrapper" class="sect-head-ad">
            <div class="top_extend_ad_wrap">
                <div class="adreduce" id="adReduce">                    
                    <iframe src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@TopBar_EX" width="100%" height="80" title="" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" name="TopBanner" id="TopBanner"></iframe>
                </div> 
                <div class="adextend" id="adExtend"></div>
            </div><!-- //.top_extend_ad_wrap -->
        </div>    
    </div>    
	
	<div class="header">			
            <!-- 서비스 메뉴 --> 
		<div class="header_content">
    		<div class="contents">
        		<h1 onclick="">
       			<a href="/">
        			<img src="http://localhost/prj3_mvc/images/movie.png" alt="movieplanet" />
        		</a>
        		<span>MOVIEPLANET</span></h1>
        		<ul class="memberInfo_wrap">
            		<li><a href="/user/login/logout.aspx" class="logout" title="로그아웃" ><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png" alt="로그아웃" /><span>로그인</span></a></li>
            		<li><a href="/user/mycgv/"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png" alt="MY PAGE" /><span>MY PAGE</span></a></li>
        		</ul>
    		</div>
		</div>
           
		<!-- 서브 메뉴 -->
		<div class="nav">
    		<div class="contents">
        		<h1><a href="/" tabindex="-1"><img src="https://img.cgv.co.kr/R2014/images/common/logo/logoWhite.png" alt="CGV" /></a></h1>
        		<ul class="nav_menu">
            	<li>
                	<h2><a href="/movies/?lt=1&ft=0">영화</a></h2>
            	</li>
            	<li>
                	<h2><a href="/ticket/"><strong>예매</strong></a></h2>
            	</li>
            	<li>
            	</li>
        	</ul>
        	<div class="totalSearch_wrap">
            	<label for="totalSearch">
                	<input type="text" id="header_keyword" placeholder="영화 검색" />
                	<input type="hidden" id="header_ad_keyword" name="header_ad_keyword" />
            	</label>
            	<button type="button" class="btn_totalSearch" id="btn_header_search">검색</button>
            	<iframe src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Search_txt" width="0" height="0" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" allowfullscreen="allowfullscreen" mozallowfullscreen="mozallowfullscreen" msallowfullscreen="msallowfullscreen" oallowfullscreen="oallowfullscreen" webkitallowfullscreen="webkitallowfullscreen"></iframe>
        	</div>
    	</div>
	</div>
            <!-- 서브 메뉴 -->			
</div>
	<!-- E Header -->

<!-- Contaniner -->
<div id="contaniner"  class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
	<!-- Contents Area -->
	<div id="contents" class="">
    	<!-- Contents Start -->
		<!-- 실컨텐츠 시작 -->
				<div class="wrap-login">
					<div class="sect-user">
						<ul class="tab-menu-round">
							<li class="on"><a href="find_id.do">아이디 찾기</a></li>
							<li><a href="/user/login/find-pw.aspx?act=pw">비밀번호 찾기</a></li>
						</ul>

						<h3>아이디 조회</h3>

						<div class="cols-enterform find_0826 find_2way">
							<div class="col-confirm">
								<h4>보유 아이디 목록</h4>
								<div id="wrap" style="margin-left: 5%">
	<!--// Contents Area -->
	<div id="container">
		<div id="content">
			<div class="mbrSec mbrSchIDResult">

				<div class="mbrTplBox">
					<c:if test="${ empty findId }">
						
					</c:if>
					<c:choose>
						<c:when test="${ empty findId }">
							<p class="info"><strong>입력된 정보로 등록된 아이디는 없습니다.</strong></p>
						</c:when>
						<c:when test="${ !empty findId }">
							<p class="info"><strong>입력된 정보로 등록된 아이디는 총<em>1개</em> 있습니다.</strong></p>		
						</c:when>
					</c:choose>
					
					<br/>
					<div class="mbrTplBoxList">
						<ul>
							<li><span id="id"><c:out value="${ findId.user_id }"/></span>  (가입일: <span><c:out value="${ findId.reg_date }"/></span>)</li> 
						</ul>
					</div>
				</div>
			</div>
			<hr>
		</div>
		<hr>
	</div>
</div>
						</div>
						<p class="mbrBtnFunc">
								<a href="login.do">
									<button type="button" id="loginBtn">
										<span style="width: 120px; height: 50px; font-family: 'Noto Sans KR', sans-serif;">로그인</span>
									</button>
								</a>
						</p>
					</div>
				</div>
			</div>
<!-- 실컨텐츠 끝 -->

<!-- find id -->
<form name="frmFindAccount" id="frmFindAccount" method="post" action="https://www.cgv.co.kr/user/login/find-account-proc.aspx" novalidate="novalidate">
    <input type="hidden" id="username" name="username" />
    <input type="hidden" id="userid" name="userid" />
    <input type="hidden" id="birthday" name="birthday" />
	<input type="hidden" id="mobile1" name="mobile1" />
	<input type="hidden" id="mobile2" name="mobile2" />
	<input type="hidden" id="mobile3" name="mobile3" /> 
	<input type="hidden" id="act" name="act" value="id" />
</form>
<!-- //find id -->

<form name="frmFindAccountAuth" id="frmFindAccountAuth" method="post" action="https://www.cgv.co.kr/user/login/find-account-auth.aspx" novalidate="novalidate">
    <input type="hidden" id="authType" name="authType" />
    <input type="hidden" id="userid" name="userid" />
    <input type="hidden" name="act" value="id" />
</form>
            <!--/ Contents End -->
		 </div>
		<!-- /Contents Area -->
	</div>
    
<!-- footer 시작 -->
<div id="footer" class="footer footer--main">
    <div class="footer__wrap">
         <div class="footer__notice">
                <p class="copyright">
            © <strong><a href="http://sist.co.kr/" target="_blank">MOVIEPLANET</a></strong> LLC. All rights reserved.
        </p>
        </div> 
         <div class="footer__service">
            <ul>
                <li><a href="http://211.63.89.139/prj3/project_user/1.main/main_page.jsp" target="_blank">회사소개</a></li>
                <li><a href="https://www.jobkorea.co.kr/service_jk/provision/provision_gg.asp" target="_blank">이용약관</a></li>
                <li><a href="https://www.jobkorea.co.kr/service/PolicyPrivacy" target="_blank"><strong>개인정보처리방침</strong></a></li>
            </ul>
        </div>  
    </div>
</div>
<!-- footer 끝 -->
<div style="position:absolute; left:-5000px; overflow:hidden;">
</div>
</body>
</html>