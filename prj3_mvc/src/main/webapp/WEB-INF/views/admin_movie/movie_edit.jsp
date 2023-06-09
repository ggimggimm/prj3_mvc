<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="관리자 - 예매 등록"
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
        
        <style>
			
			.header { margin-bottom:25px; width: 100%; height: 100px; background-color: #e74c3c; }
			h2 { color: white; text-align: left; padding-top: 30px; padding-left: 50px; font-weight: bold; }
			
			textarea{
			font-size: 10px;
			width: 470px;
			height: 80px;
			}
        
			#moviengTitle{
			width:800px;
			margin-left: 200px;
			}
			
			#m_title{
			width: 200px;
			}
			
			#eng_title{
			width: 200px;
			margin-left: 60px;
			}
			
			#genreDiv,#runDiv,#countryDiv,#rateDiv,#originDiv,#scriptDiv, #produceDiv,#rationDiv,#importsDiv{
			float: left;
			width:265px;
			}
			
			#infoDiv{
			margin-top: 180px;
			}
			
			
			#dateDiv{
			float: left;
			width:265px;
			}
			
			
			label{
			font-size:20px;
			font-weight:bold;
			}
			
			#directDiv, [class^="directDiv"]{
			height: 320px;
			}
			
			#dNameDiv, .dNameDiv{
			float: left;
			margin-left: 80px;
			margin-top: 50px;
			}
			
			.dImgDiv{
			width:200; height:400;
			float:left;
			text-align: center;
			}
			
			#actorDiv, [class^="actorDiv"]{
			height: 340px;
			}
			
			#pDiv{
			margin-top:30px;
			height: 210px;
			}
			
			#actorNameDiv, .actorNameDiv{
			float: left;
			margin-left: 80px;
			margin-top: 60px;
			}
			
			.aImgDiv{
			width:200; height:400;
			float:left;
			text-align: center;
			margin-top: 20px;
			}
			
			#btnDiv{
			margin-left: 240px;
			margin-top: 50px;
			height: 80px;
			}
			
			#registBtn,#cancelBtn{
			width: 130px;
			}
			
			.imgDiv{
			width:200; height:400;
			float:right;
			text-align: center;
			}
			
			
			
			.imageBox,.dProfile, #profile,#dProfile,#aProfile, .aProfile{
				border:1px solid #333;
				width: 200px;
			    height: 250px;
			    background-repeat: no-repeat;
			    background-position: center;
			}
			
			.input-file-button, input-file-button dImgButton{
			  padding: 6px 20px;
			  background-color:#3a405d;
			  border-radius: 4px;
			  color: white;
			  cursor: pointer;
			  font-size: 15px;
			}
			
			.dImgButton{
			  padding: 6px 20px;
			  background-color:#3a405d;
			  border-radius: 4px;
			  color: white;
			  cursor: pointer;
			  font-size: 15px;
			}
			
			#poster,#d_img,#a_img, .dImgInput, .aImgInput {
				display: none;
			}
			
			.policy-table th, td {
				border: none;
			}
			
</style>
<script>
//포스터 사진 보이기
function img() {
	const imgUpload = document.getElementById("poster");
	const imgDiv = document.getElementById("profile");

	var blockFlag = false;
	
	//이미지 선택 버튼에서 파일을 선택하면 이벤트가 발생해 얘들아
	imgUpload.addEventListener('change', function() {
  	
		// 선택한 파일이 이미지 파일인지 확인합니다.
  		if (this.files && this.files[0] && this.files[0].type.match('image.*')) {
    		const reader = new FileReader();
	
    		// 파일을 읽어서 이미지를 가져옵니다.
    		reader.addEventListener('load', function(e) {
      			const image = new Image();
     			image.src = e.target.result;
      	
      			// 이미지 크기 조절
     			image.width = 200;
      			image.height = 250;

      			// 이미지를 표시할 div에 추가합니다. 
      			imgDiv.innerHTML = '';
      			imgDiv.appendChild(image);
    		});

    		reader.readAsDataURL(this.files[0]);
  		} else {
  			if (!blockFlag) {
  				blockFlag = true;
	  			alert("이미지 파일만 업로드 가능합니다. \n이미지를 선택해주세요.");
	  			blockFlag = false;
  			}
	  		return;
  		}// end else
	});
}// image

