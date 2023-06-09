<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
<title>${ movie.m_title } | MOVIEPLANET</title>
<link href="//m2.daumcdn.net/img-media/2010ci/Daum_favicon.ico" rel="shortcut icon">
<link rel="stylesheet" type="text/css" href="http://localhost/prj3_mvc/css/PcCommonCssBundle_merged.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

<script src="//t1.daumcdn.net/media/kraken/movie/386a1cd/common.merged.js"></script>
<script src="//t1.daumcdn.net/media/kraken/movie/386a1cd/PcCommonScriptBundle.merged.js"></script>
<script src="//t1.daumcdn.net/cssjs/movie/v2/amchart/amcharts.js"></script>
<script src="//t1.daumcdn.net/cssjs/movie/v2/amchart/serial.js"></script>
		<!-- 경태추가 -->
		<!-- bootstrap 시작-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <!-- bootstrap 끝-->
      	<!-- 경태추가 -->
      	
      <!-- jQuery CDN 시작 -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
      <!-- jQuery CDN 끝 -->

<style type="text/css">
/* 경태추가 */
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
/* 경태추가 */

.tooltip_info .link_tooltip {
    display: none;
    font-size: 16px;
    line-height: 27px;
    color: #98989C;
    text-decoration: none;
}

a{
  text-decoration:none; color:inherit; cursor: pointer;
}
 .right_area .icon{
    display: flex;
    align-items: center;
    justify-content: center;
    width: calc(100vw * (45 / 1920));
    height: calc(100vw * (45 / 1920));

    border-radius: 50%;
    border: solid 2px #eaeaea;
    background-color: #fff;
}

.icon.heart img{
    width: calc(100vw * (24 / 1920));
    height: calc(100vw * (24 / 1920));
}

.icon.heart.fas{
  color:red
}
.heart{
    transform-origin: center;
}
.heart.active img{
    animation: animateHeart .3s linear forwards;
}


/* 주요정보에 대한 스타일 */
.thumbnail{
	width: 115px;
	height: 167px;
	border-radius: 8px;
}

.test td{
	padding-right: 48px;
}

.test span{
	color : #666;
}

/* 주요정보에 대한 스타일 */

@keyframes animateHeart{
    0%{transform:scale(.2);}
    40%{transform:scale(1.2);}
    100%{transform:scale(1);}
  }
#likeBtn { float: left; margin-right: 20px; }
#ticketing { margin-top: 5px;}

/* 평점 css */
.rating svg{
	color:#ebebeb;
}

#gradeTextarea {
	width:600px; 
	height:60px;
	margin-right: 20px;
	margin-top: 10px;
	border: none;
}

#gradeListDiv {
	margin-right: 20px;
}

#declare {
	width:60px; 
	height:30px; 
	cursor: pointer; 
	cursor: pointer; 
	border-radius: 4px; 
	background-color: #D75E4D; 
	border: none;
	border-color: #D75E4D; 
	color: white; 
	font-size:11pt;
	font-family:굴림;
	font-weight:bolder;
	font-family: 'Noto Sans KR', sans-serif;
}

#tiecketingBtn {
	font-family: 'Noto Sans KR', sans-serif;
}

/* 최신순, 과거순 버튼 */
#choi, #gwa {
	border: none;
	background-color: white;
}

#choi {
	margin-right: 20px;
}
</style>

<script type="text/javascript">
/* 평점 삭제 알림창 */
$(function() {
    $(document).on("click", "#declare", function() {
        var confirmDelete = confirm("삭제하면 복구할 수 없습니다. 정말 삭제하시겠습니까?");
        if (confirmDelete) {
            // 삭제 동작 실행
            alert("삭제되었습니다.");
        }// end if
    });
});// ready

