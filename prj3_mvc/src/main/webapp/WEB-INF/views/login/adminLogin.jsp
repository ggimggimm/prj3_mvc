<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@include file="../checkLogin.jsp" %> 어드민 페이지에 추가--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<style type="text/css">
h1 {
	font-weight: normal;
	margin-bottom: 50px;
}

.wrap {
	min-height: 100vh;
	text-align: center;
}

.main {
	position: absolute;
  	left: 50%;
  	top: 40%;
  	transform: translate(-50%, -50%);
}

#admin_id {
	margin-bottom: 10px;
	width: 300px;
	height: 50px;
}

#password {
	margin-bottom: 20px;
	width: 300px;
	height: 50px;
}

#chk {
	margin-bottom: 20px;
}

#login {
	border: none;
	width: 220px;
	height: 35px;
	background-color: #3488dd;
	color: white;
}

#login:hover {
	cursor: pointer;
}
</style>

<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->

<script type="text/javascript">
$(function() {	
	
	
	$("#login").click(function() {
		
		
		var admin_id = $("#admin_id").val();
		
		if(admin_id=="") {
			alert("아이디를 입력해 주세요.");
			return;
		}//end if
		
		
		var password = $("#password").val();
		
		if(password=="") {
			alert("비밀번호를 입력해 주세요.");
			return;
		}//end if
		
		
		
		
		$.ajax({
			url:"adminLogin_process.do",
			method: "post",
			data:{admin_id : admin_id ,
				password : password },
			dataType:"json",
			success : function(response) {

				if(!response.success){ //조회 x
					alert(response.msg);
				 
					$("#password").val("");
					$("#password").focus();
					return;
				}//end if
				
					//로그인으로 이동하는 요청
					window.location.href = response.url;				
				
			},
			error : function(xhr){
				console.log(xhr.status+"/"+xhr.statusText);
				alert("로그인에 실패했습니다. 잠시 후 다시 시도해주세요.");
			}//end error
				
		});//ajax
		
	});// click
	
		
		
});// ready
</script>
</head>
<body>
<div class="wrap">
	<div class="main">
		<form action="adminLogin_process.do" method="post" name="frm" id="frm">
			<h1>admin</h1>
			<p>관리자 로그인 후 이용 가능합니다.</p>
			<input type="text" id="admin_id" name="admin_id" placeholder="아이디"/> <br/>
			<input type="password" id="password" name="password" placeholder="비밀번호"/> <br/>
			<input type="button" id="login" value="LOGIN"/>
		</form>
	</div>
</div>
</body>
</html>