//감독 사진 보이기
function dimg() {
	const imgUpload = document.getElementById("d_img");
	const dImgDiv = document.getElementById("dProfile");

	var blockFlag = false;
	
	//이미지 선택 버튼에서 파일을 선택하면 이벤트가 발생해 얘들아
	imgUpload.addEventListener('change', function() {
  	
		// 선택한 파일이 이미지 파일인지 확인합니다.
  		if (this.files && this.files[0] && this.files[0].type.match('image.*')) {
    		const reader = new FileReader();
	
    		// 파일을 읽어서 이미지를 가져옵니다.
    		reader.addEventListener('load', function(e) {
      			const image = new Image();
     			image.src = e.target.result;
      	
      			// 이미지 크기 조절
     			image.width = 200;
      			image.height = 250;

      			// 이미지를 표시할 div에 추가합니다. 
      			dImgDiv.innerHTML = '';
      			dImgDiv.appendChild(image);
    		});

    		reader.readAsDataURL(this.files[0]);
  		} else {
  			if (!blockFlag) {
  				blockFlag = true;
	  			alert("이미지 파일만 업로드 가능합니다. \n이미지를 선택해주세요.");
	  			blockFlag = false;
  			}
	  		return;
  		}// end else
	});
}// image

//배우 사진 보이기
function aimg() {
	const imgUpload = document.getElementById("a_img");
	const aImgDiv = document.getElementById("aProfile");

	var blockFlag = false;
	
	//이미지 선택 버튼에서 파일을 선택하면 이벤트가 발생해 얘들아
	imgUpload.addEventListener('change', function() {
  	
		// 선택한 파일이 이미지 파일인지 확인합니다.
  		if (this.files && this.files[0] && this.files[0].type.match('image.*')) {
    		const reader = new FileReader();
	
    		// 파일을 읽어서 이미지를 가져옵니다.
    		reader.addEventListener('load', function(e) {
      			const image = new Image();
     			image.src = e.target.result;
      	
      			// 이미지 크기 조절
     			image.width = 200;
      			image.height = 250;

      			// 이미지를 표시할 div에 추가합니다. 
      			aImgDiv.innerHTML = '';
      			aImgDiv.appendChild(image);
    		});

    		reader.readAsDataURL(this.files[0]);
  		} else {
  			if (!blockFlag) {
  				blockFlag = true;
	  			alert("이미지 파일만 업로드 가능합니다. \n이미지를 선택해주세요.");
	  			blockFlag = false;
  			}
	  		return;
  		}// end else
	});
}// image

</script>        
<script type="text/javascript">

