<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 시연 페이지</title>

<link rel="stylesheet" type="text/css" href="/resources/css/hotplace/login.css">

</head>
<body style = "background-image: url('/resources/images/Positive.jpg');">

	<body bgcolor = "#ff7f00">
		<form name = "loginform" action = "loginLogic" method="post">
			<div align = "center" style = "color: #00FFFF ;"	>
				<caption><h1 style = "color: #550b9c;">로그인페이지</h1></caption>
			</div>
		<table align = "middle">
			<div class="login">
		    	<input type="text" placeholder="email 입력" id="email" name="email">  
		 	    <input type="password" placeholder="password 입력" id="password" name="password">  
		 			 <a href="#" class="forgot">사랑합니다 고객님</a>
		 	 	<input type="button" value="로그인" onclick = "login()">
		 	 	<input type = "button" value = "회원가입" onclick = "alert('회원가입기능을 이용해주세요.')"> <!-- location.href = '/joinView' -->
		 		<input type = "button" value = "메인으로" onclick = "location.href = '/divide'">
			</div>		
			<div class="shadow"></div>
		</table>
	</form>
	<div align = "center">
	<table>
		<tr>
			<th>제공 ID : </th>
			<td>123@naver.com</td>
		</tr>
		<tr>
			<th>password : </th>
		 	<td>123</td>
		 </tr>
		</table>
	</div>
</body>

	<script>
			
			
						
		
		function login(){
			
			var email = document.getElementById('email').value;
			var pw = document.getElementById('password').value;
			
			//var email = $( '#email' ).val();
			
			if(email == '123@naver.com' && pw == '123'){
				alert("로그인 성공하였습니다!");
				//location.href = "/divide?param="+'login';	 로그인창의 입력값을 초기화 해주기위해
			}else{
				alert("아이디 혹은 비밀번호를 틀렸습니다.");
				//location.href = "/divide?param="+'login';	 로그인창의 입력값을 초기화 해주기위해
			}			
		}
	
	</script>





</html>