<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../checkLogin.jsp" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<link rel="alternate" href="http://m.cgv.co.kr" />
<link rel="shortcut icon"
	href="https://img.cgv.co.kr/theater_img/favicon.ico"
	type="image/x-icon" />
<title id="ctl00_headerTitle">내가 쓴 리뷰 &lt; 영화 | 영화 그 이상의 감동.</title>
<link rel="shortcut icon" type="image/x-icon"
	href="https://img.cgv.co.kr/R2014/images/favicon.ico" />
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/webfont.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="http://localhost/prj3_mvc/css/reset.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="http://localhost/prj3_mvc/css/layout.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/module.css?20211209" />
<link rel="stylesheet" media="all" type="text/css"
	href="http://localhost/prj3_mvc/css/content.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/common.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/eggupdate.css" />
<link rel="stylesheet" media="print" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/print.css" />
<link rel="stylesheet" type="text/css"
	href="https://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css" />

<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/slick.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/slick-theme-custom.css" />

<link rel="stylesheet" type="text/css"
	href="https://img.cgv.co.kr/R2014/js/icheck/iCheck.css" />

<!-- 2020.05.07 감정지수/프리에그 프로젝트 추가 -->
<link rel="stylesheet" media="all" type="text/css"
	href="https://img.cgv.co.kr/R2014/css/preegg.css" />

<!-- 홈페이지 CSS 일원화로 인한 반영 20220721 -->
<link rel="stylesheet" type="text/css"
	href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css" />
<script type="text/javascript"
	src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>

<style>
.movielog-detail-wrap .article-movie-info>.box-contents>.title {
	width: 550px;
	height: 45px;
	margin: 5px 0;
}
</style>


<!-- jQuery CDN 시작 -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->

<script type="text/javascript">

$(function(){
	
	//검색
	$("#searchBtn").click(function(){
		
		var search_type = $("#search_type").val();
		var search = $("#search").val();
		
		if(search_type=="0" && !search==""){
			//전체 상태에서 검색어가 있을때
			alert("검색 옵션 선택은 필수입니다.");
			return;
		}//end if
		
		//옵션은 선택했는데 값이 없을 때
		if(search_type!="0" && search==""){
			alert("검색어 입력은 필수입니다.");
			return;
		}//end if
				
		
		$("#frm").submit();
		
	});//click	
	
	
	
	
	//영화 검색	
	$("#searchBtn2").click(function(){
		$("#movieSearchFrm").submit();		
		
	});//click	
	
	
});//ready


</script>



