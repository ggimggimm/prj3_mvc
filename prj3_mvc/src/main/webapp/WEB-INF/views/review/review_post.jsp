<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info="여러 노드의 파싱"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<head>
<!-- META -->
<meta charset="utf-8">
<meta name="generator" content="Rhymix">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="" />
<meta name="csrf-token" content="UkcBJRYhQI7ZosRT" />
<!-- TITLE -->
<title>타이틀</title>
<!-- CSS -->
<link rel="stylesheet" href="http://localhost/prj3_mvc/css/NewFile.css" />
<link rel="stylesheet" href="http://localhost/prj3_mvc/css/NewFile1.css" />
<link rel="stylesheet" href="http://localhost/prj3_mvc/css/NewFile2.css" />
<link rel="stylesheet" href="http://localhost/prj3_mvc/css/NewFile3.css" />
<link rel="stylesheet" href="http://localhost/prj3_mvc/css/NewFile4.css" />
<link rel="stylesheet" href="http://localhost/prj3_mvc/css/NewFile5.css" />
<link rel="stylesheet" href="http://localhost/prj3_mvc/css/NewFile6.css" />
<link rel="stylesheet" href="http://localhost/prj3_mvc/css/NewFile7.css" />
<link rel="stylesheet" href="http://localhost/prj3_mvc/css/NewFile8.css" />
<link rel="stylesheet" href="http://localhost/prj3_mvc/css/NewFile9.css" />
<link rel="stylesheet"
	href="http://localhost/prj3_mvc/css/NewFile10.css" />
<link rel="stylesheet"
	href="http://localhost/prj3_mvc/css/NewFile11.css" />
<link rel="stylesheet"
	href="http://localhost/prj3_mvc/css/NewFile12.css" />
<link rel="stylesheet"
	href="http://localhost/prj3_mvc/css/NewFile13.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

<!-- JS -->
<script src="/common/js/jquery-2.2.4.min.js?20190112221345"></script>
<script src="/files/cache/assets/minified/rhymix.min.js?20221117005757"></script>
<script src="/modules/board/tpl/js/board.js?20201227091305"></script>
<script
	src="/modules/board/skins/ink_board_rawdell/js/board.js?20211226033228"></script>
<script
	src="/modules/board/skins/ink_board_rawdell/js/board_pc.js?20211014021546"></script>
<script
	src="/modules/board/skins/ink_board_rawdell/js/jquery.selectbox.min.js?20201227114829"></script>
<script
	src="/modules/editor/skins/ckeditor/js/xe_textarea.js?20190112221345"></script>
<script src="/modules/editor/tpl/js/editor_common.js?20190112221345"></script>
<script src="/layouts/ink_layout_rawdell/js/layout.js?20201227114846"></script>
<script
	src="/layouts/ink_layout_rawdell/js/jquery.scrollbar.min.js?20201227114846"></script>
<script
	src="/layouts/ink_layout_rawdell/js/jquery.selectbox.min.js?20201227114846"></script>
<script src="/layouts/ink_layout_rawdell/js/layout_pc.js?20201227114846"></script>
<script
	src="/layouts/ink_layout_rawdell/js/jquery.cookie.js?20201227114846"></script>
<script
	src="/layouts/ink_layout_rawdell/js/swiper.min.js?20201227114846"></script>




<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN -->



<style>
#popup_menu_area {
	outline: none !important;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.15) !important;
}
</style>
<style>
body, table, input, button, .ink_wrap .xe_content, .text_en {
	font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui,
		'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
	font-weight: 400;
}

#popup_menu_area {
	padding: 12px 15px 5px;
}

#popup_menu_area li {
	margin-bottom: 7px;
}

#popup_menu_area a {
	padding: 0 !important;
	color: #999;
	transition-property: color;
	transition-duration: 0.2s;
	transition-timing-function: ease-in;
}

#popup_menu_area a:hover {
	color: #333;
	background-color: transparent !important;
}

.ink_container, .ink_banner_top, .ink_footer {
	width: 1200px;
}

.ink_footer_wrap {
	min-width: 1200px;
}

