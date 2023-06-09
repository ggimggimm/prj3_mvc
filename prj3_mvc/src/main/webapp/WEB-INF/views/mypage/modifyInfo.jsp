<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
  <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="ko">
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원정보 수정</title>

<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/common.css"/>
		<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/footer_sub.css"/>
		<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/gnb_sub.css"/>
		<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/gnb.css"/>
		<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/mbr_common.css"/>
		<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/mbr_style.css"/>
		<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/mbr_tpl.css"/>


	    
	    <link rel="stylesheet" type="text/css" href="//i.jobkorea.kr/content/css/ver_2/member/mbr_common.css?date=202103121100"/>
	    <link rel="stylesheet" type="text/css" href="//i.jobkorea.kr/content/css/ver_2/member/mbr_tpl.css?date=202103121100">
	    
	     <link rel="stylesheet" type="text/css" href="//i.jobkorea.kr/content/css/ver_2/member/mbr_style.css?date=202103121100">
	    

    <link rel="stylesheet" type="text/css" href="//i.jobkorea.kr/deploy/pc/dist/css/personal/layout/footer-sv-202301261521.css"/> 
    
    <link
	href="//i.jobkorea.kr/content/css/ver_2/mtu/mtu_popup-sv-202212281122.css"
	rel="stylesheet" type="text/css" />
<link
	href="//i.jobkorea.kr/deploy/pc/dist/css/personal/layout/footer-sv-202301261521.css"
	rel="stylesheet" type="text/css" />

<link
	href="//i.jobkorea.kr/content/css/ver_2/text_user/resume/write-sv-202302231308.css"
	rel="stylesheet" type="text/css" />
<link
	href="//i.jobkorea.kr/content/css/ver_2/mtu/mtu_popup-sv-202212281122.css"
	rel="stylesheet" type="text/css" />
	<!-- bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <!-- bootstrap -->
<style>
.mbrSec .mbrTplData2 table td .birth {
    padding: 7px 0 0 2px;
}
	#quitMember {
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
.editBtn, .regBtn {
	background-color: #e74c3c;
	color: white;
	border: none;
	border-radius: 5px;
	width: 50px;
	height: 30px;
}

.delBtn {
	background-color: #b7b7b7;
	color: white;
	border: none;
	border-radius: 5px;
	width: 50px;
	height: 30px;
}
</style>




<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->

<!-- 다음 우편번호 API시작 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>



<script type="text/javascript">


/* text 휴대폰번호 형식 유효성 검증 
// ex)010-1234-5678
2023-04-23 최종 확인 */
function telValidation(input) {
//입력에서 숫자가 아닌 모든 문자 제거
var sanitized = input.value.replace(/[^0-9]/g, '');

// 입력이 6자보다 더 이상인지 점검하십시오.
if (sanitized.length > 6) {
// 적절한 위치에 대시 삽입
sanitized = sanitized.slice(0, 3) + '-' + sanitized.slice(3, 7) + '-' + sanitized.slice(7,11);
}

// 형식 지정된 날짜로 입력 값 업데이트
input.value = sanitized;
}//end tel


    function findZip() {
        new daum.Postcode({
            oncomplete: function(data) {
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zipcode').value = data.zonecode;
                document.getElementById("addr").value = roadAddr;
                document.getElementById("detail_addr").focus(); 
                
                
            }
        }).open();
    }
</script>
<!-- 다음 우편번호 API끝 -->

<script type="text/javascript">