/* 최신순, 과거순 */
$(function(){	
	
	var queryString = window.location.search;
    var urlParams = new URLSearchParams(queryString);
	var m_num = urlParams.get('m_num');
	
	///////// 처음에 페이지가 로드 되면 조건 없이 실행
	$.ajax({
				url:"detail_info.do",
				method: "GET",
	            data: { m_num: m_num },
	            dataType: "json",
				error:function(xhr) {
					alert("문제발생");
					console.log(xhr.status);
				},
				success: function(jsonObj){
					
					 var output = "<div style='margin-bottom: 60px;'>" + jsonObj.summary + "</div>" +
			            "<h5 class='tit_section'>감독 / 출연진</h5>" +
			            "<hr style='background:#ECEDF1; height:1px; border:0;'>" +
			            "<table class='test'>";
					
			        //감독 + 배우 수
			        var count = 0;

			        // 감독부터 반복 및 카운트 시작!!!!!!!!!!
			        $.each(jsonObj.director, function(idx, ele) {
			        	
			        	// count값이 0부터 시작하므로 맨 처음과 count가 7의 배수가 될 때 마다, 7의 배수+1 번째 감독<td> '앞'에 <tr>을 붙여서 새로운 줄 시작
			            if (count % 7 === 0) {
			                output += "<tr>";
			            }//end if
						
			      	   // 감독<td> 하나씩 화면에 출력 
			            output += "<td>" +
			                "<img class='thumbnail' src='http://localhost/prj3_mvc/images/" + ele.d_img + "'><br>" +
			                "<strong>" + ele.d_name + "</strong><br>" +
			                "<span>감독</span><br/>&nbsp;" +
			                "</td>";
						
			            count++;
		
			            // count값이 1부터 시작, count가 7의 배수가 될 때 마다, 7의 배수 번째 감독<td> '뒤'에 </tr>을 붙여서 한 줄 끝
			            if (count % 7 == 0) {
			                output += "</tr>";
			            }//end if
			        });//end each

			        // 배우 반복 시작 (감독 다음 순서)!!!!!!!!!!!!
			        $.each(jsonObj.actor, function(idx, ele) {
			        	
			        	// 여기 count에는 위에서 반복시킨 감독td 횟수가 이미 포함 
			        	// count가 7의 배수가 될 때 마다, 7의 배수+1 번째 감독,+배우<td> '앞'에 <tr>을 붙여서 새로운 줄 시작
			            if (count % 7 == 0) {
			                output += "<tr>";
			            }//end if

			        	//배우<td> 하나씩 화면에 출력
			            output += "<td>" +
			                "<img class='thumbnail' src='http://localhost/prj3_mvc/images/" + ele.a_img + "'><br>" +
			                "<strong>" + ele.a_name + "</strong><br>" +
			                "<span>배우</span><br/>&nbsp;" +
			                "</td>";

			            count++;

			       		// count가 7의 배수가 될 때 마다, 7의 배수 번째 감독,배우<td> '뒤'에 </tr>을 붙여서 한 줄 끝
			            if (count % 7 == 0) {
			                output += "</tr>";
			            }//end if
			        });//end each
			        
			        output += "</table>";
			        
			        

			        $("#output").html(output);

				}
					
			});// ajax  
	
	
	///////////////////////////////////////////////// 주요정보 클릭 시//////////////////////////////
	 $("#mainInfo").click(function(){
			
			$.ajax({
				url:"detail_info.do",
				method: "GET",
	            data: { m_num: m_num },
	            dataType: "json",
				error:function(xhr) {
					alert("문제발생");
					console.log(xhr.status);
				},
				success: function(jsonObj){
					
					 var output = "<div style='margin-bottom: 60px;'>" + jsonObj.summary + "</div>" +
			            "<h5 class='tit_section'>감독 / 출연진</h5>" +
			            "<hr style='background:#ECEDF1; height:1px; border:0;'>" +
			            "<table class='test'>";
					
			        //감독 + 배우 수
			        var count = 0;

			        // 감독부터 반복 및 카운트 시작!!!!!!!!!!
			        $.each(jsonObj.director, function(idx, ele) {
			        	
			        	// count값이 0부터 시작하므로 맨 처음과 count가 7의 배수가 될 때 마다, 7의 배수+1 번째 감독<td> '앞'에 <tr>을 붙여서 새로운 줄 시작
			            if (count % 7 === 0) {
			                output += "<tr>";
			            }//end if
						
			      	   // 감독<td> 하나씩 화면에 출력 
			            output += "<td>" +
			                "<img class='thumbnail' src='http://localhost/prj3_mvc/images/" + ele.d_img + "'><br>" +
			                "<strong>" + ele.d_name + "</strong><br>" +
			                "<span>감독</span><br/>&nbsp;" +
			                "</td>";
						
			            count++;
		
			            // count값이 1부터 시작, count가 7의 배수가 될 때 마다, 7의 배수 번째 감독<td> '뒤'에 </tr>을 붙여서 한 줄 끝
			            if (count % 7 == 0) {
			                output += "</tr>";
			            }//end if
			        });//end each

					
			        // 배우 반복 시작 (감독 다음 순서)!!!!!!!!!!!!
			        $.each(jsonObj.actor, function(idx, ele) {
			        	
			        	// 여기 count에는 위에서 반복시킨 감독td 횟수가 이미 포함 
			        	// count가 7의 배수가 될 때 마다, 7의 배수+1 번째 감독,+배우<td> '앞'에 <tr>을 붙여서 새로운 줄 시작
			            if (count % 7 == 0) {
			                output += "<tr>";
			            }//end if

			        	//배우<td> 하나씩 화면에 출력
			            output += "<td>" +
			                "<img class='thumbnail' src='http://localhost/prj3_mvc/images/" + ele.a_img + "'><br>" +
			                "<strong>" + ele.a_name + "</strong><br>" +
			                "<span>배우</span><br/>&nbsp;" +
			                "</td>";

			            count++;

			       		// count가 7의 배수가 될 때 마다, 7의 배수 번째 감독,배우<td> '뒤'에 </tr>을 붙여서 한 줄 끝
			            if (count % 7 == 0) {
			                output += "</tr>";
			            }//end if
			        });//end each

			        output += "</table>";
			        
			        ////// 영화 사진
 					output += 
			            "<h5 class='tit_section'><br/><br/>갤러리</h5>" +
			            "<hr style='background:#ECEDF1; height:1px; border:0;'>" +
			            "<table class='test'>";
			        //영화 사진 수
			        var cntM = 0;

			        // 영화사진 수 반복 및 카운트 시작!!!!!!!!!!
			        $.each(jsonObj.movieImg, function(idx, ele) {
			        	
			        	// cntM값이 0부터 시작하므로 맨 처음과 cntM가 2의 배수가 될 때 마다, 2의 배수+1 번째 영화사진<td> '앞'에 <tr>을 붙여서 새로운 줄 시작
			            if (cntM % 2 == 0) {
			                output += "<tr>";
			            }//end if
						
			      	   // 영화사진<td> 하나씩 화면에 출력 
			            output += "<td>" +
			                "<img class='thumbnail' src='http://localhost/prj3_mvc/images/" + ele.m_img + "'><br/><br/><br/>" +
			                "</td>";
						
			            cntM++;
		
			            // cntM값이 1부터 시작, cntM가 2의 배수가 될 때 마다, 2의 배수 번째 영화사진<td> '뒤'에 </tr>을 붙여서 한 줄 끝
			            if (cntM % 2 == 0) {
			                output += "</tr>";
			            }//end if
			        });//end each
			        
			        output += "</table>";
			        
			        $("#output").html(output);

				}
					
			});// ajax  
	});// click 
	
////////////////////////////////////////  출연/제작   ////////////////////////////////////////////
     $("#produce").click(function() {
 			
 			$.ajax({
 				url:"produce_info.do",
 				method: "GET",
 	            data: { m_num: m_num },
 	            dataType: "json",
 				error:function(xhr) {
 					alert("문제발생");
 					console.log(xhr.status);
 				},
 				success: function(jsonObj){
 					
					 var output = 
			            "<br/><h5 class='tit_section'>감독</h5>" +
			            "<hr style='background:#ECEDF1; height:1px; border:0;'>" +
			            "<table class='test'>";
 					
			        //감독 수
			        var count = 0;

			        // 감독 반복 및 카운트 시작!!!!!!!!!!
			        $.each(jsonObj.director, function(idx, ele) {
			        	
			        	// count값이 0부터 시작하므로 맨 처음과 count가 7의 배수가 될 때 마다, 7의 배수+1 번째 감독<td> '앞'에 <tr>을 붙여서 새로운 줄 시작
			            if (count % 7 == 0) {
			                output += "<tr>";
			            }//end if
						
			      	   // 감독<td> 하나씩 화면에 출력 
			            output += "<td>" +
			                "<img class='thumbnail' src='http://localhost/prj3_mvc/images/" + ele.d_img + "'><br>" +
			                "<strong>" + ele.d_name + "</strong><br>" + ele.d_eng +
			                "</td>";
						
			            count++;
		
			            // count값이 1부터 시작, count가 7의 배수가 될 때 마다, 7의 배수 번째 감독<td> '뒤'에 </tr>을 붙여서 한 줄 끝
			            if (count % 7 == 0) {
			                output += "</tr>";
			            }//end if
			        });//end each
			        
			        //감독파트 배우파트 구분
			        output += "</table><br/><br/>"+
		          		  "<h5 class='tit_section'>출연진</h5>" +
		          		  "<hr style='background:#ECEDF1; height:1px; border:0;'>" +
		          		  "<table class='test'>";
			        
			        
			  	    //배우 수
			        var cnt = 0;
			        // 배우 반복 시작!!!!!!!!!!!!
			        $.each(jsonObj.actor, function(idx, ele) {
			        	
			        	// cnt값이 0부터 시작하므로 맨 처음과 count가 7의 배수가 될 때 마다, 7의 배수+1 번째 배우<td> '앞'에 <tr>을 붙여서 새로운 줄 시작
			            if (cnt % 7 == 0) {
			                output += "<tr>";
			            }//end if

			        	//배우<td> 하나씩 화면에 출력
			            output += "<td>" +
			                "<img class='thumbnail' src='http://localhost/prj3_mvc/images/" + ele.a_img + "'><br>" +
			                "<strong>" + ele.a_name + "</strong><br>" +
			                ele.a_eng + "<br/>" +
			                ele.role + "<br/>&nbsp;"+ 
			                "</td>";

			            cnt++;

			       		// count가 7의 배수가 될 때 마다, 7의 배수 번째 배우<td> '뒤'에 </tr>을 붙여서 한 줄 끝
			            if (cnt % 7 == 0) {
			                output += "</tr>";
			            }//end if
			        });//end each

			        output += "</table>";
			        
			        //제작진 
			        output += "<br/><br/><br/><h5 class='tit_section'>제작진</h5>" +
		            "<hr style='background:#ECEDF1; height:1px; border:0;'>" +
		            "<table class='test'>"+
		            
		            "<div class='detail_produceinfo'>"+
         			   "<dl class='list_produce'>"+
              			"<dt>원작</dt>"+
             		  	"<dd>"+ jsonObj.origin +"</dd>"+
        		      "</dl>"+
        			    "<dl class='list_produce'>"+
               				"<dt>각본</dt>"+
              			    "<dd>"+ jsonObj.script +"</dd>"+
         		 	   "</dl>"+
  				  "</div>"+
			        
  				  //영화사
  				  "<br/><br/><br/><h5 class='tit_section'>영화사</h5>" +
		            "<hr style='background:#ECEDF1; height:1px; border:0;'>" +
		            "<table class='test'>"+
		            
		            "<div class='detail_produceinfo'>"+
         			   "<dl class='list_produce'>"+
              			"<dt>제작</dt>"+
             		  	"<dd>"+ jsonObj.produce +"</dd>"+
        		      "</dl>"+
        			    "<dl class='list_produce'>"+
               				"<dt>배급</dt>"+
              		  	    "<dd>"+ jsonObj.ration +"</dd>"+
         		  	   "</dl>"+
         		  	"<dl class='list_produce'>"+
       					"<dt>수입</dt>"+
      		  	    "<dd>"+ jsonObj.imports +"</dd>"+
 		  	   "</dl>"+
  				  "</div>";
  				  
			        $("#output").html(output); 
 				}
 					
 			});// ajax  
 	});// click 
    
    
 //////////////////////////////// 평점 /////////////////////////////////////
     $("#grade").click(function() {
    	 grade();
    }); //click   
    
});//ready