.nav_wrap.fixed {
	width: 1200px;
	margin-left: -600px;
}

.ink_content {
	width: 930px;
}

.ink_sidebar.right_sidebar {
	width: 220px;
}

.ink_sidebar.left_sidebar {
	width: 250px;
}

.ink_sidebar.right_sidebar::after {
	right: 245px
}

.ink_sidebar.left_sidebar::after {
	left: 275px;
}

.containerB .ink_content {
	width: 905px;
}

.containerB.sidebar_typeN .ink_content {
	width: 100%;
}

.containerB .ink_sidebar.right_sidebar {
	width: 195px;
}

.containerB .ink_sidebar.left_sidebar {
	width: 225px;
}

.normal_mode .ink_gnb .menu_1depth {
	line-height: 70px;
}

.nav_wrap.view_mode, .normal_mode .gnb_space .menu_1depth {
	height: 70px;
}

.ink_header {
	margin-top: 25px;
}

.nav_wrap.color_nav, .view_mode.color_nav .ink_gnb, .normal_mode.color_nav .menu_1depth,
	.nav_wrap .mymenu_title, .nav_wrap.color_nav.fixed {
	background-color: #c14c3d !important;
}

.nav_wrap.color_nav .menu_1depth, .color_nav.view_mode a, .nav_wrap.color_nav .nav_buttons button
	{
	color: rgba(255, 255, 255, 0.7);
}

.nav_wrap.color_nav .menu_1depth:hover, .color_nav.view_mode a:hover,
	.nav_wrap.color_nav .nav_buttons button:hover, .nav_wrap.color_nav .active>a.menu_1depth
	{
	color: #FFF;
}

.view_mode.color_nav .ink_gnb>ul>li {
	border-color: rgba(255, 255, 255, 0.3);
}

.view_mode.color_nav .ink_gnb .menu_1depth {
	border-color: rgba(255, 255, 255, 0.5);
}

.ink_header .logo, .ink_header .header_side {
	height: 72px;
}

.header_typeB3 {
	padding-top: -18px;
}

body {
	background-color: #e6e6e6;
}

.ink_sidebar.left_sidebar::after, .ink_sidebar.right_sidebar::after {
	background-color: rgba(0, 0, 0, 0.05);
}
</style>
<style>
.atc_body .xe_content {
	padding: 30px 40px 35px 40px;
}

.ldd>ul>li, .ldn td {
	padding-top: 14px;
	padding-bottom: 14px;
}

.list_wrap .title_link, .ldf header h1 {
	font-size: 13px;
	font-size: 15px;
}

.ldn .list_author {
	font-size: 13px;
	font-size: 13px;
}

.hd{
height:100px;
}

.hd_span{
 display: inline-block; /* 인라인 요소를 블록 요소로 변경 */
  height: 100%;
}

</style>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" />


<script>
/* 댓글 버튼 누르면 대댓글 입력창 나타나기 */
$(function() {
  $('.bt_recomment').click(function() {
    var commentForm = $(this).closest('.cmt_wrap').find('.cmt_write_re');
    
    if (commentForm.css('display') === 'block') {
      commentForm.css('display', 'none');
    } else {
      commentForm.css('display', 'block');
    }
  });

  $(document).on('click', '.bt_close', function() {
    $(this).closest('.cmt_write_unit').css('display', 'none');
  });
});

$(function(){
	$("#commentBtn").click(function(){
		

		$("#commFrm").submit();
		
	});//click
});//ready

$(function(){
	$("#replyBtn").click(function(){
		

		$("#replyFrm").submit();
		
	});//click
});//ready

$(function(){
	$("#deleteReplyBtn").click(function(){
		

		$("#deleteReplyFrm").submit();
		
	});//click
});//ready

$(function(){
	$("#deleteCommBtn").click(function(){
		

		$("#deleteCommFrm").submit();
		
	});//click
});//ready

