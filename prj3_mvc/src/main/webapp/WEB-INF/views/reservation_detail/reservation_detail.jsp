<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="관리자 - 예매 현황 view"
    %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        </Style>
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
        </script>
    </head>
    <body>
        <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light"><img src="http://localhost/prj3_mvc/images/movie.png" style="width:60px; height:30px;"><font style="color:#E74C3C; font-weight: bold;">MOVIEPLANET</font></div>
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
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <div class="container-fluid">
                        <button class="btn btn-primary" id="sidebarToggle">메뉴</button>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                <li class="nav-item active"><a class="nav-link" href="http://localhost/test_prj/admin/index.html" style="color:red; font-weight:bold;">Home</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Page content-->
                <div class="container-fluid">
                	<div style="background-color: #E74C3C;">
                    <h1>예매 현황</h1>
                    </div>
                    <!-- 검색바 시작 -->
                    <div class="form-group pull-right" style="width:150px"><!-- 검색바 너비 -->
				    <input type="text" class="search form-control" placeholder="영화명 검색">
					</div>
					<span class="counter pull-right"></span>
                    <!-- 검색바 끝 -->
					
					<!-- 테이블을 담은 div 시작 -->	
                    <div style="width:1600px; margin: 0px auto;"><!-- 테이블의 div너비 -->
                    <table class="table table-hover table-bordered results">
                    <!-- 테이블 각 행의 넓이 비율 설정 원하면 늘리거나 줄이면 됨-->
                    <colgroup>
					<col style="width:8%"> <!-- 번호 행 넓이 비율 3% -->
					<col style="width:20%"> <!-- 제목 행 넓이 비율 15% -->
					<col style="width:11%"> <!-- 극장 행 넓이 비율 6% -->
					<col style="width:11%"> <!-- 상영날짜 행 넓이 비율 6% -->
					<col style="width:11%"> <!-- 상영시간 행 넓이 비율 6% -->
					<col style="width:11%"> <!-- 예매율 행 넓이 비율 6% -->
					</colgroup>
                    <!-- 테이블 각 행의 넓이 비율 설정 끝 -->
					<thead style="text-align:center">
  						<tr>
  							<th scope="col" >번호</th>
  							<th scope="col" >제목</th>
  							<th scope="col" >극장</th>
  							<th scope="col" >상영날짜</th>
  							<th scope="col" >상영시간</th>
 							<th scope="col" >예매율</th>
						</tr>
						<tr class="warning no-result">
						      <td colspan="6" style="text-align:center"><i class="fa fa-warning"></i> 검색결과가 없습니다.</td>
						</tr>
					</thead>
					<tbody style="text-align:center">
						<c:forEach var="res" items="${ resDeatil }" varStatus="i">
							<tr>
								<td><c:out value="${ i.count }"/></td>
								<td><c:out value="${ res.m_title }"/></td>
								<td><c:out value="${ res.theater }"/></td>
								<td><c:out value="${ res.release_hour }"/></td>
								<td><c:out value="${ res.release_date }"/></td>
								<td><c:out value="${ res.r_rate }"/></td>
							</tr>
						</c:forEach>
					</tbody>
					
					</table>
           			</div>
					<!-- 테이블을 담은 div 끝 -->	
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