//heart 좋아요 클릭시! 하트 뿅
 $(function() {
    var $likeBtn = $('.icon.heart');
    var m_num = ${movie.m_num};
	var id = $("#hiddenId").val();
    
    $likeBtn.click(function() {
        $likeBtn.toggleClass('active');
        var liked = $likeBtn.hasClass('active');
        
        if(!id) {
        	var confirmMsg = "로그인 후 기대되는 영화에 등록할 수 있습니다.\n로그인창으로 이동하시겠습니까?";
        	if (confirm(confirmMsg)) {
                location.href = "login.do";
            }// end if
        }else {
        
        	// Ajax 요청 보내기
        	$.ajax({
           		url: "add_like.do",
            	type: "get",
            	data: {
                	user_id: id,
                	m_num: m_num,
                	liked: liked
            	},
            	dataType: "json",
            	success: function(jsonObj) {
                	// db에서 할 일
                	if (!jsonObj.resultFlag) {
                    	if (liked) {
                        	$likeBtn.find('img').attr({
                            	'src': 'https://cdn-icons-png.flaticon.com/512/803/803087.png',
                            	alt: '찜하기 완료' // 빨간하트
                        });
                        alert("기대되는 영화에 등록되었습니다.")
                    } else {
                        $likeBtn.find('img').attr({
                            'src': 'https://cdn-icons-png.flaticon.com/512/812/812327.png',
                            alt: '찜하기' // 빈하트
                        });
                        alert("기대되는 영화에서 삭제되었습니다.")
                    }// end else
                }
            },
            error: function(xhr) {
                // 요청이 실패했을 때의 동작
                // 없음
                console.log(xhr.status);
                console.log(xhr.statusText);
                console.log(xhr.responseText);
            }
        });// ajax
     }
});
});

