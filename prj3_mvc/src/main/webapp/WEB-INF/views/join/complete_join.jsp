<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    
<title>회원가입 완료</title>
<link rel="SHORTCUT ICON" href="http://localhost/prj2/project_user/2.join/images/favicon.png">

<link href="http://localhost/prj3_mvc/css/banner.promotion-sv-202211241151.css" rel="stylesheet" type="text/css">

<link href="http://localhost/prj3_mvc/css/common-sv-202302221621.css" rel="stylesheet" type="text/css">
<link href="http://localhost/prj3_mvc/css/header-sv-202005061649.css" rel="stylesheet" type="text/css">
<link href="http://localhost/prj3_mvc/css/layout-sv-202005061649.css" rel="stylesheet" type="text/css">
<link href="http://localhost/prj3_mvc/css/mtu_popup-sv-202212281122.css" rel="stylesheet" type="text/css">
<link href="http://localhost/prj3_mvc/css/footer-sv-202301261521.css" rel="stylesheet" type="text/css">
    
<link rel="stylesheet" href="http://localhost/prj3_mvc/css/footer_sub.css">
<link href="http://localhost/prj3_mvc/css/complete-sv-202301041737.css" rel="stylesheet" type="text/css">
<link href="http://localhost/prj3_mvc/css/tvc2022_4-sv-202212141417.css" rel="stylesheet" type="text/css">

<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap');
#btn {
	width: 150px; height: 50px; background-color: #fb4357; color: white; border: none; border-radius: 5px; font-size: 18px; font-weight: bold; cursor: pointer;
	font-family: 'Noto Sans KR', sans-serif;
}


</style>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->

<script type="text/javascript">
$(function() {
	$("#btn").click(function() {
		location.href="login.do";
	});// click
});// ready
</script>

</head>

<body class="">

<div class="resumePage resumePageComplete">
	<div class="resumeHeader">
		<div class="container">
			<a href="" class="logo"><img alt="무비플래닛" src="http://localhost/prj3_mvc/images/movie_small.png"></a>
			<div class="links">
				<a href="" class="link linkHome">무비플래닛 홈</a> 
			</div>
		</div>
	</div>

	<div class="resumeWrapper">
		<div class="resumeContainer resumeContainerComplete">
			<h1 class="header">
				<img src="http://localhost/prj3_mvc/images/join.PNG" alt="회원가입 완료">로그인 후 무비플래닛의 다양한 영화 관련 서비스를 이용해보세요!
			</h1>
			<input type="button" value="로그인 하기" id="btn" />
		</div>
	</div>
			
	<!-- footer 시작 -->
	<div id="footer" class="footer footer--main">
    	<div class="footer__wrap">
         	<div class="footer__notice">
                <p class="copyright">
            		© <strong><a href="" target="_blank">MOVIEPLANET</a></strong> LLC. All rights reserved.
        		</p>
        	</div> 

         	<div class="footer__service">
            	<ul>
                	<li><a href="" target="_blank">회사소개</a></li>
                	<li><a href="" target="_blank">이용약관</a></li>
                	<li><a href="" target="_blank"><strong>개인정보처리방침</strong></a></li>
           		</ul>
       		</div>  
        </div>
    </div>
</div>
<!-- footer 끝 -->
		<div style="position: absolute; left: -5000px; overflow: hidden; display: none;">
		</div>
	</body>
</html>