//감독정보 추가 삭제 버튼
$(function() {
	var counter = 0; // 고유한 식별자 카운터
	var counterA = 0; // 고유한 식별자 카운터
	 $("#dNamedAdd").click(function() {
		 counter++;
		 alert(counter);
	        var newDiv = $('<div class="directDiv"><div class="dImgDiv"><div class="dProfile"></div><br/><label class="input-file-button dImgButton" for="dImg">변경</label><input type="file" name="d_img'+counter+'" class="dImgInput"/></div><div class="dNameDiv"><label>감독명</label><br/><input style="width:200px;" type="text" name="d_name'+counter+'" class="d_name" value="" placeholder="한글명"/><br/><br/><input style="width:200px;" type="text" name="d_eng'+counter+'" class="dEng" value="" placeholder="영어명"/><input type="button" id="dNameDelete" value="삭제" class="btn btn-danger"/></div><br/></div>');

	        $("#directAddDiv").append(newDiv);

	        // 삭제
	        newDiv.find("#dNameDelete").click(function() {
	        	counter--;
	            $(this).closest(".directDiv").remove();
	        });

	        $("#fileLeng").val(counter);
	        
	        var imgUpload = newDiv.find(".dImgInput");
	        var dProfile = newDiv.find(".dProfile");

	        imgUpload.on("change", function() {
	            if (this.files && this.files[0] && this.files[0].type.match('image.*')) {
	                var reader = new FileReader();

	                reader.addEventListener('load', function(e) {
	                    var image = new Image();
	                    image.src = e.target.result;

	                    image.width = 200;
	                    image.height = 250;

	                    dProfile.html('');
	                    dProfile.append(image);
	                });

	                reader.readAsDataURL(this.files[0]);
	            } else {
	                alert("이미지 파일만 업로드 가능합니다. \n이미지를 선택해주세요.");
	                return;
	            }
	        });

	        newDiv.find(".dImgButton").click(function() {
	            imgUpload.click();
	        });
	    });
        		 
         //출연진정보 추가 삭제 버튼
         
        	$("#aNameAdd").click(function() {
        		counterA++;
		        var newDiv = $('<div class="actorDiv"><div class="aImgDiv"><div class="aProfile"></div><br/><label class="input-file-button aImgButton" for="aImg">변경</label><input type="file" name="a_img'+counterA+'" class="aImgInput"/></div><div class="actorNameDiv"><label>배우명</label><br/><input style="width:200px;" type="text" name="a_name'+counterA+'" class="a_name" value="" placeholder="한글명"/><input style="width:200px;" type="text" name="a_eng'+counterA+'" class="aEng" value="" placeholder="영어명"/><br/><br/><label>역할</label><br/><input style="width:200px;" type="text" name="role'+counterA+'" class="role" value="" placeholder="역할"/><input type="button" id="aNameDelete" value="삭제" class="btn btn-danger"/></div><br/></div>');
		
		        $("#actorAddDiv").append(newDiv);
		
		        newDiv.find("#aNameDelete").click(function() {
		        	counterA--;
		            $(this).closest(".actorDiv").remove();
		        });
		        $("#fileLengA").val(counterA);
		
		        var imgUpload = newDiv.find(".aImgInput");
		        var aProfile = newDiv.find(".aProfile");
		
		        imgUpload.on("change", function() {
		            if (this.files && this.files[0] && this.files[0].type.match('image.*')) {
		                var reader = new FileReader();
		
		                reader.addEventListener('load', function(e) {
		                    var image = new Image();
		                    image.src = e.target.result;
		
		                    image.width = 200;
		                    image.height = 250;
		
		                    aProfile.html('');
		                    aProfile.append(image);
		                });
		
		                reader.readAsDataURL(this.files[0]);
		            } else {
		                alert("이미지 파일만 업로드 가능합니다. \n이미지를 선택해주세요.");
		                return;
		            }
		        });
		
		        newDiv.find(".aImgButton").click(function() {
		            imgUpload.click();
		        });
		    });
			
			/* $("#registBtn").click(function() {
				$("#registFrm").submit();
			})  */
        	 
			
		});//ready
		
		// 감독 삭제
		function removeDirectDiv(index, directorNum) {
		    var directorURL = "movie_process2.do";
		    
		    alert("delete 눌림");
		    $(".directDiv" + index).remove();
		    
		    $.ajax({
		        url: directorURL,
		        type: "POST",
		        data: { d_num: directorNum },
		        success: function(response) {
		        	alert("삭제 완료");
		            // 요청이 성공적으로 처리되었을 때의 처리 로직
		            // 예: alert("삭제되었습니다.");
		            //     또는 필요한 작업 수행
		        },
		        error: function(xhr, status, error) {
		        	console.log(xhr.status);
	                console.log(xhr.statusText);
	                console.log(xhr.responseText);
		            // 요청이 실패했을 때의 처리 로직
		            // 예: alert("오류 발생: " + error);
		            //     또는 오류 처리 방법에 따라 작업 수행
		        }
		    });
		}
		
		// 배우 삭제
		function removeActorDiv(index, actorNum) {
		    var actorURL = "movie_process3.do";
		    
		    alert("delete 눌림");
		    $(".actorDiv" + index).remove();
		    
		    $.ajax({
		        url: actorURL,
		        type: "POST",
		        data: { a_num: actorNum },
		        success: function(response) {
		        	alert("삭제 완료");
		            // 요청이 성공적으로 처리되었을 때의 처리 로직
		            // 예: alert("삭제되었습니다.");
		            //     또는 필요한 작업 수행
		        },
		        error: function(xhr, status, error) {
		        	console.log(xhr.status);
	                console.log(xhr.statusText);
	                console.log(xhr.responseText);
		            // 요청이 실패했을 때의 처리 로직
		            // 예: alert("오류 발생: " + error);
		            //     또는 오류 처리 방법에 따라 작업 수행
		        }
		    });
		}
         
		$(function() {
			// 감독 삭제
			$("#dNameDelete").click(function() {
				removeDirectDiv(index, directorNum);
			})
			
			// 배우 삭제
			$("#aNameDelete").click(function() {
				removeActorDiv(index, actorNum);
			})			
			
			// 수정
			$("#registBtn").click(function() {
				var registURL = "movie_process.do"
				$("#registFrm").attr('action', registURL);
				$("#registFrm").submit();
			})
			
			$("#cancelBtn").click(function() {
				location.href="movie_list.do";
			});
			
			
		})
		