/* 경태 시작 */
function searchReview(){
			m_num = ${param.m_num};
			search = $("#search").val();
			search_type = $("#search_type").val();
			m_title = $("#m_title").val();
	
			$.ajax({
				url: "review_info.do",
				method: "get",
				data : { m_num: m_num,
				search: search,
				search_type: search_type},
				dataType: "json",
				
				error: function(xhr) {
				alert("이동 실패: " + xhr.statusText);
				},
				success: function(jsonObj) {
					
					var output = '<form action="review_info.do" id="searchFrm" name="searchFrm" method="get">' 
					+'<div class="contents" style="padding-top: 30px; ">'
					+'<div style="float: left; padding-right: 20px;">'
					+'<select class="form-select w-80" aria-label="Default select example" name="search_type" id="search_type">'
					+'<option selected value="0">전체</option>'
					+'<option value="1">제목</option>'
					+'<option value="2">글쓴이</option>'
					+'<option value="3">제목+글쓴이</option>'
					+'</select></div>'
					+'<div class="form-group pull-right" style="width:300px; float: left;  padding-bottom: 20px;">'
					+'<input type="text" class="search form-control" placeholder="리뷰 검색" id="search" name="search" >'
					+'<input type="hidden" name="m_num" value="2" />'
					+'</div>'
					+'<div style="float: left; width: 33%; padding-left:30px;">'
					+'<input type="button" value="검색" class="btn btn-outline-danger" id="subBtn" name="subBtn" onclick="searchReview()"/>'
					+'</div>'
					+'<div>'
					+'<a href="review_write.do?m_num='+m_num+'">'
					+'<input type="button" value="리뷰 작성하기" class="btn btn-outline-primary" id="" style="float: right;"/>'
					+'</a>'
					+'</div>'
					+'</div>'
					+'<span class="counter pull-right"></span>'
					+'</form>'
					+'<div style="width:1100px">'
					+'<table class="table table-hover table-bordered results"  style="text-align:center">'
					+'<colgroup>'
					+'<col style="width:3%">' 
					+'<col style="width:20%">'
					+'<col style="width:6%">' 
					+'<col style="width:9%">' 
					+'<col style="width:6%">' 
					+'<col style="width:6%">' 
					+'</colgroup>'
					+'<thead style="text-align:center">'
					+'<tr>'
					+'<th scope="col" >No.</th>'
					+'<th scope="col" >제목</th>'
					+'<th scope="col" >작성자</th>'
					+'<th scope="col" >작성일</th>'
					+'<th scope="col" >조회</th>'
					+'<th scope="col" >좋아요</th>'
					+'</tr>'
					+'</thead>'
					+'<tbody>'
					+'<form action="review_post.do" name="reviewFrm" id="reviewFrm" method="post">';
					if(jsonObj.reviewSize==0){
					output+='<tr><td colspan="6">해당영화에 대한 리뷰가 존재하지 않습니다.</td></tr>';
					}//end if
					$.each(jsonObj.review, function(idx, ele){
					var reviewCnt = idx + 1;
					output+='<tr>'
					+'<td scope="row">'+reviewCnt+'</td>'
					+'<td><a href="review_post.do?rv_num='+ele.rv_num+'&m_title='+m_title+'&m_num='+m_num+'">'+ele.title+'</a></td>'
					+'<td>'+ele.nick_name+'</td>'
					+'<td>'+ele.input_date+'</td>'
					+'<td>'+ele.hits+'</td>'
					+'<td>'+ele.like_total+'</td>'
					+'</tr>';
					});
					output+='</form>'
					+'</tbody>'				
					+'</table>'
					+'</div>';
					$("#output").html(output); 
		
			}//success
		});//ajax
}//searchReview
	
