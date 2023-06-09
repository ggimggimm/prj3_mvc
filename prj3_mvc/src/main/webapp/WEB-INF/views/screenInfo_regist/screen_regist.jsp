<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="관리자 - 상영정보등록"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@include file="../adminCheckLogin.jsp" %>
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
			
			
			.policy-table th, td {
				border: none;
			}
			
			a { text-decoration-line: none; }
			a:link { color : black; }
			a:visited { color : black; }
			a:hover { color : blue; } 
</style>
        
        
         <script type="text/javascript">
	        $(document).ready(function() {
	        	  $(".search").keyup(function () {
	        	    var searchTerm = $(".search").val();
	        	    var listItem = $('.results tbody').children('tr');
	        	    var searchSplit = searchTerm.replace(/ /g, "'):containsi('")
	        	    
	        	  $.extend($.expr[':'], {'containsi': function(elem, i, match, array){
	        	        return (elem.textContent || elem.innerText || '').toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
	        	    }
	        	  });
	        	    
	        	  $(".results tbody tr").not(":containsi('" + searchSplit + "')").each(function(e){
	        	    $(this).attr('visible','false');
	        	  });
	
	        	  $(".results tbody tr:containsi('" + searchSplit + "')").each(function(e){
	        	    $(this).attr('visible','true');
	        	  });
	
	        	  var jobCount = $('.results tbody tr[visible="true"]').length;
	        	    $('.counter').text(jobCount + ' 건의 검색결과');
	
	        	  if(jobCount == '0') {$('.no-result').show();}
	        	    else {$('.no-result').hide();}
	        			  });
	        	});
	        
	        $(function() {
	        	var screenV="y";
	        	$("#saveBtn").click(function() {
	        		$("#screen_state").val(screenV);
					
	        		$("#frm").submit();
				});//click
				
			});
        </script>
    </head>
   <body>
        <div class="d-flex" id="wrapper" >
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light"><img src="http://localhost/test_prj/admin/images/movie.png" style="width:60px; height:30px;"><font style="color:#E74C3C; font-weight: bold;">MOVIEPLANET</font></div>
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
            <div id="page-content-wrapper" >
                <!-- Top navigation-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <div class="container-fluid">
                        <button class="btn btn-primary" id="sidebarToggle"> &lt;&lt; </button>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                <li class="nav-item active"><a class="nav-link" href="http://localhost/test_prj/admin/index.html" style="color:red; font-weight:bold;">Home</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Page content-->
                <div class="container-fluid" >
                   <div class="header">
               <h2>상영정보 등록</h2>
               </div>
                    <!-- 검색바 시작 -->
                    
                    <!-- 검색바 끝 -->
               
               <!-- 테이블을 담은 div 시작 -->   
              

<div id="wrap" style="margin-left:200px;">

	<!--// Contents Area -->
	<div id="container">
	
	
		<div id="content">
			<h1 class="skip"><!-- 회원정보 수정 --></h1>
<!--폼태그 --><form action="screen_success.do" id="frm" name="frm" method="post">
			<input type="hidden" name="m_num" value="${movieInfo.m_num}"/>
				<div class="mbrSec mbrMngInfo" >
					<div class="mbrTplDesc">
						<p>상영정보를 등록할 수 있습니다.</p>
					</div>
<!-- <hr/> -->

					<div class="mbrTplData2">
					<br>
						<table summary="이 표는 회원정보 수정 입력폼입니다" style="margin-bottom:100px;">
		<!--skip  -->		<caption><span class="skip"><!-- 회원정보 수정 입력폼 --></span></caption>
				
							<tbody>
							<tr >
								<td><label>영화 제목</label><br>
								<input type="text" class="text" placeholder="영화 제목을 입력해주세요" name="m_title" id="m_title" readonly="readonly" value="${movieInfo.m_title}"></td>
								<td><label>영어 제목</label><br>
								<input type="text" class="text" placeholder="영어 제목을 입력해주세요" name="eng_title" id="eng_title" readonly="readonly" value="${movieInfo.eng_title}"></td>
							</tr>
							<tr>
								<td ><label>개봉일</label><br>
								<input type="date" class="text" placeholder="개봉일" name="release_date" id="release_date" readonly="readonly" value="${movieInfo.release_date}" maxlength="13" oninput="addHyphen(this)"></td>
													<td><label>등급</label><br> 
													<select name="rank" id="rank" class="text" disabled="disabled">
															<option value="">--Please choose an option--</option>
															<option value="12"${movieInfo.rank eq "12" ? 'selected' : ' ' }>12세</option>
															<option value="15"${movieInfo.rank eq "15" ? 'selected' : ' ' }>15세</option>
													</select> 
													</td>
												</tr>
							<tr>
								<td ><label>극장</label><br>
								<input type="text" class="text" placeholder="역삼점" name="theater" id="theater" value="${movieInfo.theater}"></td>
								<td ><label>상영시간</label><br>
								<input type="text" class="text" placeholder="상영시간" name="release_hour" id="release_hour" value="${movieInfo.release_hour}" maxlength="20" oninput="addHyphen(this)"></td>
							</tr>
							<tr>
								<td colspan="2"><label>상영날짜</label><br>
								<input type="date" class="text" placeholder="시작날짜" name="open_date" id="open_date" value="${movieInfo.open_date}" maxlength="13" oninput="addHyphen(this)">
								&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;
								<input type="date" class="text" placeholder="종료날짜" name="end_date" id="end_date" value="${movieInfo.end_date}" maxlength="13" oninput="addHyphen(this)"></td>
							</tr>
							</tbody>
						</table>
						<input type="hidden" name="screen_state" id="screen_state" value=""/>
						
						<p class="mbrBtnFunc" style="text-align:center">
					<input type="button" id="saveBtn" value="저장">
					<a href="movie_list.do"><input type="button" id="cancelBtn" value="취소"></a>
					<!-- <input type="button" id="cancelBtn" onclick="location.href='http://localhost/prj2/project_admin/6.memberAdmin/member_manage.jsp'"><span>취소</span></span>
 -->				</p>
<!--폼태그 -->	</form>
						
						
						</div>
						
					
						
<!-- 					<p style="clear:both;"></p>
 -->					
				</div>
				
				
		</div>
		<!-- <hr> -->
	<br>
	</div>
</div>
              
              
              
              
              
                </div>
                
               
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