$(function() {
	var currentLikes = $("#cntLike").text();
	
	// 유저의 id 받기
	var user_id = $("#hiddenId").val();
	var rv_num = ${param.rv_num};

	// 좋아요 버튼이 눌리면
	$("#likeBtn").click(function() {

		// 사용자가 로그인 상태인지 확인
		if (user_id !== "") {

			// 현재 버튼의 클래스를 확인
			var liked = $(this).hasClass('submitted');
			// 눌린 상태였다면 true, 안눌린 상태였다면 false 

			$.ajax({
				// db의 좋아요 테이블에 insert 혹은 delete해주기
				url: "/prj3_mvc/likeClicked.do",
				method: "get",
				data: {
					user_id: user_id,
					rv_num: rv_num,
					liked: liked
				},
				dataType: "json",
				success: function(jsonObj) {

					// db에서 할일

					if (jsonObj.resultFlag) { // db 작업에 성공하면

						if (liked) { // 눌린 상태였다면 해제하기

							$("#likeBtn").removeClass('submitted');
							currentLikes--;
							$("#cntLike").text(currentLikes);
							location.reload();
						} else { // 안 눌린 상태였다면 누르기

							$("#likeBtn").addClass('submitted');
							currentLikes++;
							$("#cntLike").text(currentLikes);
							location.reload();
						}//end else

					}//end if	
					
				},//end success
				error: function(xhr) {
					alert("문제");
				}//end error

			});//ajax

		} else {
			alert("로그인 후 이용 가능합니다.");
		}//end else

});//click


	
});//ready


/* 댓글 등록 ajax 
$(function() {
	var currentLikes = $("#cntLike").text();
	
	// 유저의 id 받기
	var user_id = $("#hiddenId").val();
	var rv_num = ${param.rv_num};

	// 댓글 버튼이 눌리면
	$("#commentBtn").click(function() {


			// 현재 버튼의 클래스를 확인
			var liked = $(this).hasClass('submitted');
			// 눌린 상태였다면 true, 안눌린 상태였다면 false 

			$.ajax({
				// db의 좋아요 테이블에 insert 혹은 delete해주기
				url: "/prj3_mvc/likeClicked.do",
				method: "get",
				data: {
					user_id: user_id,
					rv_num: rv_num,
					liked: liked
				},
				dataType: "json",
				success: function(jsonObj) {

				},//end success
				error: function(xhr) {
					alert("문제");
				}//end error

			});//ajax


	});//click

	
});//ready */

</script>

</head>