$(function(){	
        	
	/*  $(window).on('load', function() {
	    searchReview();
	}); */
	// 리뷰 클릭 시
	 $("#review").click(function() {
		
		searchReview();
		
    });//click
    
});//ready

/* 경태 끝 */
function gradeOld(){
		var m_num = ${movie.m_num};
		 var id = $("#hiddenId").val();
		 
	   $.ajax({
	       url: "gradeOld_info.do",
	       method: "GET",
	       data: { m_num: m_num },
	       dataType: "json",
			error:function(xhr) {
				alert("문제발생");
					console.log(xhr.status);
	       },
	       success: function(jsonObj) {
	       	var output = 
	       		"<div><div class='contents'>"
	      		 +"<div class='detail_cmtinfo' style='min-height: 450px;'>"
	      	 	 +"<strong class='tit_netizen'>네티즌 평점  <em class='num_rating'>"+ jsonObj.avgGrade +"점</em><span class='txt_netizen'> ("+jsonObj.cntGrade+"명)</span></strong>";
	      		 
	       	if(id!=""){
	      		 output+="<a href='mygrade.do' id='myLink' style='margin-left: 500px'>MY</a>"
	      		 +"<form action='insertGrade_info.do' method='get'>"
	      		 +"<input type='hidden' id='m_num' name='m_num' value='"+m_num+"'/>"
	      		 +"<select name='m_grade' size='1'>"
	      		 +"<option selected disabled>평점 등록</option>"
	      		 +"<option value='1'>★</option>"
	      		 +"<option value='2'>★★</option>"
	      		 +"<option value='3'>★★★</option>"
	      		 +"<option value='4'>★★★★</option>"
	      		 +"<option value='5'>★★★★★</option>"
	      		 +"</select>"		
	      		 +"<br/>"
	      		 +"<div style='height:140px'>"
	      		 +"<input type='text' name='comments' placeholder='영화 평점글을 작성해주세요.' style='width:600px; height:100px;'/>"
	      		 +"<br/>"
	      		 +"<input type='submit' value='등록' style='width:60px; height:27px; cursor: pointer;border-radius: 4px; margin-left: 543px; margin-top:3px;cursor: pointer;'/>"
	      		 +"</div>"
	      		 +"</form>";
	      		 +"<br/><br/>"
	      		 }//end if

	      		 
	      		 output += "<hr style='width:600px; margin-left: 0px'/>"
	       		 if(jsonObj.gradeSize==0){
					 	output+='해당영화에 대한 평점이 존재하지 않습니다.';
					 }//end if
	       		 
	       		 var gradeList = jsonObj.grade;
	       		 for (var i = 0; i < gradeList.length; i++) {
	                    var gradeObj = gradeList[i];
	                    output += "<div id='gradeListDiv' style='height:100px'>"
	                    +getStarRating(gradeObj.m_grade)
	                    +"<br/>"
	                    +"<textarea id='gradeTextarea' placeholder='여기는 다른사람이 작성한 한줄평.' readonly='readonly'>" +gradeObj.comments+ "</textarea></div>";
	                    
	                    if (id === gradeObj.user_id) {
	                   	    output += "<form action='delete_grade.do' method='post'>";
	                   	    output += "<input type='hidden' name='g_num' value='" + gradeObj.g_num + "'>";
	                   	    output += "<input type='hidden' name='user_id' value='" + gradeObj.user_id + "'>"; 
	                   	    output += "<input type='hidden' name='m_num' value='" + gradeObj.m_num + "'>";
	                   	    output += "<input type='submit' class='declare' id='declare' name='declare' value='삭제'>";
	                   	    output += "</form>";
	                    }
	                    output += "<br/>"
	       		 	 +"<em style='color: #396dc9; font-weight: bolder;'>" + gradeObj.nick_name + "</em> " + gradeObj.input_date 
	       		 	 +"<hr style='width:600px; margin-left: 0px'/>";
	       		 	 +"</div>";
	                    
	       		 }
	       		 output += "</div></div></div>";

	       		 // 별점 생성 함수
	       		 function getStarRating(grade) {
	       		     var stars = "";
	       		     for (var i = 0; i < grade; i++) {
	       		         stars += "★";
	       		     }
	       		     return "<em style='color: #e92130'>" + stars + "</em>";
	       		 }
	       		
	       		 $("#output").html(output); 
	       		 
	       }//function
	   });//ajax
		
}