</script>
    </head>
   <body>
        <div class="d-flex" id="wrapper" >
            <!-- Sidebar-->
            <!-- 문제의심2 -->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light"><img src="http://localhost/test_prj/admin/images/movie.png" style="width:60px; height:30px;"><font style="color:#E74C3C; font-weight: bold;">MOVIEPLANET</font></div>
                <div class="list-group list-group-flush">
                  	<a class="list-group-item list-group-item-action list-group-item-light p-3" href="movie_regist.do">영화 등록</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="movie_list.do">영화 관리</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="movie_grade.do">영화 한줄평 관리</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="review_manage.do">영화 리뷰 현황판 관리</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="ticket_situaion.do">예매 현황</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="member_manage.do">회원 관리</a>
                </div>
            </div>
            <!-- Page content wrapper-->
            <!-- 문제의심 -->
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
                <div class="container-fluid">
                   <div class="header">
		               <h2><span>영화 수정</span></h2>
		           </div>
					   <span style="margin-left: 20px;">등록된 영화를 수정, 확인할 수 있습니다.</span><br/>
					   <hr/>
					   
					<div id="moviengTitle">
	               	 <form action="" method="post" id="registFrm" name="registFrm" enctype="multipart/form-data">
					 <!-- 영화제목 -->
						<div>
							<label>영화제목</label><br/>
							<input type="hidden" name="m_num" id="m_num" value="${ emd.m_num }"/>
							<input type="hidden" name="poster" id="poster" value="${ emd.poster }"/>	
							<input type="text" name="m_title" id="m_title" value="${ emd.m_title }" placeholder="한글 영화명"/>
							<input type="text" name="eng_title" id="eng_title" value="${ emd.eng_title }" placeholder="영어 영화명"/>
						</div>
						
							<div class="imgDiv">
							<h3 style="text-align: left;">포스터</h3>
								<div id="profile">
									<img src="images/${ emd.poster }" style="width: 200px; height: 250px;"/>
								</div>
								<br/>
								<label class="input-file-button" for="poster" onclick="img()">
		  							변경
								</label>
								<input type="file" name="poster" id="poster"/>	
								<input type="hidden" name="poster" id="poster" value="${ emd.poster }"/>				
							</div>
							
						<!-- 주요정보 -->
						<div id="mainInfo">
							<h3><span style="color:black;">주요정보</span></h3>
							<br/>
								<div id="genreDiv">
									<label>장르</label><br/>
									<input style="width:200px;" type="text" name="genre" id="genre" value="${ emd.genre }" placeholder="장르"/>
								</div>
								<div id="runDiv">
									<label>러닝타임</label><br/>
									<input style="width:200px;" type="text" name="run_time" id="run_time" value="${ emd.run_time }" placeholder="러닝타임"/>
								</div>
								<div id="dateDiv">
									<label>개봉일</label><br/>
									<input style="width:200px;" type="text" name="release_date" id="release_date" value="${ emd.release_date }" placeholder="개봉일"/>
								</div>
								<div id="rateDiv">
									<label>등급</label><br/>
									<input style="width:200px;" type="text" name="rank" id="rank" value="${ emd.rank }" placeholder="등급"/>
								</div>
								<div id="countryDiv">
									<label>국가</label><br/>
									<input style="width:200px;" type="text" name="country" id="country" value="${ emd.country }" placeholder="국가"/>
								</div><br/>
								<div id="infoDiv">
									<label>주요정보</label><br/>
									<textarea name="summary" id="summary" placeholder="줄거리내용">${ emd.summary }</textarea>
								</div>
						</div>
						<br/>
						
						<!-- 제작 -->
						<div id="pDiv">
							<h3><span style="color:black;">제작</span></h3>
							<br/>
									<div id="originDiv">
										<label>원작</label><br/>
										<input style="width:200px;" type="text" name="origin" id="origin" value="${ emd.origin }" placeholder="원작"/>
									</div>
									<div id="scriptDiv">
										<label>각본</label><br/>
										<input style="width:200px;" type="text" name="script" id="script" value="${ emd.script }" placeholder="각본"/>
									</div>
									<div id="produceDiv">
										<label>제작</label><br/>
										<input style="width:200px;" type="text" name="produce" id="produce" value="${ emd.produce }" placeholder="제작"/>
									</div>
									<br/>
									<div id="rationDiv">
										<label>배급</label><br/>
										<input style="width:200px;" type="text" name="ration" id="ration" value="${ emd.ration }" placeholder="제작"/>
									</div>
									<div id="importsDiv">
										<label>수입</label><br/>
										<input style="width:200px;" type="text" name="imports" id="imports" value="${ emd.imports }" placeholder="제작"/>
									</div>
						
						</div> 
						
						<!-- 감독정보 -->
						<c:forEach var="director" items="${ dList }" varStatus="i">
							<c:if test="${ i.index == 0 }">
							<div class ="directDiv${ i.index }">
								<div class="dImgDiv">
									<div id="dProfile">
										<img src="images/${ director.d_img }" style="width: 200px; height: 250px;"/>
									</div>
									<br/>
									<label class="input-file-button" for="d_img" onclick="dimg()">
			  							변경
									</label>
									<input type="file" name="d_img0" id="d_img"/>
									<input type="hidden" name="d_img0" id="d_img0" value="${ director.d_img }"/>							
								</div>
								
								<div id="dNameDiv">
									<label>감독명</label><br/>
									<input style="width:200px;" type="text" name="d_name0" id="d_name" value="${ director.d_name }" placeholder="한글명"/>
									<br/><br/>
									<input style="width:200px;" type="text" name="d_eng0" id="d_eng" value="${ director.d_eng }" placeholder="영어명"/>
									<input type="button" id="dNamedAdd" value="추가" class="btn btn-secondary"/>
									<input type="hidden" name="d_num" value="${ director.d_num }"/>
									<input type="button" id="dNameDelete" value="삭제" class="btn btn-danger" onclick="removeDirectDiv(${ i.index }, ${ director.d_num }); return false"/>
								</div><br/>
							</div>
							</c:if>
							<c:if test="${ i.index!=0 }">
								<div class ="directDiv${ i.index }">
								<div class="dImgDiv">
									<div id="dProfile">
										<img src="images/${ director.d_img }" style="width: 200px; height: 250px;"/>
									</div>
									<br/>
									<label class="input-file-button" for="d_img" onclick="dimg()">
			  							변경
									</label>
									<input type="file" name="d_img0" id="d_img"/>
									<input type="hidden" name="hd_img0" id="hd_img0" value="${ director.d_img }"/>							
								</div>
								<div id="dNameDiv">
									<label>감독명</label><br/>
									<input type="hidden" name="d_num" value="${ director.d_num }"/>
									<input style="width:200px;" type="text" name="d_name0" id="d_name" value="${ director.d_name }" placeholder="한글명"/>
									<br/><br/>
									<input style="width:200px;" type="text" name="d_eng0" id="d_eng" value="${ director.d_eng }" placeholder="영어명"/>
									<input type="button" id="dNameDelete" value="삭제" class="btn btn-danger" onclick="removeDirectDiv(${ i.index }, ${ director.d_num }); return false"/>
								</div><br/>
							</div>
							</c:if>
						</c:forEach>
						
							<div id="directAddDiv">
							</div>
						
						
						<!-- 출연진 -->
						<c:forEach var="actor" items="${ aList }" varStatus="i">
						<c:if test="${ i.index == 0 }">
						<div class="actorDiv${ i.index }">
							<div class="aImgDiv">
								<div id="aProfile">
									<img src="images/${ actor.a_img }" style="width: 200px; height: 250px;"/>
								</div>
								<br/>
								<label class="input-file-button" for="a_img" onclick="aimg()">
		  							변경
								</label>
								<input type="file" name="a_img0" id="a_img"/>	
								<input type="hidden" name="ha_img0" id="ha_img0" value="${ actor.a_img }"/>						
							</div>
							<div id="actorNameDiv">
								<label>배우명</label><br/>
								<input type="hidden" name="a_num" value="${ actor.a_num }"/>
								<input style="width:200px;" type="text" name="a_name0" id="a_name" value="${ actor.a_name }" placeholder="한글명"/>
								<input style="width:200px;" type="text" name="a_eng0" id="a_eng" value="${ actor.a_eng }" placeholder="영어명"/>
								<br/><br/>
								<label>역할</label><br/>
								<input style="width:200px;" type="text" name="role0" id="role" value="${ actor.role }" placeholder="역할"/>
								<input type="button" id="aNameAdd" value="추가" class="btn btn-secondary"/>
								<input type="button" id="aNameDelete" value="삭제" class="btn btn-danger" onclick="removeActorDiv(${ i.index }, ${ actor.a_num }); return false"/>
							</div><br/>
						</div>
						</c:if>
						
						<c:if test="${ i.index!=0 }">
						<div class="actorDiv${ i.index }">
							<div class="aImgDiv">
								<div id="aProfile">
									<img src="images/${ actor.a_img }" style="width: 200px; height: 250px;"/>
								</div>
								<br/>
								<label class="input-file-button" for="a_img" onclick="aimg()">
		  							변경
								</label>
								<input type="file" name="a_img0" id="a_img"/>
								<input type="hidden" name="ha_img0" id="ha_img0" value="${ actor.a_img }"/>	
															
							</div>
							<div id="actorNameDiv">
								<label>배우명</label><br/>
								<input type="hidden" name="a_num" value="${ actor.a_num }"/>
								<input style="width:200px;" type="text" name="a_name0" id="a_name" value="${ actor.a_name }" placeholder="한글명"/>
								<input style="width:200px;" type="text" name="a_eng0" id="a_eng" value="${ actor.a_eng }" placeholder="영어명"/>
								<br/><br/>
								<label>역할</label><br/>
								<input style="width:200px;" type="text" name="role0" id="role" value="${ actor.role }" placeholder="역할"/>
								<input type="button" id="aNameDelete" value="삭제" class="btn btn-danger" onclick="removeActorDiv(${ i.index }, ${ actor.a_num }); return false"/>
							</div><br/>
						</div>
						</c:if>
						</c:forEach>
						
							<div id="actorAddDiv">
							</div>
							
						<div id="btnDiv">
							<input type="button" value="수정" id="registBtn" name="registBtn" class="btn btn-secondary"/>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="button" value="취소" id="cancelBtn" name="cancelBtn" class="btn btn-danger"/>
							
						</div>
						<input type="hidden" name="fileLeng" id="fileLeng"/> 
						<input type="hidden" name="fileLengA" id="fileLengA"/> 
					</form>
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