<!-- BODY START -->
<body>
	<!-- PC -->
	<input type="hidden" id="hiddenId" value="${ lrDomain.user_id }"/>
	<div class="ink_wrap lightmode">
		<div id="container" class="ink_container header_typeB3 containerN">

			<div id="ink_wrapper" class="ink_wrapper clearfix">

				<div id="content" class="ink_content" role="main">

					<section class="ink_board guest_mode">
						<div class="bd_header" >
						
						<div style="height:100px; margin-top:20px;">
						<div style="width:930px; height:80px; border-radius: 15px; background-color: white;">
						<div style="float:left"><img src="http://localhost/prj3_mvc/images/movie_small.png" style="height:50px; margin-top:20px;"/></div>
						<div style="font-size:20px; margin-top:27px; float:left"><font font style="color:#E74C3C; font-weight: bold;">MOVIEPLANET</font></div>
						<a href="login_success.do" style="float:right; margin-right:30px; margin-top:50px; font-weight: bold;" >HOME</a>
						</div>
						</div>
							<h2 class="bd_title" >
								<i class="far fa-list-alt big-icon"></i> <a href="login_success.do">메인으로</a>
								<i class="fas fa-angle-right"></i> 
								<a class="category_link" href="main_info.do?m_num=${ param.m_num }"><c:out value="${param.m_title} "/></a>
							</h2>
						</div>
						<article class="ink_atc round20 has_list">
							<header class="atc_header">
								<h1>
									<a href=""
										class="atc_title"><c:out value="${reviewInfo.title}"/></a>
								</h1>
								<div class="atc_info clearfix">
									<span class="atc_nickname"><span
										class="inkpf color round small"><img class="inkpf_img"
											src="http://localhost/prj3_mvc/upload/${reviewInfo.profile}" onerror="this.src='http://localhost/prj3_mvc/images/no.png'"/>
											<%-- ${profile} --%></span> <a href=""
										class="member_66498994">${reviewInfo.nick_name}</a>
									</span> <span class="text_en atc_date font_grey1"><c:out value="${reviewInfo.input_date}"/></span>
									<div class="atc_info_right text_en font_grey1">
										<span class="count_read"><i class="fas fa-eye"
											title="조회 수"><c:out value="${reviewInfo.hits}"/></i></span> <span class="count_vote pt_col"><i
											class="fas fa-heart" title="좋아요 수"><c:out value="${reviewInfo.like_total}"/></i></span> <span
											class="count_cmt pt_col2"><i
											class="fas fa-comment-dots" tilte="댓글"><c:out value="${ commSize }"/></i></span>
									
									<!-- 수정 삭제 버튼 choose -->
									<c:choose>
										<c:when test="${lrDomain.user_id eq reviewInfo.user_id}">
												<form action="review_write_modify.do" name="modifyFrm" method="post" style="display: inline-block;">
													<input type="hidden" name="rv_num" value="${ param.rv_num }"/>
													<input type="hidden" name="m_num" value="${ param.m_num }"/>
													<input type="hidden" name="m_title" value="${ param.m_title }"/>
													<span style="margin-left: 15px;"><button class="ib ib2 ib_color" style="background-color: #75A99C" type="submit">수정</button></span>
												</form>
												<a href="review_write_delete.do?rv_num=${ param.rv_num }&m_num=${ param.m_num }">
													<span><button class="ib ib2 ib_color" type="submit">삭제</button></span>
												</a>
										</c:when>
		
										<c:when test="${ empty lrDomain }">
											
										</c:when>
									</c:choose>
									</div>
								</div>
							</header>
							<div class="atc_body">

								<!--BeforeDocument(90958928,66498994)-->
								<div
									class="document_90958928_66498994 rhymix_content xe_content">
									<p>
									${reviewInfo.content}
									
									</p>
								</div>
								<!--AfterDocument(90958928,66498994)-->
								<div class="atc_buttons clearfix">
									<div class="atc_vote">
									
									
									<c:choose>
									<c:when test="${likeStatus}">
										<button id="likeBtn" class="bt_vote vote_area submitted" type="button">
											<!--onclick="insertWarn('로그인 해주세요.')"  -->
											좋아요<span id="cntLike" class="voted_count text_en"><c:out value="${likeCnt}"/></span>
										</button>
									</c:when>
									<c:otherwise>
										<button id="likeBtn" class="bt_vote vote_area" type="button">
											<!--onclick="insertWarn('로그인 해주세요.')"  -->
											좋아요<span id="cntLike" class="voted_count text_en"><c:out value="${likeCnt}"/></span>
										</button>
									</c:otherwise>
									</c:choose>
									
									</div>
								</div>
								<div class="atc_box bg_grey1">
									<div class="atc_sign">
										<h3>
											<span class="inkpf color round"><img class="inkpf_img"
												src="http://localhost/prj3_mvc/upload/${reviewInfo.profile}" onerror="this.src='http://localhost/prj3_mvc/images/no.png'"
												alt="NeoSun" /></span> <span class="nickname"><c:out value="${ reviewInfo.nick_name }"/></span>
										</h3>
										<div class="sign_body">
											<div
												style="max-height: 100px; overflow: auto; overflow-x: hidden; height: expression(this.scrollHeight &gt; 100 ? '100px' : 'auto')">
												<p>
 										<c:out value="${reviewInfo.profile_msg}"/>
												</p>
											</div>
										</div>
									</div>
								</div>
							
							<!-- 추천인 해야함 -->
								<div id="voted_who">
									<div class="atc_who bg_grey1 scroll_wrap show">
										<h3>
											추천인
											<!--좋아요 누른 사람들 list로 가져와서 뿌려야함  -->
										</h3>
										<div class="inner scrollbar-macosx">
											<ul class="scroll_x">
												<c:if test="${ empty likeUser }">
													추천인이 존재하지 않습니다.
												</c:if>
												<c:forEach var="user" items="${ likeUser }">
													<li>
														<span class="inkpf color round"> <img src="http://localhost/prj3_mvc/upload/${user.profile}" class="inkpf_img" onerror="this.src='http://localhost/prj3_mvc/images/no.png'"/></span><br />
														<span class="vote_nickname"><c:out value="${ user.nick_name }"/></span>
													</li>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							<!-- 추천인 해야함 -->
							
							</div>
							
							<div id="comment" class="cmt cmt_bubble">
								<div class="cmt_title">
									<h3>
										댓글 <span class="pt_col text_en cmt_count"><c:out value="${ commSize }"/></span>
									</h3>
								</div>
								<div class="cmt_notice">
									<i class="fas fa-microphone"></i>추천+댓글을 달면 포인트가 더 올라갑니다 <br>
									정치,종교 관련 언급 절대 금지입니다 <br> 상대방의 의견에 반박, 비아냥, 조롱 금지입니다 <br>
									영화는 개인의 취향이니, 상대방의 취향을 존중하세요 <br> <a
										href="https://extmovie.com/notice/30806202"
										style="color: #228b22;">자세한 익무 규칙은 여길 클릭하세요</a>
								</div>
								<!-- //cmt_notice -->
							
							
								<!-- 댓글 select 반복 -->
								<c:forEach items="${ commList }" var="commList" varStatus="status">
								<%-- <c:out value="${ commList.com_num != prevCommList.com_num}"/>
								<c:out value="${commList.com_num}"/>w
								<c:out value="${prevCommList.com_num}"/> --%>
								
								<div class="cmt_wrap has_top">
									<div class="cmt_list">
									<!-- 댓글 시작  -->
									<c:if test="${commList.com_num != prevCommList.com_num}">
										<article class="cmt_unit" id="comment_번호">
											<!--프로필 이미지 wrapper 시작  -->
											<div class="inkpf_wrap">
												<span class="inkpf round">
												<img class="inkpf_img" src="http://localhost/prj3_mvc/upload/${commList.c_profile}" alt="프로필 이미지" onerror="this.src='http://localhost/prj3_mvc/images/no.png'"/></span>
											</div>
											<!--프로필 이미지 wrapper 끝 -->
											<!--댓글 작성자 wrapper 시작  -->
											<div class="cmt_header">
														<c:choose>
															<%-- 1-1. 리뷰의 작성자이면서 댓글 작성자 + 로그인한 아이디 (작성자, 삭제버튼)--%>
															<c:when test="${ reviewInfo.user_id eq commList.c_user_id && commList.c_user_id eq (!empty lrDomain.user_id?lrDomain.user_id:'') }">
																<form action="delete_comment.do" method="post" id="deleteCommFrm">
																	<strong><c:out value="${ commList.c_nick_name }"/></strong>
																	<span class="writer pt_bg2">작성자</span>
																			<input type="hidden" id="user_id" name="user_id" value="${ lrDomain.user_id }">
																			<input type="hidden" id="rv_num" name="rv_num" value="${param.rv_num}">
																			<input type="hidden" id="com_num" name="com_num" value="${commList.com_num}">
																			<input type="hidden" id="m_title" name="m_title" value="${param.m_title}">
																			<input type="hidden" id="m_num" name="m_num" value="${param.m_num}">
																			<button id="deleteCommBtn">
																				<img src="http://localhost/prj3_mvc/images/deleteBtn.png" style="width: 20px; height: 20px; position: relative; top:5px;">
																			</button>
																</form>
															</c:when>
															<%-- 1-2. 리뷰의 작성자이면서 댓글 작성자 + 로그인한 아이디는 아님 (작성자)--%>
															<c:when test="${ reviewInfo.user_id eq commList.c_user_id && commList.c_user_id ne lrDomain.user_id}">
																	<strong><c:out value="${ commList.c_nick_name }"/></strong>
																	<span class="writer pt_bg2">작성자</span>
															</c:when>
															<%-- 2-1. 리뷰의 작성자는 아니지만 댓글 작성자 + 로그인한 아이디 (삭제버튼)--%>
															<c:when test="${ reviewInfo.user_id ne commList.c_user_id && commList.c_user_id eq (!empty lrDomain.user_id?lrDomain.user_id:'') }">
																<form action="delete_comment.do" method="post" id="deleteCommFrm">
																	<strong><c:out value="${ commList.c_nick_name }"/></strong>
																			<input type="hidden" id="user_id" name="user_id" value="${ lrDomain.user_id }">
																			<input type="hidden" id="rv_num" name="rv_num" value="${param.rv_num}">
																			<input type="hidden" id="com_num" name="com_num" value="${commList.com_num}">
																			<input type="hidden" id="m_title" name="m_title" value="${param.m_title}">
																			<input type="hidden" id="m_num" name="m_num" value="${param.m_num}">
																			<button id="deleteCommBtn">
																				<img src="http://localhost/prj3_mvc/images/deleteBtn.png" style="width: 20px; height: 20px; position: relative; top:5px;">
																			</button>
																</form>
															</c:when>
															<c:otherwise>
																<strong><c:out value="${ commList.c_nick_name }"/></strong>
																<%-- 뭐 넣지? --%>
															</c:otherwise>
														</c:choose>
														
											</div>
											<!--댓글 작성자 wrapper 끝 -->
											<!--댓글 내용 시작  -->
											<div class="cmt_body">
												<!--BeforeComment(90954240,71600550)-->
												<div class="comment_90954240_71600550 rhymix_content xe_content">
													<c:choose>
														<c:when test="${ commList.c_content == null }">
															<span style="color: gray;">본 댓글은 삭제 되었습니다.</span>
														</c:when>
														<c:otherwise>
															<c:out value="${ commList.c_content }"/>
														</c:otherwise>														
													</c:choose>
												</div>
												 
											<!--댓글 내용 끝  -->
											
												<!--AfterComment(90954240,71600550)-->
												<div class="cmt_buttons">
														<a class="bt bt2 bt_recomment" href="javascript:void(0)">댓글</a>
												</div>
												<!--작성일 시작-->
												<div class="cmt_date_wrap text_en font_grey1">
													<div class="cmt_date"><c:out value="${ commList.c_input_date }"/> </div>
												</div>
												<!--작성일 끝-->
											</div>
											<!--댓글 내용 끝 -->
										</article>
										
										<c:set var="prevCommList" value="${commList}"/>
									<!--댓글 끝  -->
									
									<!-- 댓글 추가 버튼 -->
									<div class="cmt_write_unit cmt_write_re" id="cmt_write_re" style="display: none;">
									<form action="add_reply.do" method="post" id="replyFrm" class="cmt_form" style="height: auto;">
										<span class="inkpf round"></span>
										<div class="cmt_write_input text_ver">
											<textarea class="cmt_textarea" id="editor_2" name="content" placeholder="댓글 내용을 입력해주세요." style="width: 100%;"></textarea>
										</div>
										<div class="cmt_write_option">
											<input type="hidden" id="user_id" name="user_id" value="${ lrDomain.user_id }">
											<input type="hidden" id="rv_num" name="rv_num" value="${param.rv_num}">
											<input type="hidden" id="com_num" name="com_num" value="${commList.com_num}">
											<input type="hidden" id="m_title" name="m_title" value="${param.m_title}">
											<input type="hidden" id="m_num" name="m_num" value="${param.m_num}">
											<div class="bt_area bt_right">
												<button class="ib ib2 ib_mono bt_close" type="button">취소</button>
												<button class="ib ib2 ib_color" id="replyBtn" type="submit">댓글 등록</button>
											</div>
										</div>
									</form>
									</div>
									<!-- 댓글 추가 버튼 -->
									
									<!-- 대댓글 시작  -->
									<c:if test="${ commList.rp_num ne 0 }">
										<c:forEach items="${ replyList }" var="replyList">
										<c:if test="${ replyList.com_num eq commList.com_num }">
										<article class="cmt_unit reply" id="comment_대댓번호">
											<div class="inkpf_wrap">
												<span class="inkpf round">
												<img class="inkpf_img" src="http://localhost/prj3_mvc/upload/${replyList.r_profile}" alt="프로필 이미지" onerror="this.src='http://localhost/prj3_mvc/images/no.png'"/></span>
											</div>
											<div class="cmt_header">
												<c:choose>
															<%-- 1-1. 리뷰의 작성자이면서 댓글 작성자 + 로그인한 아이디 (작성자, 삭제버튼)--%>
															<c:when test="${ reviewInfo.user_id eq replyList.r_user_id && replyList.r_user_id eq (!empty lrDomain.user_id?lrDomain.user_id:'') }">
																<form action="delete_reply.do" method="post" id="deleteReplyFrm">
																	<strong><c:out value="${ replyList.r_nick_name }"/></strong>
																	<span class="writer pt_bg2">작성자</span>
																			<input type="hidden" id="user_id" name="user_id" value="${ lrDomain.user_id }">
																			<input type="hidden" id="rv_num" name="rv_num" value="${param.rv_num}">
																			<input type="hidden" id="rp_num" name="rp_num" value="${replyList.rp_num}">
																			<input type="hidden" id="m_title" name="m_title" value="${param.m_title}">
																			<input type="hidden" id="m_num" name="m_num" value="${param.m_num}">
																			<button id="deleteReplyBtn">
																			<img src="http://localhost/prj3_mvc/images/deleteBtn.png" style="width: 20px; height: 20px; position: relative; top:5px;">
																			</button>
																</form>
															</c:when>
															<%-- 1-2. 리뷰의 작성자이면서 댓글 작성자 + 로그인한 아이디는 아님 (작성자)--%>
															<c:when test="${ reviewInfo.user_id eq replyList.r_user_id && replyList.r_user_id ne lrDomain.user_id}">
																	<strong><c:out value="${ replyList.r_nick_name }"/></strong>
																	<span class="writer pt_bg2">작성자</span>
															</c:when>
															<%-- 2-1. 리뷰의 작성자는 아니지만 댓글 작성자 + 로그인한 아이디 (삭제버튼)--%>
															<c:when test="${ reviewInfo.user_id ne replyList.r_user_id && replyList.r_user_id eq (!empty lrDomain.user_id?lrDomain.user_id:'') }">
																<form action="delete_reply.do" method="post" id="deleteReplyFrm">
																	<strong><c:out value="${ replyList.r_nick_name }"/></strong>
																			<input type="hidden" id="user_id" name="user_id" value="${ lrDomain.user_id }">
																			<input type="hidden" id="rv_num" name="rv_num" value="${param.rv_num}">
																			<input type="hidden" id="rp_num" name="rp_num" value="${replyList.rp_num}">
																			<input type="hidden" id="m_title" name="m_title" value="${param.m_title}">
																			<input type="hidden" id="m_num" name="m_num" value="${param.m_num}">
																			<button id="deleteReplyBtn">
																			<img src="http://localhost/prj3_mvc/images/deleteBtn.png" style="width: 20px; height: 20px; position: relative; top:5px;">
																			</button>
																</form>
															</c:when>
															<c:otherwise>
																<strong><c:out value="${ replyList.r_nick_name }"/></strong>
																<%-- 뭐 넣지? --%>
															</c:otherwise>
														</c:choose>
											</div>
											<div class="cmt_body">
												<div class="parent">
													<i class="fas fa-comment-dots"><c:out value="${ replyList.c_nick_name }"/></i> 
												</div>
												<!--BeforeComment(90954854,80215049)-->
												<div
													class="comment_90954854_80215049 rhymix_content xe_content">
													<c:choose>
														<c:when test="${ replyList.r_content == null }">
															<span style="color: gray;">본 댓글은 삭제 되었습니다.</span>
														</c:when>
														<c:otherwise>
															<c:out value="${ replyList.r_content }"/>
														</c:otherwise>														
													</c:choose>
													
													</div>
												<!--AfterComment(90954854,80215049)-->
												<!-- 대댓글에 대한 대댓글이 없음 -->
												<!-- <div class="cmt_buttons">
														<a class="bt bt2 bt_recomment" href=""
															onclick="">댓글</a>
												</div> -->
												<div class="cmt_date_wrap text_en font_grey1">
													<div class="cmt_date"><c:out value="${ replyList.r_input_date }"/></div>
												</div>
											</div>
										</article>
										</c:if>
										</c:forEach>
										</c:if>
									<!--대댓글 끝  -->
									
									</c:if>
									
										<!-- //cmt_loop -->
									</div>
									<!-- //cmt_list -->
								</div>
								</c:forEach>
								<!-- //cmt_wrap -->
							<!-- 댓글 select 반복 끝 -->


							<!-- 여러가지 댓글 창 상태 확인 -->
							<!-- when 1.아이디 접속 + 내가 쓴 게시글-->
							<!-- when 2.아이디 접속 + 다른 사람 게시글 -->
							<!-- when 3.비로그인 -->
							<c:choose>
								
								<c:when test="${ empty lrDomain.user_id }">
									<div class="cmt_write cmt_write_unit no_grant">
										<div class="cmt_not_permitted">
											<i class="fas fa-comment-dots font_grey1"></i> 권한이 없습니다.
											<a class="ink_link2" href="login.do" onclick="">로그인</a>
										</div>
									</div>
								</c:when>
								
								<c:when test="${lrDomain.user_id eq reviewInfo.user_id}">
									<div class="cmt_write cmt_write_unit">
										<span class="writer pt_bg2" style="padding: 0 8px; font-size: 10px; line-height: 16px; display: inline-block; margin-left: 3px; border-radius: 10px; vertical-align: bottom; margin-bottom: 5px;">작성자</span>
									<span class="inkpf round"><img class="inkpf_img"
											src="http://localhost/prj3_mvc/upload/${lrDomain.profile}" onerror="this.src='http://localhost/prj3_mvc/images/no.png'"/></span>
									<form action="add_comment.do" method="post" id="commFrm" class="cmt_form">
										<input type="hidden" id="user_id" name="user_id" value="${ lrDomain.user_id }">
										<input type="hidden" id="rv_num" name="rv_num" value="${param.rv_num}">
										<input type="hidden" id="m_title" name="m_title" value="${param.m_title}">
										<input type="hidden" id="m_num" name="m_num" value="${param.m_num}">
										<div class="cmt_write_input text_ver">
											<textarea class="cmt_textarea" id="editor" name="content" cols="50"
												rows="4" placeholder="댓글 내용을 입력해주세요."></textarea>
										</div>
										<div class="cmt_write_option">
											<div class="bt_area bt_right">
													<button id="commentBtn" class="ib ib2 ib_color" type="button">댓글 등록</button>
											</div>
										</div>
									</form>
									</div>
								</c:when>
								
								<c:when test="${lrDomain.user_id ne reviewInfo.user_id and !empty lrDomain.user_id}">
									<div class="cmt_write cmt_write_unit">
									<span class="inkpf round"><img class="inkpf_img"
											src="http://localhost/prj3_mvc/upload/${lrDomain.profile}" onerror="this.src='http://localhost/prj3_mvc/images/no.png'"/></span>
									<form action="add_comment.do" method="post" id="commFrm" class="cmt_form">
										<input type="hidden" id="user_id" name="user_id" value="${lrDomain.user_id }">
										<input type="hidden" id="rv_num" name="rv_num" value="${param.rv_num}">
										<input type="hidden" id="m_title" name="m_title" value="${param.m_title}">
										<input type="hidden" id="m_num" name="m_num" value="${param.m_num}">
										<div class="cmt_write_input text_ver">
											<textarea class="cmt_textarea" id="editor" name="content" cols="50"
												rows="4" placeholder="댓글 내용을 입력해주세요."></textarea>
										</div>
										<div class="cmt_write_option">
											
											<div class="bt_area bt_right">
												<button id="commentBtn" class="ib ib2 ib_color" type="button">댓글 등록</button>
											</div> 
										</div>
									</form>
									</div>
								</c:when>

							</c:choose>

							</div><!-- //cmt_wrap -->
							
						</article>
					</section>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
