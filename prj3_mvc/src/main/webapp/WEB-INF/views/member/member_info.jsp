<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="예매 현황 view"
    %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>MOVIEPLANET</title>
        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <!-- bootstrap 시작-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <!-- bootstrap 끝-->
        <!-- jQuery CDN 시작 -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <!-- jQuery CDN 끝 -->
        <Style>
			.results tr[visible='false'],
			.no-result{
			  display:none;
			}
			
			.results tr[visible='true']{
			  display:table-row;
			}
			
			.counter{
			  padding:8px; 
			  color:#ccc;
			}
			
			.header { margin-bottom:25px; width: 100%; height: 100px; background-color: #e74c3c; }
			h2 { color: white; text-align: left; padding-top: 30px; padding-left: 50px; font-weight: bold; }
        
        </Style>
        
        <style>
			
			
			
			
			button {
			    overflow: visible;
			    background: transparent;
			    cursor: pointer;
			        border: 0 none;
			}
			
			.mbrBtnCancel_1 {
			    width: 88px;
			    height: 49px;
			    background-position: -708px 0;
			}
			
			.mbrTplDesc{
			height:40px;
			margin-bottom:40px;
			}
			
			.mbrTplData2{
			width:700; 
			float:left;
			}
			
			.imgDiv{
			/* border:1px solid #333; */
			width:250; height:550;
			text-align: center;
			}
			
			.imageBox, #profile{
			border:1px solid #333;
				width: 250px;
			    height: 270px;
			    background-size: contain;
			    background-repeat: no-repeat;
			    background-position: center;
			
			}
			
			.mbrTplData2 table, .mbrTplData2 table td {
			   
			    border-top: none;
			    border-bottom: none;
			    vertical-align: top;
			    padding-left:0px;
			    padding-right:50px;
			}
			
			tr{
			height:135px;
			/* border:1px solid #333; */
			}
			
			td{
			/* border:1px solid #333; */
			}
			
			
			label{
			
			font-size:20px;
			font-weight:bold;
			}
			
			.text{
			color:#666;	
			margin-top:10px;
			width:300px; height:35px;
			border: 1px solid #999999; 
			padding:8px;
			
			}
			
			#gnb{
			position:relative;
			
			}
			
			#main_page{
			position:absolute; left:850px;
			
			}
			
			#space{
			height: 10px; width:100%;
			}
			
			.input-file-button{
			  padding: 6px 20px;
			  background-color:#3a405d;
			  border-radius: 4px;
			  color: white;
			  cursor: pointer;
			  font-size: 15px;
			}
			
			#file {
				display: none;
			}
			
			.policy-table th, td {
				border: none;
			}
			
			a { text-decoration-line: none; }
			a:link { color : black; }
			a:visited { color : black; }
			a:hover { color : blue; } 