</script>

<script>
function grade() {
	var m_num = ${movie.m_num};
	 var id = $("#hiddenId").val();
	 
   $.ajax({
       url: "grade_info.do",
       method: "GET",
       data: { m_num: m_num },
       dataType: "json",
		error:function(xhr) {
			alert("문제발생");
				console.log(xhr.status);
       },
       success: function(jsonObj) {
       	var output = 
       		"<div><div class='contents'>"
      		 +"<div class='detail_cmtinfo' style='min-height: 450px;'>"
      	 	 +"<strong class='tit_netizen'>네티즌 평점  <em class='num_rating'>"+ jsonObj.avgGrade +"점</em><span class='txt_netizen'> ("+jsonObj.cntGrade+"명)</span></strong>";
      		 
       	if(id!=""){
      		 output+="<a href='mygrade.do' id='myLink' style='margin-left: 500px'>MY</a>"
      		 +"<form action='insertGrade_info.do' method='get'>"
      		 +"<input type='hidden' id='m_num' name='m_num' value='"+m_num+"'/>"
      		 +"<select name='m_grade' size='1'>"
      		 +"<option selected disabled>평점 등록</option>"
      		 +"<option value='1'>★</option>"
      		 +"<option value='2'>★★</option>"
      		 +"<option value='3'>★★★</option>"
      		 +"<option value='4'>★★★★</option>"
      		 +"<option value='5'>★★★★★</option>"
      		 +"</select>"		
      		 +"<br/>"
      		 +"<div style='height:140px'>"
      		 +"<input type='text' name='comments' placeholder='영화 평점글을 작성해주세요.' style='width:600px; height:100px;'/>"
      		 +"<br/>"
      		 +"<input type='submit' value='등록' style='width:60px; height:27px; cursor: pointer;border-radius: 4px; margin-left: 543px; margin-top:3px;cursor: pointer;'/>"
      		 +"</div>"
      		 +"</form>";
      		 +"<br/><br/>"
      		 }//end if

      		 
      		 output += "<hr style='width:600px; margin-left: 0px'/>"
       		 if(jsonObj.gradeSize==0){
				 	output+='해당영화에 대한 평점이 존재하지 않습니다.';
				 }//end if
       		 
       		 var gradeList = jsonObj.grade;
       		 for (var i = 0; i < gradeList.length; i++) {
                    var gradeObj = gradeList[i];
                    output += "<div id='gradeListDiv' style='height:100px'>"
                    +getStarRating(gradeObj.m_grade)
                    +"<br/>"
                    +"<textarea id='gradeTextarea' placeholder='여기는 다른사람이 작성한 한줄평.' readonly='readonly'>" +gradeObj.comments+ "</textarea></div>";
                    
                    if (id === gradeObj.user_id) {
                   	    output += "<form action='delete_grade.do' method='post'>";
                   	    output += "<input type='hidden' name='g_num' value='" + gradeObj.g_num + "'>";
                   	    output += "<input type='hidden' name='user_id' value='" + gradeObj.user_id + "'>"; 
                   	    output += "<input type='hidden' name='m_num' value='" + gradeObj.m_num + "'>";
                   	    output += "<input type='submit' class='declare' id='declare' name='declare' value='삭제'>";
                   	    output += "</form>";
                    }
                    output += "<br/>"
       		 	 +"<em style='color: #396dc9; font-weight: bolder;'>" + gradeObj.nick_name + "</em> " + gradeObj.input_date 
       		 	 +"<hr style='width:600px; margin-left: 0px'/>";
       		 	 +"</div>";
                    
       		 }
       		 output += "</div></div></div>";

       		 // 별점 생성 함수
       		 function getStarRating(grade) {
       		     var stars = "";
       		     for (var i = 0; i < grade; i++) {
       		         stars += "★";
       		     }
       		     return "<em style='color: #e92130'>" + stars + "</em>";
       		 }
       		
       		 $("#output").html(output); 
       		 
       }//function
   });//ajax
	
}

