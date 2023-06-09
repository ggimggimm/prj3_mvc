<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Expires" content="-1" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="No-Cache" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta name="viewport" content="width=1024" />
    <meta name="keywords" content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작" />
    <meta name="description" content="CGV는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. CGV홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다." />
    <meta property="og:site_name" content="영화 그 이상의 감동. CGV"/>
    <meta id="ctl00_og_title" property="og:title" content="비밀번호 변경 &lt; 로그인 | 영화 그 이상의 감동. CGV"></meta>
    
    
    <meta id="ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png"></meta>
    <link rel="alternate" href="http://m.cgv.co.kr" />
    <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
    <title id="ctl00_headerTitle">비밀번호 변경 &lt; 로그인 | 영화 그 이상의 감동.</title>
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
    
    <script type="text/javascript" src="/common/js/extraTheaters.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.config.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.tmpl.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.validate.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.paging.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.ui/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.utils.js"></script>
	<script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.pageing.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.init.js"></script>

    <!--[if lte IE 9]><script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.placeholder.js"></script><![endif]-->
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/silverlight_link.js"></script>
	<script src="https://img.cgv.co.kr/R2014/js/slick/slick.js" type="text/javascript" charset="utf-8"></script>

    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick.css" />
	<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick-theme-custom.css" />

    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/icheck/login.timer.js"></script>
    <script src="https://img.cgv.co.kr/R2014/js/icheck/icheck.min.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/icheck/iCheck.css" />

    <!-- 2020.05.07 감정지수/프리에그 프로젝트 추가 -->
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/preegg.css" />

     <!-- 2023.03.27 홈페이지 스토어 영역 內 배너 영역 미노출의 件 -->
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/giftstore/giftstore.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/giftstore/commonstore.js"></script>
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/giftstore/giftstore.css" /> 

    <!-- 홈페이지 CSS 일원화로 인한 반영 20220721 -->
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css" />
    <script type="text/javascript" src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>

	<!-- devplanet css -->
    <link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/mbr_style.css"/>
	<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/footer-sv-202301261521.css"/>
	
	<style type="text/css">
	#findPwBtn {
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
    margin-left: 120px;
    margin-top: 30px;
}

#content { margin-top: 30px; margin-bottom: 30px; margin-left: 50px;}
	</style>
<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->

<script type="text/javascript">
$(function() {
	
$("#btnFind").click(function() {
	$("#findPwFrm").submit();
});//click
});//ready

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

<script>
	$(function() {
		
		
		$("#findPwBtn").click(function(){
			var user_id = $("#userId").val();
			var email1 = $("#email").val();
			var email2 = $("#email2").val();
			var email = email1+"@"+email2;
			var name = $("#name").val();

			if(email ===null || email==="" || email2 === null || email2 ===""){
				alert("이메일을 입력해주세요");
				return;
			}
			if(userId===null || userId===""){
				alert("아이디를 입력해주세요");
				return;
			}
			if(name===null || name===""){
				alert("이름을 입력해주세요");
				return;
			}
			
			
			
			$.ajax({
				
				url:"find_pw_process.do",
				type:"POST",
				data:{user_id : user_id,
					name : name,
					email : email},
				dataType:"json",
				success : function(response) {
					
				 	if(response.available){
				 		
				 		location.href="update_pw_frm.do";
					}else{
						alert(response.msg);
						return;
					}//end else
					 
					
				},
				error : function(xhr){
						alert("서버 오류가 발생했습니다.");
				}//end error
				
			});//ajax
			
			
		});//click
		
		$("#okBtn").click(function() {
			$("#frm").submit();
		});//click
		
		$("#searchBtn").click(function(){
			
			$("#movieSearchFrm").submit();		
			
		});//click
		
		
	});//ready
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
            		<li><a href="/prj3_mvc/login.do" class="logout" title="로그아웃" ><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png" alt="로그아웃" /><span>로그인</span></a></li>
            		<li><a href="/prj3_mvc/login.do"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png" alt="MY PAGE" /><span>MY PAGE</span></a></li>
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
                    <li>
                        <a href="/prj3_mvc/find_id.do">아이디 찾기</a>
                    </li>
                    <li class="on">
                        <a href="/prj3_mvc/find_pw.do">비밀번호 찾기</a>
                    </li>
                </ul>

                <h3>비밀번호 찾기</h3>
                <p>
                    비밀번호가 기억나지 않으세요? 비밀번호를 재설정하실 수 있습니다. 
                </p>

        <!-- ******************************************** 수정된 부분 시작! ******************************************** -->
                        <div class="cols-enterform find_0826 find_pw_id">
                            <div class="col-confirm">
                                <h4>비밀번호 재설정</h4>
                                <div id="wrap">
	<!--// Contents Area -->
	<div id="container">
		<div id="content">
			<div class="mbrSec mbrSch mbrSchPwd">
				<form action="find_pw_process.do" id="findPwFrm" name="findPwFrm" method="post">
				    <!--// 이메일 인증 -->
				    <div class="mbrCertifyData mbrCertifyDataGG">
				        <fieldset>
				        <legend>개인회원-이메일인증 입력폼</legend>	
					    <div class="mbrTplBox">
						    <ul class="mbrTplData1">
							    <li><label for="M_ID" class="title">아이디</label> <input type="text" name="userId" id="userId"  maxlength="20" style="width:308px;ime-mode:inactive;" class="ipText" value=""></li>
							    <li id="devName"><label for="lb_name" class="title">이름</label> <input type="text" name="name" id="name"  maxlength="50" style="width:308px;ime-mode:active;" class="ipText"></li>
							    <li id="devEmailForm">
								    <label for="lb_email_head" class="title">이메일 주소</label>
								    <input type="text" name="email" id="email" maxlength="30" style="width:80px;" class="ipText"/> 
								    <span class="delimiter">@</span>
								    <input type="text" name="email2" id="email2" maxlength="20" style="width:80px;" class="ipText" title="e-메일 서비스 입력" /> 
								    <select title="e-메일 사업자" name="Email_Addr" id="Email_Addr" class="ipSelect ipSelect_1" onclick="selectEmail()">
									    <option value="" selected>선택하세요</option>
									    <option value="naver.com">naver.com</option>
									    <option value="hanmail.net">hanmail.net</option>
									    <option value="nate.com">nate.com</option>
									    <option value="daum.net">daum.net</option>
									    <option value="gmail.com">gmail.com</option>
									    <option value="dreamwiz.com">dreamwiz.com</option>
									    <option value="etc">직접입력</option>
								    </select>
							    </li>
						    </ul>
							<p class="mbrBtnFunc">
								<button type="button" id="findPwBtn" name="findPwBtn">
									<span style="width: 120px; height: 50px; font-family: 'Noto Sans KR', sans-serif;">비밀번호찾기</span>
								</button>
							</p>
					    </div>
					    </fieldset>
				    </div>
                </form>
			</div>
			<hr/>
			<hr/>
	
		</div>
	</div>
	<hr/>
