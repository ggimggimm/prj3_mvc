<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	#findIdBtn {
	display: inline-block;
	overflow: visible;
    background: transparent;
    cursor: pointer;
    background-color: #fb4357;
    width: 120px;
    height: 50px;
    border-radius: 5px;
    color: white;
    font-size: 15px;
    font-weight: bold;
    margin-left: 130px;
    margin-top: 30px;
}
    #content { margin-top: 30px; margin-bottom: 30px; }
    </style>
    
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->

<script type="text/javascript">

$(function() {
	$("#findIdBtn").click(function() {
		var email1 = document.getElementById('email1').value;
		var email2 = document.getElementById('email2').value;

		var email = email1 + '@' + email2;

		$("#email").val(email);

		console.log(email);

		$("#findIdFrm").submit();
	}); // click
}); // ready

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
       			<a href="mainPage.do">
        			<img src="http://localhost/prj3_mvc/images/movie.png" alt="movieplanet" />
        		</a>
        		<span>MOVIEPLANET</span></h1>
        		<ul class="memberInfo_wrap">
            		<li><a href="login.do" class="logout" title="로그아웃" ><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png" alt="로그아웃" /><span>로그인</span></a></li>
            		<li><a href="mypage.do"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png" alt="MY PAGE" /><span>MY PAGE</span></a></li>
        		</ul>
    		</div>
		</div>
           
		<!-- 서브 메뉴 -->
		<div class="nav">
    		<div class="contents">
        		<h1><a href="/" tabindex="-1"><img src="https://img.cgv.co.kr/R2014/images/common/logo/logoWhite.png" alt="CGV" /></a></h1>
        		<ul class="nav_menu">
            	<li>
                	<h2><a href="search_movie.do">영화</a></h2>
            	</li>
            	<li>
                	<h2><a href="movie_reserve.do"><strong>예매</strong></a></h2>
            	</li>
            	<li>
            	</li>
        	</ul>
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
							<li><a href="find_pw.do">비밀번호 찾기</a></li>
						</ul>

						<h3>아이디 찾기</h3>
						<p>회원가입 시 입력한 본인정보를 입력해 주세요.</p>

						<div class="cols-enterform find_0826 find_2way">
							<div class="col-confirm">
								<h4>아이디 찾기</h4>
								<div id="wrap">
									<!--// Contents Area -->
									<div id="container">
										<div id="content">
											<div class="mbrSec mbrSch mbrSchID">
												<form action="find_id_process.do" id="findIdFrm" name="findIdFrm" method="post">
													<!--// 이메일 인증 -->
													<div class="mbrCertifyData mbrCertifyDataGG">
													<fieldset>
														<legend>개인회원-이메일인증 입력폼</legend>
														<div class="mbrTplBox">
															<ul class="mbrTplData1">
																<li id="devName"><label for="lb_name" class="title">이름</label>
																	<input type="text" name="name" id="name" maxlength="50" style="width: 308px; ime-mode: active;" class="ipText"/>
																</li>
																<li id="devEmailForm">
																	<label for="lb_email_head" class="title">이메일 주소</label> 
																	<input type="text" name="" id="email1" maxlength="30" style="width: 80px;" class="ipText" /> 
																	<span class="delimiter">@</span> 
																	<input type="text" name="" id="email2" maxlength="20" style="width: 80px;" class="ipText" title="e-메일 서비스 입력" />
																	<input type="hidden" id="email" name="email" value=""/>
																	<select title="e-메일 사업자" name="Email_Addr" id="Email_Addr" class="ipSelect ipSelect_1" onclick="selectEmail()">
																		<option value="" selected>선택하세요</option>
																		<option value="naver.com">naver.com</option>
																		<option value="hanmail.net">hanmail.net</option>
																		<option value="nate.com">nate.com</option>
																		<option value="daum.net">daum.net</option>
																		<option value="gmail.com">gmail.com</option>
																		<option value="dreamwiz.com">dreamwiz.com</option>
																		<option value="">직접입력</option>
																	</select>
																</li>
															</ul>
															<p class="mbrBtnFunc">
																<button type="button" id="findIdBtn" name="findIdBtn">
																	<span style="width: 120px; height: 50px; font-family: 'Noto Sans KR', sans-serif;">아이디찾기</span>
																</button>
															</p>
														</div>
													</fieldset>
												</div>
											</form>
										</div>
										<hr />
										<hr />
									</div>
								</div>
								<hr/>
							</div>
						</div>
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