$(function(){
	
	
	$("#modifyBtn").click(function(){
		
		var textValue = $("#email").val();
		var emailCheck = /\S+@\S+\.\S+/;
		 if (!emailCheck.test(textValue)) {
		   alert("이메일을 확인 해 주세요.");
		   return;
		 }//end if
		$("#frm").submit();
		
	});//click
	
	//탈퇴하기 버튼 ajax
	 $('#quitMember').click(function() {
         var user_id = "${selectInfo.user_id}"; // 탈퇴할 사용자의 ID를 얻는 로직을 추가해야 합니다.

         $.ajax({
             url: "quitMember.do",
             type: "POST",
             data: { user_id: user_id },
             success: function(response) {
                 // 요청이 성공적으로 처리되었을 때의 로직을 작성합니다.
                 // 예를 들어, 메인 페이지로 이동하는 코드 등을 추가할 수 있습니다.
                 alert("회원탈퇴를 하시겠습니까");
                location.href = "mainPage.do"; //상준이가 만든 select된 메인페이지로 이동하는 요청url.do
             },
             error: function(xhr, status, error) {
            	 alert("오류발생"+ xhr.status + " / " + xhr.statusText);
                 // 요청이 실패했을 때의 로직을 작성합니다.
                 // 예를 들어, 오류 메시지를 표시하는 코드 등을 추가할 수 있습니다.
             }
         });
     });
	
	$("#kakao").click(function() {
		findZip();
	});//kakao
	
	$("#cancel").click(function() {
		location.href="http://localhost/devplanet_project/project_user/1.main/main_page_loged.jsp";
	});//cancel
	
	
});//ready

/* input 날짜 형식 유효성 검증 (스킬, 어학, 자격증 2023/05/12)
	2023-04-18 추가 */
function formatDate(input) {
// 입력에서 숫자가 아닌 모든 문자 제거
var sanitized = input.value.replace(/[^0-9]/g, '');

// 입력이 6자보다 더 이상인지 점검하십시오.
if (sanitized.length > 6) {
// 적절한 위치에 대시 삽입
sanitized = sanitized.slice(0, 4) + '/' + sanitized.slice(4, 6) + '/' + sanitized.slice(6);
}

// 형식 지정된 날짜로 입력 값 업데이트
input.value = sanitized;
}// formatDate


// 이메일 선택 이벤트
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

<body id="secMbr" class="mbrSubMng mbrSubMngGG mbrSubMngInfo">

<!--// Header Area -->


<!--// Header area(회원정보관리) -->
<div>
	<div style="width:800px;">
		<a href="main_loged_frm.do"><img alt="무브플래닛" src="http://localhost/prj3_mvc/images/movie.png" style="width:150px; margin-top: 10px;"></a>
	</div>
</div>
<hr>

<div class="devGuideBox ly_popup_info" style="top: 22px; left: 912px; display: none;"></div>
<div id="wrap">

	<!--// Contents Area -->
	<div id="container">

		<div id="content">