</div>
                            </div>
                        </div>
                    </div>
   <!-- ******************************************** 수정된 부분 끝! ******************************************** -->
    </div>    
</div>
<!-- 실컨텐츠 끝 -->

<!-- find id -->
<form name="frmFindAccount" id="frmFindAccount" method="post" action="https://www.cgv.co.kr/user/login/find-pw-proc.aspx" novalidate="novalidate">   
    <input type="hidden" id="userid" name="userid" /> 
</form>
<!-- //find id -->

<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/crypto.js"></script>
<script type="text/javascript">
//<![CDATA[

    (function ($) {
        $(function () {

            var $frm = $('#form1');

            $frm.validate({
                submitHandler: function (form) {

                    var strUserID = $.trim($("#txtUserId").val());
                    
                    if (strUserID.length == 0) {
                        alert("아이디를 입력해 주세요.");
                        return false;
                    }

                    var $AccountFrm = $('#frmFindAccount');

                    $AccountFrm.find('#userid').val(app.crypto.AESEncryptToBase64($frm.find('#txtUserId').val()));

                    $AccountFrm.submit();
                    return false;
                }
            });
        });
    })(jQuery);
//]]>
</script>
            <!--/ Contents End -->
		 </div>
		<!-- /Contents Area -->
	</div>
    <!-- E Contaniner -->
    
    <!-- S Popup -->
    <div class="com_pop_wrap">
        <div class="com_pop_fog"></div>
    </div>
    <div class="pop_wrap">
    <!-- S > [팝업] 지원 OS 업데이트 유도-->
        <div id="pop_supportOS" class="popup" style="display:none">
            <div class="pop_iexp_wrap" style="position:fixed; left:50%; top:50%; width:600px; margin:-165px 0 0 -300px; z-index:1000;">
                <div class="pi_headline">
                    <img src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_headline2.jpg" alt="CGV 홈페이지는 고객님께서 사용중인 MS Windows XP에서 정상적인 서비스 이용이 어려울 수 있으며, OS업데이트를 권장합니다." />
                </div>
                <div class="down_app">
                    <p><img src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_downtxt.jpg" alt="OS 업데이트가 어려운 경우 모바일앱을 이용하세요!!!" /></p>
                    <a class="btn" href="https://itunes.apple.com/kr/app/id370441190?mt=8" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ios.jpg" alt="Ios down" /></a>
                    <a class="btn" href="https://play.google.com/store/apps/details?id=com.cgv.android.movieapp" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_android.jpg" alt="Android down" /></a>
                </div>
                <a class="btn_close">닫기</a>
            </div>
         </div>
    <!-- S > [팝업] 지원 브라우저 다운로드 유도-->
         <div id="pop_supportBrower" class="popup" style="display:none">
            <div class="pop_iexp_wrap" style="position:fixed; left:50%; top:50%; width:600px; margin:-265px 0 0 -300px; z-index:1000;">
                <div class="pi_headline">
                    <img src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_headline1.jpg" alt="CGV 홈페이지는 Internet Explorer 9이상에서 최적의 서비스 이용이 가능합니다. IE9 이하 브라우저에서 이용 시 정상적인 서비스 이용이 어려울 수 있으며, 브라우저 업그레이드 하시기를 권장합니다." />
                </div>
                <ul class="down_browser">
                    <li><a href="https://www.microsoft.com/ko-kr/edge" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ie.jpg" alt="Internet Explorer 다운받기" /></a></li>
                    <li><a href="https://www.google.com/chrome/browser/desktop/index.html" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_chrome.jpg" alt="Chrome 다운받기" /></a></li>
                </ul>
                <div class="down_app">
                    <p><img src="https://img.cgv.co.kr/images/popup/1606_iexp/pop_iexp_downtxt.jpg" alt="OS 업데이트가 어려운 경우 모바일앱을 이용하세요!" /></p>
                    <a class="btn" href="https://itunes.apple.com/kr/app/id370441190?mt=8" target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_ios.jpg" alt="Ios down" /></a>
                    <a class="btn" href="https://play.google.com/store/apps/details?id=com.cgv.android.movieapp " target="_blank"><img src="https://img.cgv.co.kr/images/popup/1606_iexp/btn_down_android.jpg" alt="Android down" /></a>
                </div>
                <a class="btn_close">닫기</a>
            </div>
        </div>
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
</div>
</body>
</html>