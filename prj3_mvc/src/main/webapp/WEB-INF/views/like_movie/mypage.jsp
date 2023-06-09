<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../checkLogin.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
    <link rel="alternate" href="http://m.cgv.co.kr" />
    <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
    <title id="ctl00_ctl00_headerTitle">MY PAGE &lt; My MOVIEPLANET | 영화 그 이상의 감동. </title>
    <link rel="shortcut icon" type="image/x-icon" href="https://img.cgv.co.kr/R2014/images/favicon.ico" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css" />
	<link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css" />
    <link rel="stylesheet" media="all" type="text/css" href="http://localhost/prj3_mvc/css/layout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css?20211209" />
    <link rel="stylesheet" media="all" type="text/css" href="http://localhost/prj3_mvc/css/content.css" />
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

    <!-- 홈페이지 CSS 일원화로 인한 반영 20220721 -->
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css" />
    <script type="text/javascript" src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>

    <!-- 각페이지 Header Start--> 
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css" />
    <!--/각페이지 Header End--> 

<style type="">
#reBtn {
	background-color: #fb4357;
	color: white; 
	border: none;
	border-radius: 5px;
	width: 60px;
	height: 30px;
	cursor: pointer;
}
</style>
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
            <li><a href="/user/login/logout.aspx" class="logout" title="로그아웃" ><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png" alt="로그아웃" /><span>로그아웃</span></a></li>
            
            
            <li><a href="mypage.do"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png" alt="MY PAGE" /><span>MY PAGE</span></a></li>
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
					<img src="http://localhost/prj3_mvc/images/default_profile.gif" alt="모민경님 프로필 사진" onerror="errorImage(this, {'type':'profile'})" />
					<span class="profile-mask"></span>
				</span>
        	</div>
        	<div class="box-contents newtype">
        		<div class="person-info">
        			<strong>홍길동님</strong>
        			<em>nisis0322</em>
        			<span>닉네임 : <i>닉네임을 설정해주세요.</i> </span>
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
                    <a href="/user/mycgv/?g=1" title="현재 선택">MY CGV HOME <i></i></a>
                </li>
	            <li >
                    <a href="/user/mycgv/reserve/?g=1" >나의 예매내역 <i></i></a>
                </li>
	            <li >
                    <a href="/user/mycgv/myinfo/?g=1" >회원정보<i></i></a>
	                <ul>
                        <li>
                            <a href="/user/mycgv/myinfo/edit-myinfo-cjone.aspx?g=1" >개인정보 변경</a>
                        </li>
                        <li>
                            <a href="/user/mycgv/myinfo/edit-myinfo-cjone.aspx?g=1" >비밀번호 변경</a>
                        </li>

	                    <li>
                            <a href="/user/mycgv/myinfo/leave-cjone.aspx?g=1" >회원탈퇴</a>
                        </li>
	                </ul>
	            </li>
                 <li >
                    <a href="/user/mycgv/myinfo/edit-myinfo-myprofile.aspx?g=1" >프로필 관리<i></i></a>
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
	    

<div class="sect-mycgv-reserve movielog col3">
    <div class="box-polaroid">
        <div class="box-inner preegg">
            <a href="like_movie.do" title="기대되는 영화">
                <h3>기대되는 영화</h3>
                <span>보고 싶은 영화들을 미리 <br>담아두고 싶다면?</span>
            </a>
        </div>
        <div class="box-inner watched">
            <a href="mygrade.do" title="내가 쓴 평점">
                <h3>내가 쓴 평점</h3>
                <span>관람한 영화들을 한번에 <br />모아 보고 싶다면?</span>
            </a>
        </div>
        <div class="box-inner mvdiary">
            <a href="" title="내가 쓴 리뷰">
                <h3>내가 쓴 리뷰</h3>
                <span>관람 후 내 감상평을 적어 <br />추억하고 싶다면?</span>
            </a>
        </div>
    </div>
</div>

<div class="sect-mycgv-cancle">
	<div class="tit-mycgv">
		<h3>MY 예매내역</h3>
	</div>
	<div class="tbl-data">
		<table summary="상영일 기준 지난 7일 동안의 취소내역">
			<caption>MY 취소내역</caption>
			<thead>
				<tr>
					<th scope="col">관람영화</th>
					<th scope="col">관람일시</th>
					<th scope="col">결제금액</th>
					<th scope="col">예매상태</th>
					<th scope="col">예매취소</th>
				</tr>
			</thead>
			<tbody>
                <tr>
                	<td colspan="4" class="nodata">고객님의 최근 예매내역이 존재하지 않습니다.</td>
                	<td>
                		<input type="button" id="reBtn" value="예매취소"/>
                	</td>
                </tr>
                <tr>
                	<td>가오갤</td>
                	<td>2022.05.01</td>
                	<td>20000</td>
                	<td>예상</td>
                	<td>
                		<input type="button" id="reBtn" value="예매취소"/>
                	</td>
                </tr>
			</tbody>
		</table>
	</div>
</div>

	<div class="sect-mycgv-cancle">
	<div class="tit-mycgv">
		<h3>MY 취소내역</h3>
	</div>
	<div class="tbl-data">
		<table summary="상영일 기준 지난 7일 동안의 취소내역">
			<caption>MY 취소내역</caption>
			<thead>
				<tr>
					<th scope="col">관람 영화</th>
					<th scope="col">관람 일시</th>
					<th scope="col">취소일</th>
					<th scope="col">결제취소 금액</th>
				</tr>
			</thead>
			<tbody>
            
            
                <tr><td colspan="5" class="nodata">고객님의 최근 취소내역이 존재하지 않습니다.</td></tr>
            
			</tbody>
		</table>
	</div>
</div>
	</div>
</div>
</div>
		 </div>
	</div>
	
</div>

</body>
</html>