$(function() {
	 $("#grade").click(function() {
		    $("#btns").css("display", ""); // display 스타일을 제거하여 요소를 보이게 함
	 });
	 $("#mainInfo").click(function() {
		    $("#btns").css("display", "none"); // display 스타일을 제거하여 요소를 보이게 함
	 });
	 $("#produce").click(function() {
		    $("#btns").css("display", "none"); // display 스타일을 제거하여 요소를 보이게 함
	 });
	 $("#review").click(function() {
		    $("#btns").css("display", "none"); // display 스타일을 제거하여 요소를 보이게 함
	 });
})

</script>

<!-- =================================공통부분 출력============================== -->
</head>

<body class=""> 
	<!-- 경태 -->
	 <input type="hidden" value="${ movie.m_title }" id="m_title"/>
	 <!-- 경태 -->
	<input type="hidden" id="hiddenId" value="${ lrDomain.user_id }"/>
    <div class="kakao_wrap detail_type"> 
		<header class="kakao_head search_on" data-tiara-layer="gnb"> 
    <div class="kakaohead_top">
        <div class="inner_head" data-tiara-layer="service">
                <a class="link_daum" data-tiara-layer="logo">
                <img src="http://localhost/prj3_mvc/images/movie_small.png" width="70" height="35" class="logo_daum" alt="Daum"></a>
		<c:choose>
				<c:when test="${ lrDomain.user_id == null }">
                	<a style="margin-left: 970px;" href="login.do"><span style="font-weight: bold;">Login</span></a>
				</c:when>			
				                
				<c:when test="${ lrDomain.user_id != null }">
	                <a style="margin-left: 970px;" href="frm/logout.do"><span style="font-weight: bold;">Logout</span></a>
				</c:when>			
			</c:choose>
        </div>
    </div>
    <div class="kakaohead_menu">
        <div class="inner_head">
            <nav id="gnbContent" class="gnb_movie">
                <h2 class="screen_out">영화 메인메뉴</h2>
                <ul data-tiara-layer="tab">
                    <li class="home ">
                        <a href="main_frm.do" class="link_gnb" data-tiara-layer="home">영화</a>
                    </li>
                    <li class="ranking ">
                        <a href="movie_reserve.do" class="link_gnb" data-tiara-layer="ranking">예매</a>
                    </li>
                </ul>
            </nav>
            
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
    <img src="images/${ movie.poster }"  style="border-radius: 15px; width: 210px; height: 308px;" />
    </div>
    <div class="info_detail">
        <div class="detail_tit">
            <h3 class="tit_movie">
                <span class="txt_tit">
                    ${ movie.m_title }
                </span>
            </h3>
                <div class="head_origin">
                    <span class="txt_name">${ movie.eng_title }</span>
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
                            <dd>${ movie.release_date }</dd>
                        </dl>
                    <dl class="list_cont">
                        <dt>장르</dt>
                        <dd>${ movie.genre }</dd>
                    </dl>
                    <dl class="list_cont">
                        <dt>국가</dt>
                        <dd>${ movie.country }</dd>
                    </dl>

            </div>
            <div class="inner_cont">
                    <dl class="list_cont">
                    	<dt>평점</dt>
                    	<dd><span class="ico_movie ico_star"></span>${ star }</dd>
                    </dl>
              		
                    <dl class="list_cont">
                    <dt>러닝타임</dt>
                    <dd>
                        ${ movie.run_time }분
                    </dd>
                    </dl>
                    <dl class="list_cont">
                        <dt>등급</dt>
                        <dd>
                            ${ movie.rank }세이상 관람가
                        </dd>
                        </dl>
            </div>
            
            
        </div>
            	<!------------------------------- 좋아요, 예메하기 버튼 추가 박진호 0507 -->
            		<!-- <input type="button" class="like" id="likeBtn" value="♥좋아요" style="width:80px; height:35px; cursor: pointer; border-radius: 10px" /> -->
            			<div id="likeBtn" class="right_area">
            		
            		<c:choose>
	            		<c:when test="${ likeStatus }">
	  						<a href="#" class="icon heart">
	    						<img src="https://cdn-icons-png.flaticon.com/512/803/803087.png" alt="찜하기"> 
	  						</a>
	  					</c:when>
	  					
	  					<c:otherwise>
	  						<a href="#" class="icon heart">
	    						<img src="https://cdn-icons-png.flaticon.com/512/812/812327.png" alt="찜하기"> 
	  						</a>
	  					</c:otherwise>
  					</c:choose>
  					
  					
					</div>
					<div id="ticketing">
            			<a href="movie_reserve.do"><input type="button" class="ticketing" id="ticketingBtn" value="예매하기" style="width:80px; height:35px; cursor: pointer; margin-left: 10px; border-radius: 10px; background-color: #E74C3C; border-color: #E74C3C; color: white; font-size:11pt;font-family:굴림;font-weight:bolder"/></a>
    				</div>
    </div>
