<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info="예매 현황 view"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@include file="../adminCheckLogin.jsp" %> --%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>MOVIEPLANET</title>
<!-- Favicon -->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<!-- bootstrap 시작-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>
<!-- bootstrap 끝-->
<!-- jQuery CDN 시작 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<Style>
.results tr[visible='false'], .no-result {
	display: none;
}

.results tr[visible='true'] {
	display: table-row;
}

.counter {
	padding: 8px;
	color: #ccc;
}

.header {
	margin-bottom: 25px;
	width: 100%;
	height: 100px;
	background-color: #e74c3c;
}

/* 


.todayHeader {
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: #b7b7b7;
	width: 500px;
	height: 80px;
	border-radius: 15px
}

.todayHeader p {
    margin: 0;
  }

 */
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

#header {
	width: 100%;
	height: 170px;
	background-color: #323743;
	padding-right: 15%;
	padding-left: 15%;
}

#logo {
	margin: 0 auto;
	color: white;
	font-weight: bolder;
	font-size: 30px;
	margin-top: 10px;
	margin-left: 20px;
	float: left;
}

#logout {
	color: white;
	text-align: right;
	margin-right: 20px;
	padding-top: 10px;
}

#navi {
	position: relative;
	width: 100%;
	height: 90px;
	bottom: 0px;
	margin-left: 20px;
}

select::-ms-expand {
	display: none;
}

.select {
	position: absolute;
	margin-top: 10px;
	bottom: 0px;
	width: 150px;
	height: 35px;
	padding: 5px 30px 5px 10px;
	border-radius: 4px;
	border: 1px solid #999999;
}

#btn {
	position: absolute;
	bottom: 0px;
	margin-left: 200px;
	width: 130px;
	height: 35px;
	background-color: #3498db;
	color: white;
	border: none;
}

#btn:hover {
	cursor: pointer;
}

#container {
	background-color: #f7f7f7;
	width: 100%;
	height: 900px;
}

#wrapping{
height:750px;
}

#main {
float:left;
	padding-top: 20px;
	/* 	padding-right: 15%;
	padding-left: 15%;
 */
	width: 550px;
}

#right {
	border-left:1px solid #999;
	padding-left:30px;
	float: left;
	padding-top: 20px;
	width: 350px;
	
}

#user {
	text-align: left;
	/* padding-left: 13%; */
	margin-top: 30px;
	margin-right: 30px;
	margin-left: 30px;
	margin-bottom: 100px;
}

#comp {
	text-align: left;
	/* padding-left: 13%; */
	margin-top: 30px;
	margin-right: 30px;
	margin-left: 30px;
	margin-bottom: 30px;
}

h1 {
	text-align: center;
	margin-bottom: 30px;
	padding-bottom: 10px;
}

.h11 {
	color: white;
	text-align: left;
	padding-top: 30px;
	padding-left: 50px;
	font-weight: bold;
}

.h22 {
	font-weight: normal;
	left: 20px;
	margin-left: 20px;
	margin-bottom: 20px;
}

.user1 {
	float: left;
	width: 240px;
}

.user2 {
	float: left;
	width: 240px;
}

.user3 {
	float: left;
	width: 240px;
}

.user4 {
	float: left;
	width: 240px;
}

.comp1 {
	float: left;
	width: 257px;
}

.comp2 {
	float: left;
	width: 300px;
}

#all {
	float: left;
	width: 200px;
	height: 90px;
	padding-top: 20px;
	padding-left: 20px;
	background-color: white;
}

.img {
	float: left;
	width: 96px;
	height: 96px;
}

.cnt {
	font-size: 25px;
	font-weight: bolder;
	margin-left: 10px;
	padding-left: 10px;
}

.cntlabel {
	font-size: 20px;
	margin-left: 10px;
	padding-left: 10px;
}


p{
margin-bottom:5px;
}


a {
	text-decoration-line: none;
}

.clearfix::after {
	content: "";
	display: table;
	clear: both;
}

.txt_tit{
	font-weight: 600;
    font-size: 30px;
    line-height: 36px;
    color: #000;
    text-align: center;
}
</Style>

