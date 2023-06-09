<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<title>MOVIEPLANET-로그인</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/gnb.css">
<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/gnb_sub.css">
<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/login-sv-202203141106.css">
<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/footer-sv-202301261521.css"/> <!-- (JK-9495) PC Main Footer 변경 (2021.02.18) -->

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->

<script type="text/javascript">
$(function() {
	
	
	$("#btnLogin").click(function() {
		
		var userId = $("#user_id").val();
		
		if(userId=="") {
			alert("아이디를 입력해 주세요.");
			return;
		}//end if
		
		
		var pass = $("#pass").val();
		
		if(pass=="") {
			alert("비밀번호를 입력해 주세요.");
			return;
		}//end if
	
		
		
		
		$.ajax({
			url:"login_process.do",
			method: "post",
			data:{user_id : userId ,
				  pass : pass },
			dataType:"json",
			success : function(response) {

				if(!response.success){ //조회 x
					alert(response.msg);
				 
					$("#pass").val("");
					$("#pass").focus();
					return;
				}//end if
				
				
					//로그인으로 이동하는 요청
					window.location.href = response.url;				
				
			},
			error : function(xhr){
				console.log(xhr.status+"/"+xhr.statusText);
				alert("로그인에 실패했습니다. 잠시 후 다시 시도해주세요.");
			}//end error
				
		});//ajax
		
	});// click
	
	
});// ready
</script>
</head>

<body id="login" class="logout ">

<p id="skipNavigation"><a href="#content">메뉴 건너뛰기</a></p>

<div id="wrap">
	<div id="container">
		<div class="logtop logtop_login" style="margin-bottom: 30px;">
			<img src="http://localhost/prj3_mvc/images/movie.png"/>
			<p class="lnb"><a href="mainPage.do">홈</a> 
		</div>

		<div class="secLogin">
			<div class="logWrap" id="loginFormWrite">
				<h2 class="blind">로그인</h2>

				<form action="login_process.do" id="loginFrm" name="loginFrm" method="post">
				<fieldset class="login_form"><legend class="blind">로그인 입력폼</legend>
					
					<div class="select_row devHide" id="devCoTab">
						<p class="sort">
							<input type="radio" id="lb_memberGi" name="Co_DB_Name" value="GI"  checked data-href="https://www.jobkorea.co.kr/Join/GI_Regist"> <label for="lb_memberGi"  class="radioOn">기업회원</label>
							<input type="radio" id="lb_memberSf" name="Co_DB_Name" value="SF"  data-href="https://www.jobkorea.co.kr/Join/HR_Regist"> <label for="lb_memberSf" >서치펌회원</label>
						</p>
					</div>

					<div class="input_row">
						<label for="M_ID" id="lb_id" class="blind">아이디</label>
						<input type="text" class="inpTxt inpID off" name="user_id" placeholder="아이디" id="user_id" size="16" maxlength="20" title="아이디 입력" style="ime-mode:inactive;" >
						<label for="M_PWD" id="lb_pw" class="blind">비밀번호</label>
						<input type="password" class="inpTxt inpPW off devCapsLock" name="pass" placeholder="비밀번호" id="pass" size="16" title="비밀번호 입력">
						<button type="button" class="btLoin" id="btnLogin">로그인</button>
                        <div class="lyCapsLock" id="ipNotice">
							<em>Caps Lock</em>이 켜져 있습니다.<span class="mainIcn mainIcnArrUp"></span>
						</div>
					</div>
					<div class="check_row">
						<input type="checkbox" name="lb_idSave" id="lb_idSave" value="Y" style="display:none"> <label for="lb_idSave">.</label>
						<!--<span id="ipNotice" class="devHide"><img src="https://i.jobkorea.kr/content/images/login/ver_1/ip_layer_bg.png" alt="개인정보 보호를 위해 IP보완을 ON으로 변경해주세요"></span>-->
						<p class="sch">
							<a href="find_id.do" target="_new">아이디 찾기</a> 
							<span class="txtBar"> | </span> 
							<a href="find_pw.do" target="_new">비밀번호 찾기</a>
						</p>
					</div>

					<!--// 그림문자 입력폼 -->
					<div class="capck_row loginImgTxt devHide">
						<label for="gtxt" class="blind">그림문자</label>
						<input type="text" class="inpTxt inpCap" name="gtxt" id="gtxt" size="16" title="그림문자 입력"><!--[개발] end 추가하면 배경텍스트 사라짐 -->
						<div class="captcha">
							<span class="img"><img id="imgCaptcha" src="/login/captcha.asp" width="198" height="40" alt="그림문자"></span>
							<a href="javascript:void(0)" class="changeImg" onclick="RefreshImage('imgCaptcha')"><span class="skip">새로고침</span></a>
						</div>
					</div>
					<!-- 그림문자 입력폼 //-->
					<p class="alarmMsg"></p>

					<div class="join">
						<div id="M_Alert" >회원가입하시고 다양한 혜택을 누리세요!<a href="join.do" >회원가입</a></div>
						<div id="Co_Alert" style="display:none">좋은 인재를 구하시나요? 회원가입하시고 다양한 혜택을 누리세요!<a href="https://www.jobkorea.co.kr/Join/GI_Regist" target="_new">회원가입</a></div>
					</div>
				</fieldset>
				</form>
			</div>
			<div style="float:right">
				<h2 class="skip">광고</h2>
				<img src="http://localhost/prj3_mvc/images/ad_poster.png" style="width:300px; height:320px"/>
			</div><!-- AD //-->

		</div><!-- // content -->
	</div><!-- container //-->

	<div id="footer">
		<p id="copyright">© MOVIEPLANET LLC. All rights reserved.</p>
	</div><!-- footer //-->
</div>
</body>
</html>