</style>
        
        
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
				<a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					href="http://localhost/prj3_mvc/admin/sang_chung2.jsp">영화 등록</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					href="http://localhost/prj3_mvc/admin/moe_park2.jsp">영화 관리</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					href="http://localhost/prj3_mvc/admin/moe_park1.jsp">영화 한줄평 관리</a>
				<a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					href="http://localhost/prj3_mvc/admin/kyeong_kyu1.jsp">영화 리뷰
					현황판 관리</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					href="http://localhost/prj3_mvc/admin/sang_chung1.jsp">예매 현황</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					href="http://localhost/prj3_mvc/admin/member_manage.jsp">회원 관리</a>
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
			<div class="container-fluid">
				<div class="header">
					<h2>회원 정보 확인</h2>
				</div>
				<!-- 검색바 시작 -->

				<!-- 검색바 끝 -->

				<!-- 테이블을 담은 div 시작 -->


				<div id="wrap" style="margin-left: 200px;">

					<!--// Contents Area -->
					<div id="container">


						<div id="content">
							<h1 class="skip">
								<!-- 회원정보 수정 -->
							</h1>
							<!--폼태그 -->
							<form action="" id="frm" name="frm" method="post"
								enctype="multipart/form-data">
								<div class="mbrSec mbrMngInfo">
									<div class="mbrTplDesc">
										<p>회원의 기본정보를 확인할 수 있습니다.</p>
									</div>
									<!-- <hr/> -->
									<div class="mbrTplData2">
										<br>
										<table summary="이 표는 회원정보 수정 입력폼입니다"
											style="margin-bottom: 100px;">
											<!--skip  -->
											<caption>
												<span class="skip">
													<!-- 회원정보 수정 입력폼 -->
												</span>
											</caption>

											<tbody>
												<tr>
													<td><label>이름</label><br> <input type="text"
														class="text" name="name" id="name"
														value="<c:out value="${ mem.name}"/>" readonly="readonly"></td>
													<td><label>아이디</label><br> <input type="text"
														class="text" readonly="readonly" name="id" id="id"
														readonly="readonly"
														value="<c:out value="${ mem.user_id}"/>"></td>
													<td rowspan="4">
														<div class="imgDiv">
															<br>
															<div id="profile">
																<img id="profile" src="${mem.profile }"
																	onerror="<!-- this.src='http://localhost/prj2/upload/no.png' -->" />
															</div>
															<br />
														</div>

													</td>
												</tr>
												<tr>
													<td><label>닉네임</label><br> <input type="text"
														readonly="readonly" style="width: 300px" class="text"
														placeholder="" name="zipcode" id="zipcode"
														value="<c:out value="${ mem.zipcode}"/>"></td>
													<td><label>생년월일</label><br> <input type="text"
														readonly="readonly" class="text" name="birth" id="birth"
														value="<c:out value="${mem.birth_date}"/>"></td>
												</tr>
												<tr>
													<td><label>이메일 주소</label><br> <input type="text"
														readonly="readonly" class="text" name="email" id="email"
														value="<c:out value="${ mem.email}"/>"></td>
													<td><label>휴대폰 번호</label><br> <input type="text"
														readonly="readonly" class="text" name="tel" id="tel"
														value="<c:out value="${ mem.tel}"/>" maxlength="13"
														oninput="addHyphen(this)"></td>

												</tr>
												<tr>
													<td><label>우편번호</label><br> <input type="text"
														readonly="readonly" style="width: 300px" class="text"
														name="zipcode" id="zipcode"
														value="<c:out value="${mem.zipcode }"/>"></td>
													<td><label>상세주소</label><br> <input type="text"
														readonly="readonly" style="width: 400px" class="text"
														name="addr" id="addr"
														value="<c:out value="${mem.addr }"/>"><br> <input
														type="text" readonly="readonly" class="text"
														style="width: 400px" name="detailAddr" id="detailAddr"
														value="<c:out value="${mem.detail_addr }"/>"></td>
												</tr>
												<tr>
													<td colspan="2" style="padding-top: 45px;"><label>자기소개</label><br>
														<div
															style="word-break: break-all; border: 1px solid #999; padding: 10px 10px 10px 10px; width: 750px; height: 150px; margin-top: 12px">
															<span><c:out value="${ mem.profile_msg}" /></span>

														</div></td>
												</tr>
											</tbody>
										</table>

									</div>
									<br><br>
									<p class="mbrBtnFunc" style="text-align: center">
										<input type="button" id="cancelBtn"
											class="btn btn-outline-danger" value="목록으로 돌아가기" onclick="location.href='member_board.do'"></p>
								</div>
										<!-- <input type="button" id="cancelBtn" onclick="location.href='http://localhost/prj2/project_admin/6.memberAdmin/member_manage.jsp'"><span>취소</span></span>
									</p>
								<!--폼태그 -->
							</form>

						</div><!--콘텐트  -->

					</div><!--컨테이너  -->


				</div><!--래퍼  -->
				<!-- <hr> -->
				<br>
			</div><!--컨테이너 플루이드  -->
		</div>





	</div>




	<!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
