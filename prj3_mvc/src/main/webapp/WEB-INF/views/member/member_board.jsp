<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="예매 현황 view"%>
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
        .editBtn, .regBtn {
	background-color: #e74c3c;
	color: white;
	border: none;
	border-radius: 5px;
	width: 50px;
	height: 30px;
}

.delBtn {
	background-color: #b7b7b7;
	color: white;
	border: none;
	border-radius: 5px;
	width: 50px;
	height: 30px;
}
        </style>
        
<script type="text/javascript">
    
//삭제 버튼 클릭 시     
function confirmDelete(user_id,row_num) {

    if (confirm(user_id + " 회원 정보를 정말로 삭제하시겠습니까?")) {
        // 서버로 삭제 요청을 보내는 로직 구현
        
        $.ajax({
            url: "member_delete.do",
            data: { user_id: user_id },
            dataType: "json",
            success: function(response) {
                if (response.success) {
                    alert(user_id + " 회원 정보 삭제에 성공했습니다.");
                
                    // 서버 응답이 성공인 경우, 화면에서 해당 레코드를 삭제
                    $('#rec_' + row_num).remove();
                    
                } else {
                    alert("회원 정보 삭제에 실패했습니다. 다시 시도해주세요.");
                }
            },
            error: function(xhr) {
                alert("문제가 발생했습니다. 잠시 후 다시 시도해주세요.");
                console.log(xhr.status);
            }
        });
    }//end if
}//confirmDelete







$(function(){
	
	//회원명으로 검색
	$("#searchBtn").click(function(){
		var name = $("#name").val();
		
		if(name!=""){
			alert(name);
			//alert("이름 입력은 필수입니다.");
			//return;
		
		var regex = /^[^\d]+$/; // 숫자가 아닌 문자만 허용하는 정규식

		  if (!regex.test(name)) {
		    alert("숫자는 입력할 수 없습니다. 회원 이름으로 검색해주세요.");
		    $("#name").val("");
		    $("#name").focus();
		    return false; // 얼리 리턴
		  }//end if
		
		}//end if
		  
		$("#frm").submit();
		
	});//click
	
	
});//ready      
        
        
        
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
                        <button class="btn btn-primary" id="sidebarToggle"> &lt;&lt; </button>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                <li class="nav-item active"><a class="nav-link" href="http://localhost/prj3_mvc/admin/index.html" style="color:red; font-weight:bold;">Home</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Page content-->
                <div class="container-fluid">
                   <div class="header">
               <h2>회원 관리</h2> 
               </div>
           <form id="frm" name="frm" action="member_board.do" method="get">
                  <!-- 검색바 시작 -->
                    <div style="float: left; padding-right: 20px;">
                    </div>
                    <div>
                    <div class="form-group pull-right" style="width:300px; float: left;  padding-bottom: 20px;"><!-- 검색바 너비 -->
                <input type="text" id="name" name="name" value="" class="search form-control" placeholder="회원명으로 검색">
                    </div>
                      <div style="float: left; width: 33%; padding-left:8px;">
                <input type="button" class="btn btn-outline-danger" value="검색" id="searchBtn"/>
                      </div>
                    </div>
               <span class="counter pull-right"></span>
                    <!-- 검색바 끝 -->
               
               <!-- 테이블을 담은 div 시작 -->   
                    <div style="width:1650px"><!-- 테이블의 div너비 -->
                    <table class="table table-hover table-bordered results">
                    <!-- 테이블 각 행의 넓이 비율 설정 원하면 늘리거나 줄이면 됨-->
                    <colgroup>
               <col style="width:20px"> <!-- 아이디 행 넓이 비율 3% -->
               <col style="width:180px"> <!-- 아이디 행 넓이 비율 3% -->
               <col style="width:200px"> <!-- 아이디 행 넓이 비율 3% -->
               <col style="width:200px"> <!-- 아이디 행 넓이 비율 3% -->
               <col style="width:300px"> <!-- 아이디 행 넓이 비율 3% -->
               <col style="width:200px"> <!-- 아이디 행 넓이 비율 3% -->
               <col style="width:300px"> <!-- 아이디 행 넓이 비율 3% -->
               <col style="width:250px"> <!-- 아이디 행 넓이 비율 3% -->
               </colgroup>
                    <!-- 테이블 각 행의 넓이 비율 설정 끝 -->
               <thead style="text-align:center">
                    <tr>
                       <th scope="col" ></th>
                       <th scope="col" >아이디</th>
                       <th scope="col" >이름</th>
                       <th scope="col" >생년월일</th>
                       <th scope="col" >주소</th>
                       <th scope="col" >연락처</th>
                      <th scope="col" >가입일</th>
                      <th scope="col" >열람/삭제</th>
                  </tr>
                 <!--  <tr class="warning no-result">
                        <td colspan="7" style="text-align:center"><i class="fa fa-warning"></i> 검색결과가 없습니다.</td>
                  </tr> -->
               </thead>
               <tbody style="text-align:center">
               
               <c:if test="${empty memList}">
               		<tr><td colspan="8">조회 결과 없음</td></tr>
               </c:if>
               <c:forEach items="${memList }" var="mem" varStatus="i">
                  <tr class="record" id="rec_${i.count}">
                     <td><c:out value="${i.count}"/></td>
                     <td><c:out value="${mem.user_id}"/></td>
                     <td><c:out value="${mem.name}"/></td>
                     <td><c:out value="${mem.birth_date}"/></td>
                     <td><c:out value="${mem.addr}"/></td>
                     <td><c:out value="${mem.tel}"/></td>
                     <td><c:out value="${mem.reg_date}"/></td>
                     <td><a href="member_info.do?user_id=${mem.user_id}"><input type="button" value="열람" class="editBtn"></a> / 
                     <input type="button" value="삭제" class="delBtn" id="del_${i.count}" onclick="confirmDelete('${mem.user_id}',${i.count})"></td>
                  </tr>
                </c:forEach>
                 
               </tbody>
               
               </table>
                    </div>
               <!-- 테이블을 담은 div 끝 -->   
               </form>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
