<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../checkLogin.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="alternate" href="http://m.cgv.co.kr" />
    <link rel="shortcut icon" href="https://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon" />
    <title id="ctl00_headerTitle">기대되는 영화 &lt; 무비로그 | 영화 그 이상의 감동. CGV</title>
    <link rel="shortcut icon" type="image/x-icon" href="https://img.cgv.co.kr/R2014/images/favicon.ico" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css" />
	<link rel="stylesheet" media="all" type="text/css" href="http://localhost/prj3_mvc/css/reset.css" />
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
<style>
.box-image {
  position: relative;
}

form {
  position: absolute;
  top: 0;
  right: 0;
}

</style>
<!-- jQuery CDN 시작 -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->

<script type="text/javascript">

$(function(){

	$("#selectBtn").click(function(){
		$("#frm").submit();
	});//click	
	

	$("#searchBtn").click(function() {
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
						<a href="main_loged_frm.do"> <img
							src="http://localhost/prj3_mvc/images/movie.png"
							alt="movieplanet" />
						</a> <span>MOVIEPLANET</span>
					</h1>
					<ul class="memberInfo_wrap">
						<li><a href="mainPage.do"" class="logout"
							title="로그아웃"><img
								src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png"
								alt="로그아웃" /><span>로그아웃</span></a></li>


						<li><a href="mypage.do"><img
								src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png"
								alt="MY PAGE" /><span>MY PAGE</span></a></li>
					</ul>
				</div>
			</div>
			<!-- 서브 메뉴 -->
			<div class="nav">
				<div class="contents">
					<h1>
						<a href="/" tabindex="-1"><img
							src="https://img.cgv.co.kr/R2014/images/common/logo/logoWhite.png"
							alt="CGV" /></a>
					</h1>
					<ul class="nav_menu">
						<li>
							<h2>
								<a href="main_loged_frm.do">영화</a>
							</h2>
						</li>
						<li>
							<h2>
								<a href="/ticket/"><strong>예매</strong></a>
							</h2>
						</li>
						<li></li>
					</ul>
					<div class="totalSearch_wrap">
            				<form id="movieSearchFrm" name="movieSearch" action="search_movie.do">
            					<label for="totalSearch">
                					<input type="text" id="title" name="title" placeholder="영화 검색" value=""/>
           					 	</label>
            					<button type="button" class="btn_totalSearch" id="searchBtn">검색</button>
            				</form>
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
<div class="cols-content">
<div class="col-aside">
	<h2>프로필 및 서브메뉴</h2>
	<div class="box-round-dgray">
        <div class="box-round-inner">
            <div class="inner-contents-profile">
                <div class="box-image">
                	<div class="thumb-image">
                        <img src="http://localhost/prj3_mvc/images/default_profile.gif" alt="모민경님 프로필 사진" onerror="errorImage(this, {type:'profile'})" />
                        <span class="profile-mask"></span>
                        
                    </div>
                     <!-- 등급종류 클래스 : vip, rvip, vvip -->
                </div>
                <div class="box-contents">
	        		<strong>${ lrDomain.nick_name }님</strong>
		        </div>
            </div>
        </div>
    </div>
    <div class="box-round-on">
        <div class="box-round-inner">
            <div class="inner-contents-log">
                <a href="like_movie.do">
                    <strong>기대되는 영화</strong>
                </a>
            </div>
        </div>
    </div>
    <div class="box-round-wgray">
        <div class="box-round-inner">
            <div class="inner-contents-log">
                <a href="mygrade.do">
                    <strong>내가 쓴 평점</strong>
                </a>
            </div>
        </div>
    </div>
    <div class="box-round-wgray">
        <div class="box-round-inner">
            <div class="inner-contents-log">
                <a href="/movies/point/my-list.aspx">
                    <strong>내가 쓴 리뷰</strong>
                </a>
            </div>
        </div>
    </div>
    <!-- 화면깨짐 현상으로 div 안에 넣음//-->
</div>
	<div class="col-detail">
	    <div class="movielog-detail-wrap">
	        <!-- Title & Button Combo -->
	        <%-- <div class="tit-mycgv">
		        <h3>기대되는 영화</h3>
		        <p><em> ${ cntMovie }건</em></p>
		        <div class="sect-sorting">
		            <label for="order_type" class="hidden" for="sort_field">정렬</label>
		            <select id="select_type" name="select_type">
		                <option value="1" title="현재 선택됨" selected>등록일 순</option>
		                <option value="2">개봉일 순</option>
		            </select>
		            <button class="round gray" type="button" id="selectBtn"><span>GO</span></button>
		        </div>
		    </div> --%>
		    <!-- //Title & Button Combo -->

							<div class="sect-wishlist-lst">
								<ul id="wishlist_container">
								
								<c:forEach var="movieLike" items="${ like }">
									<li>
										<div class="box-image">
											<a href="/movies/detail-view/?midx=86883"> <span
												class="thumb-image"> <img
													alt="가디언즈 오브 갤럭시-Volume 3 포스터"
													src="images/${ movieLike.poster }" onerror="errorImage(this)" />

											</span>
											</a> <span class="screentype"> <a class="imax" href="#"
												title="IMAX 상세정보 바로가기" data-regioncode="07">IMAX</a> <a
												class="forDX" href="#" title="4DX 상세정보 바로가기"
												data-regioncode="4D14">4DX</a>

											</span>
										</div>
										<div class="box-contents">
												<form action="like_movie2.do" method="get"
													style="display: inline-block;">
													<input type="hidden" name="m_num"
														value="${ movieLike.m_num }" />
													<button type="submit" class="btn-del" value="86883">
														<img
															src="https://img.cgv.co.kr/R2014/images/common/btn/btn_del02.png"
															alt="${ movieLike.m_title } 삭제" />
													</button>
												</form>
												<a href="/movies/detail-view/?midx=86883"> 
												<strong class="title">${ movieLike.m_title }</strong>
											</a> <span class="txt-info"> <i>${ movieLike.release_date }</i>
												<strong>개봉</strong>

											</span> <span class="like"> <a class="link-reservation"
												href="movie_reserve.do">예매</a>
											</span>
										</div>
										<%-- <form action="like_movie2.do" method="get" style="display: inline-block;">
										<input type="hidden" name="m_num" value="${ movieLike.m_num }"/>
										<button type="submit" class="btn-del" value="86883">
											<img
												src="https://img.cgv.co.kr/R2014/images/common/btn/btn_del02.png"
												alt="${ movieLike.m_title } 삭제" />
										</button>
										</form> --%>
									</li>
								</c:forEach>
								</ul>
							</div>

						</div>
	</div>
</div>
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

    <!-- E Popup -->
    
    <!-- S 예매하기 및 TOP Fixed 버튼 -->
    <div class="fixedBtn_wrap">
     
        <a href="movie_reserve.do" class="btn_fixedTicketing">예매하기</a>
        
        <a href="#none" class="btn_gotoTop"><img src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png" alt="최상단으로 이동" /></a>
    </div>
    
    <!-- E 예매하기 및 TOP Fixed 버튼 -->
	
    <!-- S Footer -->
</div>
</body>
</html>