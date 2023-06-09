<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<%@include file="../checkLogin.jsp" %>
    
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
    <meta id="ctl00_ctl00_og_title" property="og:title" content="개인정보변경 &lt; 나의 정보 | 영화 그 이상의 감동. CGV"></meta>
    
    
    <meta id="ctl00_ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png"></meta>
    <link rel="alternate" href="http://m.cgv.co.kr" />
    <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
    <title id="ctl00_ctl00_headerTitle">비밀번호변경 &lt; 나의 정보 | 영화 그 이상의 감동.</title>
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css" />
	<link rel="stylesheet" media="all" type="text/css" href="http://localhost/prj3_mvc/css/reset.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://localhost/prj3_mvc/css/layout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://localhost/prj3_mvc/css/module.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://localhost/prj3_mvc/css/content.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://localhost/prj3_mvc/css/common.css" />
    
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

    <!-- 각페이지 Header Start--> 
    
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css" />
    <!--통합결제-->
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/css/mypagenew.css" />
    
    <!-- devplanet css -->
    <link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/mbr_style.css"/>
	<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/footer-sv-202301261521.css"/>
	<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/mbr_tpl.css"/>
	
	 <!-- jQuery CDN 시작 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
     <!-- jQuery CDN 끝 -->
	
	<style type="text/css">
	#okBtn {
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
    margin-right: 10px;
}

	#cancelBtn {
	display: inline-block;
	overflow: visible;
    background: transparent;
    cursor: pointer;
    background-color: #b7b7b7;
    width: 100px;
    height: 50px;
    border-radius: 5px;
    color: white;
    font-size: 15px;
    font-weight: bold;
    margin-top: 30px;
	}
	</style>
	
	<script>
	$(function() {
		
		$("#newPass2").keyup(function() {
			
		var newPass = $("#newPass").val();
		var newPass2 = $(this).val();
		
		if(newPass != newPass2) {
			$("#output").css({ "color" : "red"});
			$("#output").html("비밀번호가 일치하지 않습니다.");
		}else {
			$("#output").css({ "color" : "blue"});
			$("#output").html("비밀번호가 일치합니다.");
			
		}//end else
		
		});//keyup
		
		$("#pass").blur(function(){
			var pass = $("#pass").val();

			if(pass!=null && pass!=""){
			
			$.ajax({
				
				url:"confirm_pass_process.do",
				type:"POST",
				data:{pass : pass},
				dataType:"json",
				success : function(response) {
					
				 	if(response.available){
				 		$("#passResult").html(response.msg);
					}else{
						alert(response.msg);
						$("#pass").val("");
						$("#pass").focus();
						$("#passResult").html("");
						return;
					}//end else
					 
					
				},
				error : function(xhr){
						alert("서버 오류가 발생했습니다.");
				}//end error
				
			});//ajax
			
			}//end if-null아닐때
			
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
    
	<div class="header">			
            <!-- 서비스 메뉴 --> 
		<div class="header_content">
    		<div class="contents">
        		<h1 onclick="">
       			<a href="main_loged_frm.do">
        			<img src="http://localhost/prj3_mvc/images/movie.png" alt="movieplanet" />
        		</a>
        		<span>MOVIEPLANET</span></h1>
        		<ul class="memberInfo_wrap">
            		<li><a href="mainPage.do" class="logout" title="로그아웃" ><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png" alt="로그아웃" /><span>로그아웃</span></a></li>
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
        	<div class="totalSearch_wrap">
            <form id="movieSearchFrm" name="movieSearch" action="search_movie.do">
            <label for="totalSearch">
                <input type="text" id="header_keyword" placeholder="영화 검색" />
                <input type="hidden" id="header_ad_keyword" name="header_ad_keyword" />
            </label>
            <button type="button" class="btn_totalSearch" id="searchBtn">검색</button>
            <iframe src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Search_txt" width="0" height="0" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" allowfullscreen="allowfullscreen" mozallowfullscreen="mozallowfullscreen" msallowfullscreen="msallowfullscreen" oallowfullscreen="oallowfullscreen" webkitallowfullscreen="webkitallowfullscreen"></iframe>
            </form>
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
			
    <script type="text/javascript">
    //<![CDATA[
        (function ($) {
            $(function () {

                //특별관 >


                //동성로타운
                $('.special1_pop').on('click', function () {
                    openDownTown();
                    return false;
                });



                function openDownTown() {
                    //var win = window.open('http://section.cgv.co.kr/event/2016/0419_dongsungro_town/pop_service.aspx', 'winDownTown', 'left=0,top=0,width=670,height=800,toolbar=no,scrollbars=yes');
                    //win.focus();
                }
            });
        })(jQuery);
    //]]>
</script>
<div class="sect-common">
<input type="hidden" id="isTown" name="isTown" value="Y" />
<input type="hidden" id="userTownMemberInfo" name="userTownMemberInfo" value="" />
    <div class="mycgv-info-wrap">
		<div class="skipnaiv" >
			<a href="#menu" id="skipPersoninfo">개인화영역 건너띄기</a>
		</div>
        <div class="sect-person-info">
        	<h2 class="hidden">개인화 영역</h2> 
        	<div class="box-image">
				<span class="thumb-image">
					<img src="http://localhost/prj3_mvc/images/${lrDomain.profile eq null ? 'default_profile.gif' : lrDomain.profile }" alt="${ lrDomain.name }님 프로필 사진" onerror="errorImage(this, {'type':'profile'})" />
					<span class="profile-mask"></span>
				</span>
        	</div>
        	<div class="box-contents newtype">
        		<div class="person-info">
        			<strong>${ lrDomain.name }님</strong>
        			<em>${lrDomain.user_id }</em>
        			<span>닉네임 : <i>${ lrDomain.nick_name eq null ? "닉네임을 설정해주세요": lrDomain.nick_name }</i> </span>
        			<button id="go_edit_page" type="button" title="새창열림">나의 정보 변경</button>
        		</div>
        	</div>
        </div>
    </div>
</div>

<div class="cols-content" id="menu">
    <div class="col-aside">
		<div class="skipnaiv">
			<a href="#mycgv_contents" id="skipMycgvMenu">MYCGV 서브메뉴 건너띄기</a>
		</div>
	    <h2>MY CGV 서브메뉴</h2>
	    <div class="snb">
	        <ul>
	            <li class="on">
                    <a href="mypage.do" title="현재 선택">MY HOME <i></i></a>
                </li>
	            <li >
                    <a href="/user/mycgv/reserve/?g=1" >나의 예매내역 <i></i></a>
                </li>
	            <li >
                    <a href="/user/mycgv/myinfo/?g=1" >회원정보<i></i></a>
	                <ul>
                        <li>
                            <a href="check_pass.do" >개인정보 변경</a>
                        </li>
                        <li>
                            <a href="confirm_pass.do" >비밀번호 변경</a>
                        </li>
	                </ul>
	            </li>
                 <li >
                    <a href="my_profile.do" >프로필 관리<i></i></a>
                </li>
                <li class="my-event"><a href="/user/movielog/watched.aspx">내가 본 영화</a></li>
	        </ul>
	        <div class="ad-partner01">
                <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@M_Rectangle" width="160" height="300" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" id="M_Rectangle"></iframe>
            </div>
            <div class="ad-partner02">
                <iframe src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Image_text" width="160" height="35" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" id="Image_text"></iframe>
            </div>
	    </div>
    </div>
	<div class="col-detail" id="mycgv_contents">
	    




		<div class="tit-mycgv">
			<h3>비밀번호 변경</h3>
		</div>
		<p style="text-align: left; font-size: 13px;">비밀번호는 <strong>8~16자 영문, 숫자, 특수문자</strong>를 사용할 수 있습니다. </p>
		<p style="text-align: left; font-size: 13px;"><em>비밀번호는 주기적(최소 6개월)으로 변경해 주시기 바랍니다.</em></p>

		<!-- 활성처리 된 탭 메뉴에 해당하는 컨텐츠 박스는 class="on" 값으로 제어 -->
		<div class="c_tab_recont on">
			<div class="sect-register cjone">
<div id="wrap">

	<!--// Contents Area -->
	<div id="container">
		<div id="content">
<!--skip은 안보임  -->	<h1 class="skip"><!-- 비밀번호 변경 --></h1>
			<form name="frm" id="frm" method="post" action="modify_pass.do">
			<fieldset>
<!--skip은 안보임  -->	<legend><!-- 비밀번호 변경 정보 입력폼 --></legend>
				<div class="mbrSec mbrMngPWD">
					<div class="mbrTplData2">
						<table summary="이 표는 비밀번호 변경 입력폼으로 현재 비밀번호, 새로운 비밀번호, 새로운 비밀번호 확인을 나타내고 있습니다.">
		<!--skip은 안보임  -->	<caption><span class="skip"><!-- 비밀번호 변경 입력폼 --></span></caption>
							<colgroup>
								<col width="18%">
								<col width="*">
							</colgroup>
							<tr>
								<th scope="row"><label for="M_PWD">현재 비밀번호</label></th>
								<td>
									<div class="mbrHelpWrap">		
										<input type="password" id="pass" name="pass" style="width:200px;" class="ipText" maxlength="20" onkeydown="blank_key_check()"/>
										<!-- <div style="left:215px;display:none;" class="mbrTplLayer mbrTplLayer_1 mbrLayerHelp" id="CautionResult1" name="CautionResult"> -->
											<!-- <div class="desc">
												<p>현재 사용중인 비밀번호를 입력해 주세요.</p> -->
											<div id="passResult">
											</div>
											<span class="arrow"></span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="M_PWD_New1">새로운 비밀번호</label></th>
								<td>
									<div class="mbrPwdHelpWrap">
									</div>
									<div class="mbrHelpWrap">
										<input type="password" id="newPass" name="newPass" style="width:200px;" class="ipText checkPwd" maxlength="16" onKeyUp="textlen('16','M_PWD_New1','y'); checkPwd('show', 'M_PWD_New1', 'idcheck', null, null, null);" onFocus="checkPwd('show', 'M_PWD_New1', 'idcheck', null, null, null);" onkeydown="blank_key_check()"/>
										<input type="hidden" name="idcheck" id="idcheck" value="kyum526" />
										<div id="PwdSafeResult"></div>
										<div id="PwdSafeForm4" style="display:none">
										</div>

										<div style="left:330px;display:none;" class="mbrTplLayer mbrTplLayer_1 mbrLayerHelp" id="CautionResult2" name="CautionResult">
											<div class="desc">
												<p>8~16자 영문, 숫자, 특수문자를 사용할 수 있습니다.</p>
											</div>
											<span class="arrow"></span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="M_PWD_New2">새로운 비밀번호 확인</label></th>
								<td>
									<div class="mbrHelpWrap">		
										<input type="password" id="newPass2" name="newPass2" style="width:200px;" class="ipText" onKeyUp="textlen('16','M_PWD_New2','y')" onKeyPress="if(event.keyCode==13) Edit_Pwd();" onkeydown="blank_key_check()"/>
										<!-- <div style="left:215px;display:none;" class="mbrTplLayer mbrTplLayer_1 mbrLayerHelp" id="CautionResult3" name="CautionResult" > -->
										<div id="output">
											<!-- <div class="desc">
												<p>비밀번호 확인을 입력해 주세요.</p>
											</div> -->
											<span class="arrow"></span>
										</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<hr/>
			</fieldset>
			</form>
		</div>
		<hr/>
	</div>
</div>
			</div>
		</div><!-- // 회원정보 수정 컨텐츠 -->
		<button type="button" id="okBtn">
			<span style="width: 120px; height: 50px; font-family: 'Noto Sans KR', sans-serif;">수정</span>
		</button>
		<button type="button" id="cancelBtn">
			<span style="width: 120px; height: 50px; font-family: 'Noto Sans KR', sans-serif;" onclick="javascript:history.back()">취소</span>
		</button>
	</div>
</div>
</div>

            
            <!--/ Contents End -->
		 </div>
		<!-- /Contents Area -->
	</div>
	</div>

    
    <!-- E 예매하기 및 TOP Fixed 버튼 -->
	
    <!-- S Footer -->
</div>

</body>
</html>