</head>
<body>
	<div class="d-flex" id="wrapper">
		<!-- Sidebar-->
		<div class="border-end bg-white" id="sidebar-wrapper">
			<div class="sidebar-heading border-bottom bg-light">
				<img src="http://localhost/prj3_mvc/images/movie.png"
					style="width: 60px; height: 30px;"><font
					style="color: #E74C3C; font-weight: bold;">MOVIEPLANET</font>
			</div>
			<div class="list-group list-group-flush">
				<a href="dashBoard.do" class="list-group-item list-group-item-action list-group-item-light p-3">
					메인
				</a> 
				<a href="movie_regist.do" class="list-group-item list-group-item-action list-group-item-light p-3">
					영화 등록
				</a> 
				<a href="movie_list.do" class="list-group-item list-group-item-action list-group-item-light p-3">
					영화 관리
				</a> 
				<a href="movie_grade.do" class="list-group-item list-group-item-action list-group-item-light p-3">
					영화 한줄평 관리
				</a> 
				<a href="review_manage.do" class="list-group-item list-group-item-action list-group-item-light p-3">
					영화 리뷰 현황판 관리
				</a> 
				<a href="reservation_detail.do" class="list-group-item list-group-item-action list-group-item-light p-3">
					예매 현황
				</a> 
				<a href="member_board.do" class="list-group-item list-group-item-action list-group-item-light p-3">
					회원 관리
				</a> 
			</div>
		</div>
		<!-- Page content wrapper-->
		<div id="page-content-wrapper">
			<!-- Top navigation-->
			<nav
				class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
				<div class="container-fluid">
					<button class="btn btn-primary" id="sidebarToggle">
						&lt;&lt;</button>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ms-auto mt-2 mt-lg-0">
							<li class="nav-item active"><a class="nav-link"
								href="http://localhost/prj3_mvc/admin/index.html"
								style="color: red; font-weight: bold;">Home</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- Page content-->
			<div class="container-fluid" style="position: realative;">
				<div class="header">
					<h2 class="h11">대시보드</h2>
				</div>

				<div id="wrapping" class="clearfix" style="width: 900px">
					<h1>오늘의 주요 현황</h1>
					<div id="main">
						<h2 class="h22">개인 현황</h2>
						<div id="user" class="clearfix">
							<div class="user1">
								<img src="http://localhost/prj3_mvc/images/user.PNG"
									alt="user Image" class="img"> <span class="cnt"><c:out value="${ joinCnt }"/></span><br>
								<span class="cntlabel">회원 가입</span>
							</div>
							<div class="user2">
								<img src="http://localhost/prj3_mvc/images/user.PNG"
									alt="user Image" class="img"> <span class="cnt"><c:out value="${ quitCnt}"/></span><br>
								<span class="cntlabel">회원 탈퇴</span>
							</div>

						</div>

						<h2 class="h22">영화 현황</h2>
						<div id="user" class="clearfix">
							<div class="user1">
								<img src="http://localhost/prj3_mvc/images/user.PNG"
									alt="user Image" class="img"> <span class="cnt"><c:out value="${ movieCnt}"/></span><br>
								<span class="cntlabel">등록된 영화</span>
							</div>
							<div class="user2">
								<img src="http://localhost/prj3_mvc/images/user.PNG"
									alt="user Image" class="img"> <span class="cnt"><c:out value="${ cntOnGoing}"/></span><br>
								<span class="cntlabel">상영 영화</span>
							</div>




						</div>

					</div>
					<div id="right">
						<div class="item_poster">
						<h2 class="h22" style="text-align: center;">예매율 1위</h2>
				            <div class="poster_movie" style="text-align: center;">
				                <img src="http://localhost/prj3_mvc/images/${ rateTop.poster }" style="border-radius: 15px; width: 210px; height: 308px;">
				            </div>
					        <div class="thumb_cont" style="text-align: center;">
					            <strong class="tit_item"><c:out value="${rateTop.m_title}"/></strong>
					        </div>
					    </div>
					
						<div id="user" class="clearfix" >
						
							<div class="user1" style="text-align: center;">

							<ul class="list-group list-group-flush">
							  <li class="list-group-item">총 회원 수 : <span><c:out value="${cntTotalUsers }"/>명</span></li>
							  <li class="list-group-item">총 영화 수 : <span><c:out value="${ cntTotalMovies}"/>개</span></li>
							  <li class="list-group-item">총 리뷰 수 : <span><c:out value="${ cntTotalReviews}"/>개</span></li>
							  <li class="list-group-item">총 한줄평 : <span><c:out value="${cntTotalGrades }"/>개</span></li>
							</ul>
								<%-- <p>
									총 회원 수 : <span><c:out value="${cntTotalUsers }"/>명</span>
								</p>
								<p>
									총 영화 수 : <span><c:out value="${ cntTotalMovies}"/>개</span>
								</p>
								<p>
									총 리뷰 수 : <span><c:out value="${ cntTotalReviews}"/>개</span>
								</p>
								<p>
									총 한줄평 : <span><c:out value="${cntTotalGrades }"/>개</span>
								</p> --%>


							</div>

						</div>

					</div>
				</div>
				<!--wrapping  -->


			</div>

			<!--여기까지 컨테이너  -->
		</div>

	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
