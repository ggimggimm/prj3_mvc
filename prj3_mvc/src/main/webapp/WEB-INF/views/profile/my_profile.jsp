<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



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
    <meta id="ctl00_ctl00_og_title" property="og:title" content="프로필관리 &lt; My CGV | 영화 그 이상의 감동. CGV"></meta>
    
    
    <meta id="ctl00_ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png"></meta>
    <link rel="alternate" href="http://m.cgv.co.kr" />
    <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
    <title id="ctl00_ctl00_headerTitle">프로필관리 &lt;</title>
    <link rel="shortcut icon" type="image/x-icon" href="https://img.cgv.co.kr/R2014/images/favicon.ico" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css" />
	<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css?20211209" />
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

    <!-- 홈페이지 CSS 일원화로 인한 반영 20220721 -->
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css" />
    <script type="text/javascript" src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>

    <!-- 각페이지 Header Start--> 
    
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css" />
    <!--통합결제-->
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/css/mypagenew.css" />

    <!--/각페이지 Header End--> 
   


<script>

$(function(){

	//중복확인했니?
	var isDupChecked = false;
	var checkedNick = "";
	
	//닉네임 중복버튼
	$("#dupBtn").click(function(){
		
		var nickname = ($("#nick_name").val()).trim();
		
		
		if(nickname!=""){ //닉네임이 입력된 상태라면
		
			//기존의 닉네임과 일치할 때
			if(($("#old_nick_name").val()).trim()==nickname){
				checkedNick=nickname;
					return;
			}//end if	
			
			
			
		$.ajax({
			
			url:"nick_dup.do",
			data:{nick_name : nickname},
			method:"post",
			dataType:"json",
			success : function(response) {
				
			 	if(response.available){
					alert("사용 가능합니다.");
					//$("#nick_name").val(nickname);
					checkedNick = $("#nick_name").val();
					
				}else{
					alert("이미 사용중 다시 입력해주세요.");
					$("#nick_name").val("");
					$("#nick_name").focus();
					return;
				}//end else
				 
				
			},
			error : function(xhr){
					alert("서버 오류가 발생했습니다.");
			}//end error
			
		});//ajax
		
		
		}else{
			alert("닉네임을 입력해주세요.");
			return;
		}//end else
		
	});//click
	
	
	
	$("#setProfileBtn").click(function() {

			var nickname = ($("#nick_name").val()).trim();
			var oldnick = ($("#old_nick_name").val()).trim();

			//alert("입력한 값:"+nickname + "/ 기존 닉넴:" + oldnick);
			
			if(nickname==""){
				alert("닉네임은 필수 입력입니다.");
				return;
			}//end if
			
		/* 	
			//기존 닉네임(db값)과 같으면
			if(oldnick==nickname){
				return;
			}//end if
			
			 */
			if (oldnick !== nickname) { //입력값과 기존값이 일치하지 않은채로 등록버튼 누름
			
				//alert("중복확인한값:"+checkedNick+" / 최종 제출값:"+nickname);
			
				if (checkedNick!=nickname) { //중복확인
					alert("닉네임 중복 확인을 먼저 수행해주세요");
					return;
				}//end if */

			}//end if
			//alert("일치한 상태로 냅다 등록버튼 혹은 중복확인까지 완료");
			
			$("#frm").submit();

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
        <h1 onclick=""><a href="/"><img src="http://localhost/prj3_mvc/images/movie.png" alt="CGV" /></a><span>MOVIEPLANET</span></h1>
        <ul class="memberInfo_wrap">
            
            
            <li><a href="/user/mycgv/"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png" alt="MY CGV" /><span>마이페이지</span></a></li>
            <!-- <li><a href="/support/default.aspx"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginCustomer.png" alt="고객센터" /><span>고객센터</span></a></li> -->
        </ul>
    </div>
</div>


<div class="nav">
    <div class="contents">
        <h1><a href="/" tabindex="-1"><img src="https://img.cgv.co.kr/R2014/images/common/logo/logoWhite.png" alt="CGV" /></a></h1>
        <ul class="nav_menu">
            <li>
                <h2><a href="/movies/?lt=1&ft=0">영화</a></h2>
            </li>
            <li>
                <h2><a href="/ticket/">예매</a></h2>
            </li>
            <li>
                <h2><a href="/culture-event/popcorn-store/"></a></h2>
                
            </li>
            <li>
                <h2 onclick="gaEventLog('PC_GNB','주메뉴_이벤트','')"><a href="/culture-event/event/defaultNew.aspx"></a></h2>
            </li>
            <li>
                <h2 onclick="gaEventLog('PC_GNB','주메뉴_해택','')"><a href="/discount/discountlist.aspx"></a></h2>
            </li>
        </ul>
        <div class="totalSearch_wrap">
            <label for="totalSearch">
                <input type="text" id="header_keyword" placeholder="영화명 검색" />
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
			
   

<div class="cols-content" id="menu">
    <div class="col-aside">
		<div class="skipnaiv">
			<a href="#mycgv_contents" id="skipMycgvMenu">MYCGV 서브메뉴 건너띄기</a>
		</div>
	    <h2>MY CGV 서브메뉴</h2>
	    <div class="snb">
	        <ul>
	            <li >
                    <a href="/user/mycgv/?g=1" >MY CGV HOME <i></i></a>
                </li>
	           
                        
	        </ul>
	        <ul>
                 <li>
                    <a href="" title="현재 선택">프로필 관리<i></i></a>
                </li>
	            
                        
	        </ul>
	       
	    </div>
    </div>
	<div class="col-detail" id="mycgv_contents">
	    
    <input type="hidden" id="isIPIN" name="isIPIN" value="jFZKM5GCrrspxSCDBJ/aZPJzBHY84L6fg3gkITx1hLIKdGBTiHNfbVLgRDBBtHzxd4gu39B69dAGYP5rjFUhWQ==" />
<div class="tit-mycgv">
    <h3>나의 정보</h3>
</div>
<div class="tit-mycgv">
    <h4>나의 프로필</h4>
</div>


<form name="frm" method="post" action="modify_profile.do" id="frm" enctype="multipart/form-data" novalidate="novalidate">
<div>
</div>

<div>

    <input type="hidden" id="user_id" name="user_id" value="${profile.user_id}" /> 
</div>
<div class="tbl-form">
    <table summary="나의프로필정보 이름,아이디, 닉네임,프로필이미지 표기">
        <caption>나의 프로필 정보</caption>
        <colgroup>
        <col width="19%" />
        <col width="*" />
        </colgroup>
        <tbody>
            <tr>
                <th scope="row">이름</th>
                <td><strong><c:out value="${profile.name}"/></strong></td>
            </tr>
            <tr>
                <th scope="row">아이디</th>
                <td><span><c:out value="${profile.user_id}"/></span></td>
            </tr>
            <tr>
                <th scope="row"><label for="nick_namee">닉네임</label></th>
                <td>
                    <p>한글, 영문, 숫자 혼용 가능 (한글 기준 10자 이내)</p>
                    <input type="hidden" id="old_nick_name" name="old_nick_name" value="${profile.nick_name}" /> 
                    <input type="text" id="nick_name" name="nick_name" 
                    value="<c:out value="${profile.nick_name}"/>" maxlength="10" class="s-medium" /> 
                    <button id="dupBtn" type="button" class="round gray"><span>중복확인</span></button>
                </td>
            </tr>
            
            <tr>
                <th scope="row">프로필이미지</th>
                <td>
                    <p class="profile-info">각 서비스(이벤트, 매거진, 영화리뷰 등)의 리뷰 및 덧글작성시 등록하신 대표이미지가 노출됩니다.<br />프로필 이미지 종류를 선택해 주세요.</p>
                    <%-- <input type="hidden" id="profile" name="profile" value="<c:out value="${profile}"/>" />
                    <input type="hidden" id="user_small_image" name="user_small_image" value="" /> --%>
                    <div class="sect-profile-img">
                        <div class="box-image">
                            <span class="thumb-image" >
                                <img id="profile_set" name="profile_set" src="<c:out value="http://localhost/prj3_mvc/upload/${profile.profile}"/>" alt="${profile.name }님 프로필 사진" onerror="this.src='http://localhost/prj3_mvc/images/no.png'" />
                               	<input type="hidden" name="profile" id="profile" value="${profile.profile}"/>
                                <span class="profile-mask"></span>
                            </span>
                        </div>
                        <div class="box-contents">
                            <p>jpg, gif, BMP 파일만 등록 가능합니다. (최대 3M)</p>
                            <input type="file" id="profile_upload_file" name="profile_upload_file" title="내용"  />
                        </div>
                    </div>

					

                </td>
            </tr>
            
             <tr>
                <th scope="row"><label>자기소개</label></th>
                <td>
                    <p>자기소개를 입력해주세요 (한글 기준 100자 이내)</p>
                    <textarea id="profile_msg" name="profile_msg" maxlength="100" class=""><c:out value="${profile.profile_msg }"/></textarea>
                </td>
            </tr>
            
            
            
        </tbody>
    </table>
</div>
<div class="set-btn aright"><button type="button" id="setProfileBtn" class="round inred on" ><span>등록하기</span></button></div>
</form>







<script type="text/javascript" src="https://img.cgv.co.kr/R2014//js/system/crypto.js"></script>

<script type="text/javascript">
    //<![CDATA[
    (function ($) {
        $(function () {

            $('#go_edit_page').on('click', function () {
                var win = window.open("/user/popup/edit-profile.aspx", "profile", "left=0,top=o,width=445,height=440,toolbar=no,scrollbars=no");
                win.focus();
            });

            $('#btn_set_my_favorite').on('click', function () {
                var win = window.open("/user/popup/favoriteTheaters.aspx?ismycgv=true", "url", "left=0,top=o,width=645,height=370,toolbar=no,scrollbars=no");
                win.focus();
            });

            $('#view_usergrade').on('click', function () {
                GetUserGradeList(this);
                return false;
            });

            function GetUserGradeList(_this) {

                var url = '/common/ajax/user.aspx/GetUserGradeList_2017';
                var data = null;
                var callback = function (result) {
                    app.log(result);

                    var $std = $(_this),
                    options = {
                        '$target': $std,
                        'html': $('#temp_view_usergrade').html(),
                        'position': 'absolute',
                        'mask': 'none'
                    };
                    app.instWin.add(options);

                    var $tbody = $('#mytable > tbody:last'),
                        $tr1 = $('#tempUserGradeTbodyTr1')
                    //  $tr2 = $('#tempUserGradeTbodyTr2');
                    $.each(result, function (i, v) {

                        $tbody.append("<tr><th scope='row'>" + v.YearMonthSub + "년" + v.MonthSub + "월" + "</th><td>" + v.GradeCode + "</td></tr>");

                    });
                }
                app.ajax().get({ dataType: 'json', url: url, data: data, contentType: "application/json; charset=utf-8", successHandler: callback });
            }
           

        });
    })(jQuery);
    //]]>
</script>
</div>

            
            <!--/ Contents End -->
		 </div>
		<!-- /Contents Area -->
	</div>
	
	

</body>
</html>