<!--skip은 안보임  -->	<h1 class="skip"><!-- 회원정보 수정 --></h1>
			<form id="frm" name="frm" method="post" action="main.do">
				<input type="hidden" name="M_Hand_Phone" id="M_Hand_Phone" value="">
				<input type="hidden" name="M_Home_Phone" id="M_Home_Phone" value="">
				<input type="hidden" name="R_No" id="R_No" value="">
				<input type="hidden" name="Alimy_Chk" id="Alimy_Chk" value="0">
				<input type="hidden" name="GoodJob_Mailing_Stat" id="GoodJob_Mailing_Stat" value="">
				<input type="hidden" name="OEM_No" id="OEM_No" value="">
				<input type="hidden" name="re_url" id="re_url" value="">
				<input type="hidden" name="checkDate" id="checkDate" value="201605">
				<fieldset>
				<legend><!-- 회원정보 수정 입력폼 --></legend>
				<div class="mbrSec mbrMngInfo">
					<h2 class="mbrHeading2">회원정보 수정</h2>
					<div class="mbrTplDesc">
						<p>회원님의 정보를 수정·확인하실 수 있습니다.</p>
					</div>

					<div class="mbrTplData2">
						<table summary="이 표는 회원정보 수정 입력폼으로 아이디, 비밀번호, 비밀번호확인, 이름, 생년월일/성별, 연락처, 이메일을 나타내고 있습니다.">
	<!--skip은 안보임  -->	<caption><span class="skip"><!-- 회원정보 수정 입력폼 --></span></caption>
							<colgroup>
								<col width="110px">
								<col width="87px">
								<col width="*">
							</colgroup>
							<tr>
								<th scope="row" colspan="2"><label for="lb_id"><span class="blank"></span> 아이디</label></th>
								<td>
								
									<div class="social_row"><input type="hidden" id="user_id" name="user_id" value="${selectInfo.user_id }" readonly="readonly"/><strong><span>${selectInfo.user_id }</span></strong>
							
									</div>
								</td>
							</tr>

						
							<tr>
								<th scope="row" colspan="2"><span class="blank"></span> 이름 </th>
								<td colspan="3"><input type="hidden" class="txtForm" id="name"  name="name" size="12" maxlength="15" value="${ selectInfo.name }"><strong><span>${selectInfo.name }</span></strong>
								</td>
							</tr>
							<tr>
								<!-- <th scope="row" colspan="2"><span class="blank"></span> <label for="postcheck">닉네임</label></th> -->
								<%-- <td colspan="3">
									<div class="mbrHelpWrap" style="z-index:1000;">
                                        <input type="text" id="" name="" style="width:150px;" class="ipText" maxlength="" value="${ zipcode }" readonly="readonly" >
										<span>

											<button id="" type="button" class="delBtn" >중복 확인</button>
										</span>
									</div>
								</td> --%>
							</tr>
							<tr>
								<th scope="row" colspan="2"><span class="blank"></span>생년월일</th>
								<td>
								<div class="input input-certificate-term is-label is-value">
							    <label>생년월일</label> <input type="text" name="birth_date" id="birth_date"
								maxlength="10" oninput="formatDate(this)" value="${ selectInfo.birth_date }" readonly="readonly">
						        </div>
							 	</td>
							</tr>
						
							<tr>
								<th class="contectInfo" rowspan="2" style="border-right:1px solid #e5e5e5;"><span class="blank"></span> 연락처 </th>
								<th scope="row">휴대폰</th>
								<td>
									<div class="mbrHelpWrap">
										<div class="mobile">
											<label for="M_Hand_Phone1" class="blind">휴대폰</label>
											<input type="text" name="tel" id="tel" maxlength="13" class="ipText ipTel ipNum devNoPh moveNext" oninput="telValidation(this)"value="${ selectInfo.tel }" style="ime-mode:disabled; float:left;">
											<div style="left:403px; top:0px;display:none;" class="mbrTplLayer mbrTplLayer_1 mbrLayerHelp" id="CautionResult1" name="CautionResult">
												<div class="desc">
													<p>휴대폰 번호를 입력해 주세요</p>
												</div>
												<span class="arrow"></span>
											</div>
										</div>
									</div>
								</td>
							</tr>
							
							<tr>
								<th scope="row"><label for="Email_ID">이메일</label></th>
								<td>
									<div class="mbrHelpWrap">
										<input type="text" name="email" id="email" maxlength="30" style="width:150px;" class="ipText" value="${ selectInfo.email }">
										<%-- <span class="delimiter">@</span>
										<input type="text" name="email" id="email2" title="이메일 서비스 입력" maxlength="25" class="ipText" style="width:150px" onkeyup="Email_Addr_Text_Move(); Gmail_Check();" value="${ email[1] }">
										<select title="이메일 사업자" name="Email_Addr" id="Email_Addr" onChange="mail_sum(); Gmail_Check();" class="ipSelect" onclick="selectEmail()">
											<option value="" selected>선택하세요</option>
											<option value="naver.com" >naver.com</option>
											<option value="hanmail.net" >hanmail.net</option>
											<option value="nate.com" >nate.com</option>
											<option value="daum.net" >daum.net</option>
											<option value="gmail.com" >gmail.com</option>
											<option value="dreamwiz.com" >dreamwiz.com</option>
											<option value="" >직접입력</option>
										</select> --%>
										<!-- <div style="left:455px; display:none;" class="mbrTplLayer mbrTplLayer_1 mbrLayerHelp" id="CautionResult2" name="CautionResult">
											<div class="desc">
												<p>이메일을 입력해 주세요</p>
											</div>
											<span class="arrow"></span>
										</div> -->
									</div>
								</td>
							</tr>
							
							<tr>
								<th scope="row" colspan="2"><span class="blank"></span> <label for="postcheck">우편번호</label></th>
								<td colspan="3">
									<div class="mbrHelpWrap" style="z-index:1000;">
                                        <input type="text" id="zipcode" name="zipcode" style="width:300px;" class="ipText" maxlength="8" value="${ selectInfo.zipcode }" readonly="readonly" >
										<span>

											<button id="kakao" type="button" class="delBtn" >주소 검색</button>
										</span>
										<div style="left:389px;display:none;" class="mbrTplLayer mbrTplLayer_1 mbrLayerHelp" id="CautionResult4" name="CautionResult">
											<div class="desc">
												<p>주소 검색을 위해 버튼을 클릭해 주세요.</p>
											</div>
											<span class="arrow"></span>
										</div>
										<div id="ZipSearch_Div" style="position:absolute; left:0; top:31px; z-index:99; display:none">
											<iframe id="ZipSearch_Ifrm" name="ZipSearch_Ifrm" width="440" height="182" marginwidth="0" marginheight="0" frameborder="no" scrolling="no" title="우편번호 검색" background="white"></iframe>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row" colspan="2"><span class="blank"></span> <label for="M_Addr_Text">주소</label></th>
								<td colspan="3">
									<div class="mbrHelpWrap">
										<input type="text" id="addr" name="addr" style="width:300px;" class="ipText" maxlength="100" readonly value="${ selectInfo.addr }" onfocus="$(this).unbind('focus');" onclick="$('#btnSearchAddr').click();"> 
										<input type="text" id="detail_addr" name="detail_addr" style="width:300px;" class="ipText" maxlength="35" onFocus="$(this).unbind('focus');if (this.value=='상세주소를 입력해 주세요.') this.value='';" value="${ selectInfo.detail_addr }">
										<!-- <div style="left:623px;display:none;" class="mbrTplLayer mbrTplLayer_1 mbrLayerHelp" id="CautionResult5" name="CautionResult">
											<div class="desc">
												<p>주소를 입력해 주세요.</p>
											</div>
											<span class="arrow"></span>
										</div> -->
									</div>
								</td>
							</tr>
							
						</table>
					</div>
					
				<hr>
				<p class="mbrBtnFunc">
					<span class="mbrBtn mbrBtnModify_1"><a id="modifyBtn" name="modifyBtn" style="cursor:pointer;"><span>수정하기</span></a></span>
					<a href="mypage.do"><span class="mbrBtn mbrBtnCancel_1"><button type="button" id="cancel"><span>취소</span></button></span></a><!-- 취소버튼 누르면 마이페이지로 -->
					<button type="button" id="quitMember" style="float:right; vertical-align: middle;">
						<span style="width: 120px; height: 50px;">탈퇴하기</span>
					</button>
				</p>
				</div>
			</fieldset>
		</form>
		</div>
	</div>
</div>

<hr>
<!--// Footer Area ///////////////////////////////////////////////////////////////////////////////////////////////////////////////-->
<!--// Footer Area -->
<!-- footer 시작 -->
<div id="footer" class="footer footer--main">
    <div class="footer__wrap">
        <h2 class="skip">잡코리아 기타 정보</h2>

         <div class="footer__notice">
                <p class="copyright">
            © <strong><a href="http://prj3_mvc.co.kr/" target="_blank">DEVPLANET</a></strong> LLC. All rights reserved.
        </p>
            
        </div> 

         <div class="footer__service">
            <h3 class="blind">잡코리아 서비스 링크</h3>
            <ul>
                <li><a href="http://211.63.89.139/prj3/project_user/1.main/main_page.jsp" target="_blank">회사소개</a></li>
                <li><a href="https://www.jobkorea.co.kr/service_jk/provision/provision_gg.asp" target="_blank">이용약관</a></li>
                <li><a href="https://www.jobkorea.co.kr/service/PolicyPrivacy" target="_blank"><strong>개인정보처리방침</strong></a></li>
            </ul>
        </div>  
        
    </div>
</div>
<!-- footer 끝 -->

</body>
</html>