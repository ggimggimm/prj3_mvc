<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="user - 해당영화 리뷰리스트 view"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
<title>토끼와 거북이 - 1조 </title>

<link href="//m2.daumcdn.net/img-media/2010ci/Daum_favicon.ico" rel="shortcut icon">
<link rel="stylesheet" type="text/css" href="//t1.daumcdn.net/media/kraken/movie/386a1cd/PcCommonCssBundle.merged.css"/>

<script src="//t1.daumcdn.net/media/kraken/movie/386a1cd/common.merged.js"></script>
<script src="//t1.daumcdn.net/media/kraken/movie/386a1cd/PcCommonScriptBundle.merged.js"></script>
<script src="//t1.daumcdn.net/cssjs/movie/v2/amchart/amcharts.js"></script>
<script src="//t1.daumcdn.net/cssjs/movie/v2/amchart/serial.js"></script>

<meta property="og:author" content="다음영화" />
<meta property="og:site_name" content="다음영화" />
    <meta property="og:title" content="슈퍼 마리오 브라더스">
    <meta property="og:image" content="https://t1.daumcdn.net/movie/8876ecefc861afc397a9943ab781bdf0316c4983">
    <meta property="og:description" content="Daum영화에서 자세한 내용을 확인하세요!">
    	<!-- bootstrap 시작-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <!-- bootstrap 끝-->
        <!-- jQuery CDN 시작 -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <!-- jQuery CDN 끝 -->
        <Style>
			 .header { width: 100%; height: 100px; background-color: #e74c3c; margin-bottom: 25px;}
			.results tr[visible='false'],
			.no-result{
			  display:none;
			}
			
			.results tr[visible='true']{
			  display:table-row;
			}
			
			h2 { color: white; text-align: left; padding-top: 30px; padding-left: 50px; font-weight: bold; }
			.counter{
			  padding:8px; 
			  color:#ccc;
			}
			tbody a:link {
			  color : #E74C3C;
			  text-decoration: none;
			}
			tbody a:visited {
			  color : #E74C3C;
			  text-decoration: none;
			}
			tbody a:hover {
			  color : red;
			  text-decoration: underline;
			}
			tbody a:active {
			  color : green;
			  text-decoration: none;
			}
        </Style>
        <script type="text/javascript">
        /* submit 하기 */	
        $(document).ready(function() {
        	  $("#subBtn").click(function() {
       			if($("#search").val().trim().length === 0){ //검색어 공백
	        		if($("#search_type").val()==0){ //검색 조건 전체일 경우 전체 select
		        	    $("#searchFrm").submit();
	        			return;
        			}//end if
        		} else if($("#search_type").val()!=0) { //
        			 $("#searchFrm").submit();
        			 return;
        		}
        		alert("검색 조건을 선택해주세요");
        		
        	  });//click
        	});//ready
        /* 삭제버튼 눌렀을 때 alert */
		$(function(){
			$("#reviewDel").click(function(){
				
			});//click
		});//ready
        </script>
</head>

<body class=""> 
    <div class="kakao_wrap detail_type"> 
		<header class="kakao_head" data-tiara-layer="gnb"> 
    <div class="kakaohead_top">
        <div class="inner_head" data-tiara-layer="service">
                <a class="link_daum" data-tiara-layer="logo"><img src="http://localhost/prj3_mvc/images/movie_small.png" width="70" height="35" class="logo_daum" alt="Daum"></a>
                <a style="margin-left: 970px;" href="#void"><span style="font-weight: bold;">HOME</span></a>
        </div>
    </div>
    <div id="wrapMinidaum"></div>
        <script src="https://go.daum.net/minidaum_pc.daum" charset="utf-8" type="text/javascript"></script>


</header>
        <hr class="hide">

        <main class="kakao_content">
<article id="mainContent" class="kakao_article">
    <h2 class="screen_out">영화 상세 본문</h2>
    <div class="section_detail">
        <!-- 상세상단 기본정보 -->
        <div class="box_basic" data-tiara-layer="main">
    <div class="info_poster">
    <img src="http://localhost/prj3_mvc/images/KakaoTalk_20230504_212827923_01.jpg"  style="border-radius: 15px" />
    </div>
    <div class="info_detail">
        <div class="detail_tit">
            <div class="detail_tit_fixed" aria-hidden="true">
                <div class="inner_tit">
                    <span class="txt_tit">슈퍼 마리오 브라더스</span>
                </div>
            </div>
            <h3 class="tit_movie">
                <span class="txt_tit">
                    토끼와 거북이 - 1조
                </span>
                    <span class="txt_tag">
                        <span class="txt_state">상영중</span>
                    </span>
            </h3>
                <div class="head_origin">
                    <span class="txt_name">The Super Mario Bros. Movie, 2023</span>
                    <a href="javascript:" class="ico_movie link_originmore">원문 더보기</a>
                    <div class="tooltip_origin">
                        <p class="txt_tooltip">The Super Mario Bros. Movie, 2023</p>
                        <a href="javascript:" class="ico_movie link_close">닫기</a>
                    </div>
                </div>
                <input type="hidden" id="releaseStatus" value="true" />
                <input type="hidden" id="releaseFlag" value="Y" />
                <input type="hidden" id="latestReleaseDate" value="23.04.26" />
                <input type="hidden" id="daysCountFromRelease" value="10" />
        </div>
        <br/>
        <div class="detail_cont">
            <div class="inner_cont">
                        <dl class="list_cont">
                                <dt>개봉</dt>
                            <dd>2023.05.04</dd>
                        </dl>
                    <dl class="list_cont">
                        <dt>장르</dt>
                        <dd>드라마/코미디</dd>
                    </dl>
                    <dl class="list_cont">
                        <dt>국가</dt>
                        <dd>대한민국</dd>
                    </dl>

            </div>
            <div class="inner_cont">
                    <dl class="list_cont">
                    <dt>평점</dt>
                    <dd><span class="ico_movie ico_star"></span>8.3</dd>
                    </dl>
              		
                    <dl class="list_cont">
                    <dt>러닝타임</dt>
                    <dd>
                        92분
                    </dd>
                    </dl>
                    <dl class="list_cont">
                        <dt>등급</dt>
                        <dd>
                            청소년 관람불가
                        </dd>
                        </dl>
            </div>
        </div>
            	<!------------------------------- 좋아요, 예메하기 버튼 추가 박진호 0507 -->
            	<div>
            		<input type="button" class="like" value="♥좋아요" style="width:80px; height:35px; cursor: pointer; border-radius: 10px" />
            		<input type="button" class="ticketing" value="예매하기" style="width:80px; height:35px; cursor: pointer; margin-left: 10px; border-radius: 10px; background-color: #E74C3C; border-color: #E74C3C; color: white; font-size:11pt;font-family:굴림;font-weight:bolder"  />
            		
            	</div>
    </div>
    
</div>
        <!-- 상세하단 -->
        <div class="box_detailinfo">
            <!-- 탭메뉴 -->
<div class="tabmenu_wrap">
    <strong class="screen_out">영화제 탭메뉴</strong>
    <ul class="list_tabmenu" role="tablist" data-tiara-layer="tab">
        <li  role="presentation"><!-- 선택시 on 클래스 추가 -->
            <a href="http://localhost/prj3_mvc/mainInfo.jsp" class="link_tabmenu" aria-selected="false" role="tab" data-tiara-layer="menu" data-tiara-copy="탭_주요정보">
                <span class="txt_tabmenu">주요정보</span>
            </a>
        </li>
        <li  role="presentation">
            <a href="http://localhost/prj3_mvc/crew.jsp" class="link_tabmenu" aria-selected="false" role="tab"  data-tiara-layer="crew" data-tiara-copy="탭_출연/제작">
                <span class="txt_tabmenu">출연/제작</span>
            </a>
        </li>
        <li  role="presentation">
            <a href="http://localhost/prj3_mvc/grade.jsp" class="link_tabmenu" aria-selected="false" role="tab"  data-tiara-layer="media" data-tiara-copy="탭_영상/포토">
                <span class="txt_tabmenu">평점</span>
            </a>
        </li>
        <li  role="presentation">
            <a href="http://localhost/prj3_mvc/review.jsp" class="link_tabmenu" aria-selected="false" role="tab" data-tiara-layer="grade" data-tiara-copy="탭_평점">
                <span class="txt_tabmenu">리뷰</span>
            </a>
        </li>
    </ul>
</div> 
			 <!-- form 시작 -->
                <form action="review_list.do?m_num=2" id="searchFrm" name="searchFrm" method="post">
               
          		 <div class="contents" style="padding-top: 30px; ">
				<!-- 검색바 시작 -->
                    <div style="float: left; padding-right: 20px;">
                    <select class="form-select w-80" aria-label="Default select example" name="search_type" id="search_type">
	                    <option selected value="0">전체</option>
	                    <option value="1">제목</option>
	                    <option value="2">글쓴이</option>
	                    <option value="3">제목+글쓴이</option>
              		</select>
                    </div>
                    <div>
                    
                    <div class="form-group pull-right" style="width:300px; float: left;  padding-bottom: 20px;"><!-- 검색바 너비 -->
                		<input type="text" class="search form-control" placeholder="리뷰 검색" id="search" name="search">
                		<input type="hidden" name="m_num" value="2" />
                    </div>
                      <div style="float: left; width: 33%; padding-left:30px;">
                		<input type="button" value="검색" class="btn btn-outline-danger" id="subBtn"/>
                      </div>
                      <div>
                		<a href="review_write.do?m_num=2">
                			<input type="button" value="리뷰 작성하기" class="btn btn-outline-primary" id="" style="float: right;"/>
                		</a>
                      </div>
                    </div>
                    
               		<span class="counter pull-right"></span>
               		<!-- 검색바 끝 -->
                </form>
                <!-- form 끝 -->
					<!-- 테이블을 담은 div 시작 -->	
                    <div style="width:1100px"><!-- 테이블의 div너비 -->
                    <table class="table table-hover table-bordered results"  style="text-align:center">
                    <!-- 테이블 각 행의 넓이 비율 설정 원하면 늘리거나 줄이면 됨-->
                    <colgroup>
					<col style="width:3%"> <!-- No. 행 넓이 비율 3% -->
					<col style="width:20%"> <!-- 제목 행 넓이 비율 15% -->
					<col style="width:6%"> <!-- 작성자 행 넓이 비율 6% -->
					<col style="width:6%"> <!-- 작성일 행 넓이 비율 6% -->
					<col style="width:6%"> <!-- 조회 행 넓이 비율 6% -->
					<col style="width:6%"> <!-- 좋아요 행 넓이 비율 6% -->
					</colgroup>
                    <!-- 테이블 각 행의 넓이 비율 설정 끝 -->
					<thead style="text-align:center">
  						<tr>
  							<th scope="col" >No.</th>
  							<th scope="col" >제목</th>
  							<th scope="col" >작성자</th>
  							<th scope="col" >작성일</th>
  							<th scope="col" >조회</th>
  							<th scope="col" >좋아요</th>
						</tr>
					</thead>
					  <tbody>
					 <form action="review_post.do" name="reviewFrm" id="reviewFrm" method="post">
					  <c:if test="${ empty reviewList }">
					  	<tr>
					  		<td colspan="6">해당영화에 대한 리뷰가 존재하지 않습니다.</td>
					  	</tr>
					  </c:if>
					  <c:forEach var="review" items="${ reviewList }" varStatus="reviewCnt">
					  <tr>
					  	<td scope="row"><c:out value="${ reviewCnt.count }"/>
					  		<input type="hidden" name="user_id" value="${ review.user_id }"/></td>
					  	<td><a href="review_post.do?rv_num=${ review.rv_num }&m_title='토끼와 거북이'" ><c:out value="${ review.title }"/></a></td>
					  	<td><c:out value="${ review.nick_name }"/></td>
					  	<td><c:out value="${ review.input_date }"/></td>
					  	<td><c:out value="${ review.hits }"/></td>
					  	<td><c:out value="${ review.like_total }"/></td>
					  </tr>
					  </c:forEach>
           			</form>
					  </tbody>					
					</table>
           			</div>
					<!-- 테이블을 담은 div 끝 -->
			</div>
        </div>
    </div>
</article>        </main>
        <hr class="hide">

<footer class="kakao_foot" data-tiara-layer="footer">
    <div class="inner_foot" data-cloud="pc_news_footer">
        <div class="direct_link">
            <h2 class="screen_out">바로가기</h2>
            <div class="direct_bundle">
                <div class="item_bundle">
                    <a href="/main" class="link_txt" data-tiara-layer="home">홈</a>
                </div>
                <div class="item_bundle">
                    <a href="/ranking/reservation" class="link_txt" data-tiara-layer="ranking">랭킹</a>
                </div>
                <div class="item_bundle">
                    <a href="/premovie/theater" class="link_txt" data-tiara-layer="premovie">상영예정작</a>
                </div>
                <div class="item_bundle">
                    <a href="/contents/news" class="link_txt" data-tiara-layer="contents">콘텐츠</a>
                </div>
            </div>
        </div>
        <h2 class="screen_out">서비스 이용정보</h2>
        <div class="footer_link">
            <a href="//news.daum.net/info/intro" class="link_info" data-tiara-layer="info_daumnews">다음뉴스 소개</a>
            <a href="https://magazine.daum.net/daummovie_notice" class="link_info" data-tiara-layer="notice">공지사항</a>
            <a href="//news.daum.net/info/bbsrule" class="link_info" data-tiara-layer="bbsrule">게시물 운영원칙</a>
            <a href="//policy.daum.net/info/info" class="link_info" data-tiara-layer="policy">서비스 약관/정책</a>
            <a href="//with.kakao.com/media" class="link_info" data-tiara-layer="harmony">뉴스제휴</a>
            <a href="//business.kakao.com/" class="link_info" data-tiara-layer="adinfo">비즈니스</a>
            <a href="//cs.daum.net/redbell/top.html" class="link_info" data-tiara-layer="redbell">권리침해신고</a>
            <a href="//cs.daum.net/faq/32.html" class="link_info" data-tiara-layer="movie_consumer">영화 고객센터</a>
        </div>
        <div class="footer_link">
            <a href="//news.daum.net/info/newscenter24" class="link_info" data-tiara-layer="newscenter">24시간 뉴스센터</a>
            <a href="//news.daum.net/info/edit" class="link_info" data-tiara-layer="principle">서비스원칙</a>
            <span class="link_info">기사배열책임자 : 황유지</span>
            <span class="link_info">청소년보호책임자 : 손성희</span>
        </div>
        <div class="info_copyright">
            <strong class="info_warn">위 내용에 대한 저작권 및 법적 책임은 자료제공사 또는 <br>글쓴이에 있으며, Kakao의 입장과 다를 수 있습니다.</strong>
            <small class="txt_copyright">Copyright © <a href="http://www.kakaocorp.com/" class="link_kakao">Kakao Corp.</a> All rights reserved.</small>
        </div>
        <a href="javascript:" class="btn_top" data-tiara-layer="top_button"><span class="inner_top"><span class="ico_movie ico_top"></span></span>TOP</a>
    </div>
</footer>
        <script src="//t1.daumcdn.net/media/kraken/movie/386a1cd/PcMoviedbRouterBundle.merged.js"></script>

<script src="//t1.daumcdn.net/media/kraken/movie/386a1cd/PcCommonEventBundle.merged.js"></script>    </div>
<div class="photoview_layer" data-tiara-layer="photo list photoviewer">
    <div class="inner_layer">
        <div class="layer_head">
            <div class="tit_group">
                <strong class="tit_photoview">
                    <a href="#none" class="link_phototit"></a>
                </strong>
                <span class="info_page">
                    <span class="screen_out">현재 페이지</span>
                    <span class="txt_page">/</span>
                    <span class="screen_out">총 페이지</span>
                </span>
            </div>
            <div class="btn_group">
                <a href="#none" class="link_listview">
                    <span class="ico_movie ico_listview">리스트 보기</span>
                </a>
                <a href="#none" class="link_photoviewer">
                    <span class="ico_movie ico_photoviewer">포토뷰어 보기</span>
                </a>
                <a href="#none" class="link_close">
                    <span class="ico_movie ico_close">닫기</span>
                </a>
            </div>
        </div>
        <div class="layer_body">
            <div class="slide_photoview">
                <div class="slide_wrap wrap_photolist">
                    <div class="list_photolist">
                    </div>
                </div>
                <div class="slide_wrap wrap_photoview">
                    <ul class="list_photoview">
                    </ul>
                </div>
                <button type="button" class="btn_slide btn_prev"><span class="ico_movie">이전</span></button>
                <button type="button" class="btn_slide btn_next"><span class="ico_movie">다음</span></button>
            </div>
        </div>
        <div class="layer_foot">
        </div>
    </div>
</div>
<script src="//t1.daumcdn.net/media/kraken/movie/386a1cd/PcPhotoViewerBundle.merged.js"></script>
</body>
</html>