</head>
<body class="">

	<div id="cgvwrap">


		<div class="cgv-ad-wrap" id="cgv_main_ad">
			<div id="TopBarWrapper" class="sect-head-ad">
				<div class="top_extend_ad_wrap">
					<div class="adreduce" id="adReduce">
						<iframe
							src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@TopBar_EX"
							width="100%" height="80" title="" frameborder="0" scrolling="no"
							topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"
							name="TopBanner" id="TopBanner"></iframe>
					</div>
					<div class="adextend" id="adExtend"></div>
				</div>
				<!-- //.top_extend_ad_wrap -->
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
						<li><a href="logout.do" class="logout"
							title="로그아웃"><img
								src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png"
								alt="로그아웃" /><span>로그아웃</span></a></li>


						<li><a href="mypage.do"><img
								src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png"
								alt="MY PAGE" /><span>MY PAGE</span></a></li>
					</ul>
				</div>
			</div>

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
								<a href="search_movie.do">영화</a>
							</h2>
						</li>
						<li>
							<h2>
								<a href="movie_reserve.do"><strong>예매</strong></a>
							</h2>
						</li>
						<li></li>
						<li></li>
					</ul>
					<div class="totalSearch_wrap">
						<form id="movieSearchFrm" name="movieSearch"
							action="search_movie.do">
							<label for="totalSearch"> <input type="text" id="title"
								name="title" placeholder="영화 검색" value="" />
							</label>
							<button type="button" class="btn_totalSearch" id="searchBtn2">검색</button>
						</form>
						<iframe
							src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Search_txt"
							width="0" height="0" title="" frameborder="0" scrolling="no"
							marginwidth="0" marginheight="0"
							allowfullscreen="allowfullscreen"
							mozallowfullscreen="mozallowfullscreen"
							msallowfullscreen="msallowfullscreen"
							oallowfullscreen="oallowfullscreen"
							webkitallowfullscreen="webkitallowfullscreen"></iframe>
					</div>
				</div>
			</div>
			<!-- 서브 메뉴 -->
		</div>
		<!-- E Header -->


		<!-- Contaniner -->
		<div id="contaniner" class="">
			<!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->


			<!-- Contents Area -->
			<div id="contents" class="">


				<!-- Contents Start -->

				<div class="wrap-point-mylist">

					<div class="cols-content">

						<div class="col-aside">
							<h2>프로필 및 서브메뉴</h2>
							<div class="box-round-dgray">
								<div class="box-round-inner">
									<div class="inner-contents-profile">
										<div class="box-image">
											<div class="thumb-image">
												<img src="http://localhost/prj3_mvc/upload/${lrDomain.profile }" 
													onerror="this.src='http://localhost/prj3_mvc/images/no.png'" /> <span
													class="profile-mask"></span>
											</div>
											<!-- 등급종류 클래스 : vip, rvip, vvip -->
										</div>
										<div class="box-contents">
											<strong>${lrDomain.nick_name}님</strong> 
											<!-- <a id="go_edit_page" href=""
												class="edit" target="_blank" title="프로필 수정">나의 정보 변경</a><em></em> -->

										</div>
									</div>
								</div>
							</div>
							<div class="box-round-wgray">
								<div class="box-round-inner">
									<div class="inner-contents-log">
										<a href="like_movie.do"><strong>기대되는
												영화</strong> </a>
									</div>
								</div>
							</div>
							<div class="box-round-wgray">
								<div class="box-round-inner">
									<div class="inner-contents-log">
										<a href="mygrade.do"><strong>내가
												쓴 평점</strong> </a>
									</div>
								</div>
							</div>
							<div class="box-round-on">
								<div class="box-round-inner">
									<div class="inner-contents-log">
										<a href="my_review.do"><strong>내가 쓴
												리뷰</strong> </a>
									</div>
								</div>
							</div>
						</div>


						<div class="col-detail">
							<div class="movielog-detail-wrap">
								<!-- Title & Button Combo -->
								<form id="frm" method="post" action="my_review.do">
									<div class="tit-mycgv">
										<h3>내가 쓴 리뷰</h3>
										<input type="hidden" id="user_id" name="user_id" value="${lrDomain.user_id}"/>
										<p>
											<em><c:out value="${myReviewCnt }"/></em>
										</p>
										<div class="set-combo">
											<label for="year">검색 옵션</label> 
											<select id="search_type" name="search_type" style="width: 88px;">
												<option value="0" selected="selected" style="padding: 0px">전체</option>
												<option value="1" style="padding: 0px">제목</option>
												<option value="2" style="padding: 0px">내용</option>
												<option value="3" style="padding: 0px">제목+내용</option>
											</select> <input type="text" style="width: 100px; margin-right: 4px"
												id="search" name="search" value="" placeholder="제목,내용 검색" />
											<button type="button" class="round gray" id="searchBtn">
												<span>검색</span>
											</button>
										</div>
									</div>
								</form>
								<!-- //Title & Button Combo -->
								<!-- 내가 본 영화 리스트 -->

								<div class="sect-movielog-lst">
									<ul id="watched_list_container">
								
								
								<c:if test="${empty myReviews}">
									<li>
								<div class="article-movie-info">작성한 리뷰가 없습니다.</div>
									</li>
								</c:if>
								<c:forEach items="${myReviews}" var="myReview" >
										<li class="movie_info_84643">
											<div class="article-movie-info">
												<div class="box-image">
													<a id="phototicket_popup_84643" title="포스터 크게 보기"
														href=""> <span
														class="thumb-image"> <img alt="${myReview.m_title } 포스터"
															src="http://localhost/prj3_mvc/images/${myReview.poster }" 
															onerror="" /> <!-- 영상물 등급 노출 변경 2022.08.24 -->
															<!-- <i class="cgvIcon etc age12">12</i> <span class="ico-grade 12">12</span>
															<i></i> -->
													</span>
													</a>
												</div>
												<div class="box-contents">
													<div class="title">
														<a href="review_post.do?rv_num=${myReview.rv_num}&m_num=${myReview.m_num}&m_title=${myReview.m_title}"> <strong id="strong_84643">
														<c:out value="${myReview.title }"/></strong>
														</a>
													</div>

													<p class="date"><c:out value="${myReview.m_title }"/> | <c:out value="${myReview.eng_title }"/></p>
													<p class="date">감독 <c:out value="${myReview.d_name }"/></p>
													<p class="theater">각본 <c:out value="${myReview.script }"/></p>
													<!-- add_css82 평점 개편 -->
													<span style="float: right">조회수 <c:out value="${myReview.hits }"/> | <c:out value="${myReview.input_date }"/></span>

												</div>

											</div>
										</li>
										</c:forEach>

									</ul>
								</div>
							</div>


							<?xml version="1.0" encoding="utf-8"?>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>