</div>
		<!-- 상세하단 -->
        <div class="box_detailinfo">
            <!-- 탭메뉴 -->
<div class="tabmenu_wrap">
    <strong class="screen_out">영화제 탭메뉴</strong>
    <ul class="list_tabmenu" role="tablist" data-tiara-layer="tab">
        <li>
            <span class="txt_tabmenu" id="mainInfo" style="cursor: pointer">주요정보</span>
        </li>
        <li>
             <span class="txt_tabmenu" id="produce" style="cursor: pointer">출연/제작</span>
        </li>
        <li>
            <span class="txt_tabmenu" id="grade" style="cursor: pointer">평점</span>
        </li>
        <li>
            <span class="txt_tabmenu" id="review" style="cursor: pointer">리뷰</span>
        </li>
    </ul>
</div>            <div class="contents"></div>
        </div>
        <br/>
      	
         <div id="btns" style="display:none">
         	<input type="button" id="choi" value="최신순" onclick="grade()"/>&nbsp;
         	<input type="button" id="gwa" value="과거순" onclick="gradeOld()"/>
         </div>       
         <div id="output"><!-- --------------------  탭 클릭시 ajax로 화면 부분 전환시작 - 데이터 덮어쓰기 --------------------------------------------------------------->
   		 </div><!-- ------------------------------   탭 클릭시 ajax로 화면 부분 전환 끝  ---------------------------------------------------------------->
    
       <!-- ================================= 공통부분 출력 끝============================== -->
       
        </div>
</article>        
</main>
        <hr class="hide">
        </div>


</body>
</html>