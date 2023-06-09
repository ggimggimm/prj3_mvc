<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../checkLogin.jsp" %> 

<!DOCTYPE html>
<html lang="ko">
<head>
<!-- META -->
<meta charset="utf-8">
<meta name="generator" content="Rhymix">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="robots" content="noindex" />
<meta name="description" content="" />
<meta name="csrf-token" content="3ofBua2Kblyj8sXl" />
<!-- TITLE -->
<title>익스트림무비 - 영화수다</title>
<!-- CSS -->

<!-- CSS -->
<link rel="stylesheet" href="http://localhost/prj3_mvc/css/cke.css" />
<link rel="stylesheet" href="http://localhost/prj3_mvc/css/1.css" />
<link rel="stylesheet" href="http://localhost/prj3_mvc/css/2.css" />

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
	
	
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	

<script src="http://localhost/prj3_mvc/css/ed1.js"></script>
<script src="http://localhost/prj3_mvc/css/ed2.js"></script>
<script src="http://localhost/prj3_mvc/css/ed3.js"></script>
<script src="http://localhost/prj3_mvc/css/ed4.js"></script>

<!-- summernote 추가 -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="http://localhost/prj3_mvc/js/summernote/summernote-lite.js"></script>
  <script src="http://localhost/prj3_mvc/js/summernote/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="http://localhost/prj3_mvc/css/summernote/summernote-lite.css">
  <!--  -->
<!-- summernote 끝 -->

<style>
#popup_menu_area	{outline: none !important; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0, 0.15) !important;}
</style>
<style>
body, table, input, button, .ink_wrap .xe_content, .text_en {
	font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui, 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
	font-weight: 400;
}
#popup_menu_area	{padding: 12px 15px 5px;}
#popup_menu_area li	{margin-bottom: 7px;}
#popup_menu_area a	{padding: 0 !important; color: #999; transition-property: color; transition-duration: 0.2s; transition-timing-function: ease-in;}
#popup_menu_area a:hover	{color: #333; background-color: transparent !important;}
.ink_container,
.ink_banner_top,
.ink_footer	{width: 1200px;}
.ink_footer_wrap	{min-width: 1200px;}
.nav_wrap.fixed	{width: 1200px; margin-left: -600px;}
.ink_content	{width: 930px;}
.ink_sidebar.right_sidebar	{width: 220px;}
.ink_sidebar.left_sidebar	{width: 250px;}
.ink_sidebar.right_sidebar::after	{right: 245px}
.ink_sidebar.left_sidebar::after	{left: 275px;}
.containerB .ink_content	{width: 905px;}
.containerB.sidebar_typeN .ink_content	{width: 100%;}
.containerB .ink_sidebar.right_sidebar	{width: 195px;}
.containerB .ink_sidebar.left_sidebar	{width: 225px;}
.normal_mode .ink_gnb .menu_1depth	{line-height: 70px;}
.nav_wrap.view_mode,
.normal_mode .gnb_space .menu_1depth	{height: 70px;}
.ink_header	{margin-top: 25px;}.nav_wrap.color_nav, 
.view_mode.color_nav .ink_gnb, 
.normal_mode.color_nav .menu_1depth, 
.nav_wrap .mymenu_title, 
.nav_wrap.color_nav.fixed	{background-color: #c14c3d !important;}
.nav_wrap.color_nav .menu_1depth,
.color_nav.view_mode a,
.nav_wrap.color_nav .nav_buttons button	{color: rgba(255,255,255,0.7);}
.nav_wrap.color_nav .menu_1depth:hover,
.color_nav.view_mode a:hover,
.nav_wrap.color_nav .nav_buttons button:hover,
.nav_wrap.color_nav .active>a.menu_1depth	{color: #FFF;}
.view_mode.color_nav .ink_gnb>ul>li	{border-color: rgba(255,255,255,0.3);}
.view_mode.color_nav .ink_gnb .menu_1depth	{border-color: rgba(255,255,255,0.5);}
.ink_header .logo,
.ink_header .header_side	{height: 72px;}
.header_typeB3	{padding-top: -18px;}
body	{background-color: #e6e6e6;}
.ink_sidebar.left_sidebar::after,
.ink_sidebar.right_sidebar::after	{background-color: rgba(0,0,0,0.05);}
</style>
<style>
.atc_body .xe_content	{padding: 30px 40px 35px 40px;}.ldd>ul>li,
.ldn td	{padding-top: 14px; padding-bottom: 14px;}
.list_wrap .title_link,
.ldf header h1	{font-size: 13px;font-size:15px;}
.ldn .list_author	{font-size: 13px;font-size:13px;}
</style>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="crossorigin" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" />
<script type="text/javascript">
/* submit 하기 */	
$(document).ready(function() {
	  $("#subBtn").click(function() {
			if($("#title").val().trim().length === 0){ //검색어 공백
				alert("제목을 입력해주세요.");
				return;
			} else if($("#content").val() == null) {
				alert("내용을 입력해주세요.")
				return;
			} else {
				$("#searchFrm").submit();
			 return;
			}
	  });//click
	});//ready
</script>

</head>

<body>
<!-- header -->
	
<!-- header -->

		<div class="ink_wrap lightmode">
					
			<div id="container" class="ink_container header_typeB3 containerN">
				<div id="ink_wrapper" class="ink_wrapper clearfix">
					<div id="content" class="ink_content" role="main">
						<div class="bd_header">
						<!-- header -->
						<div style="height:100px; margin-top:20px;">
		                 <div style="width:930px; height:80px; border-radius: 15px; background-color: white;">
		                 <div style="float:left"><img src="http://localhost/prj3_mvc/images	/movie_small.png" style="height:50px; margin-top:20px;"/></div>
		                 <div style="font-size:20px; margin-top:27px; float:left"><font font style="color:#E74C3C; font-weight: bold;">MOVIEPLANET</font></div>
		                 <a href="login_success.do" style="float:right; margin-right:30px; margin-top:50px; font-weight: bold;" >HOME</a>
		                 </div>
		                 </div>
		                  <!-- header -->
							<h2 class="bd_title"><i class="far fa-list-alt big-icon"></i><a href="#">리뷰 작성</a></h2>
						</div>
						<div class="bd_write round20">
						<div style="height: 40px;">
						</div>
						<!-- form 시작 -->
						<form action="review_write_process.do" method="post" id="searchFrm">
						<!-- summernote 시작 -->
							<input type="text" class="search form-control" name="title" id="title" placeholder="제목" style="width:600px; margin-left: 15px; margin-bottom: 30px;">
							<input type="hidden" name="m_num" value="${ param.m_num }">
							<input type="hidden" name="user_id" value="${ lrDomain.user_id }">
						  	<div class="container">
								  <textarea class="summernote" name="content" id="content"></textarea>    
								</div>
								<script>
								$('.summernote').summernote({
									  height: 450,
									  lang: "ko-KR"
									});
								</script>
						</form>
						<!-- form 끝 -->
						<!-- summernote 끝 -->
							<div class="bt_area bt_right" style="padding-top: 20px;">
								<button class="ib ib_mono" onclick="window.history.back();return false;" type="button">취소</button>
								<button class="ib ib_color" type="submit" id="subBtn">등록</button>
							</div>
						</div>
			<div class="ink_align_center">
			</div>
			</div>
		</div>
	</div>
	</div>
</div>

</body>
</html>
    