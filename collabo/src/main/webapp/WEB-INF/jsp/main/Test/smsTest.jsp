<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문자 인증 테스트입니다.</title>

	<script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>
	
</head>
<body>
	<form action = "/smsStart" name = "smsform">
		<table align = "center" border = "2">
			<tr>
				<th>전화번호</th>
				<td>
					<input type = "text" placeholder = "전화번호입력" id = "smsId" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" maxlength= "12" name = "phone" rewired>
				</td>
			</tr>
			<tr>
				<td align="center" colspan = "2">
					<input type = "button" value = "인증번호 받기" onclick = "smsfuc()">
				</td>
			</tr>
			<tr>		
				<td align = "center" colspan = "2" id = "smsUi" style = "display:none;">
					<input type= "text" maxlength = "6" size = "6" id = "smsNumber">
					<input type = "button" value = "인증하기" onclick = "smsConfirm()">
				</td>
			</tr>
		</table>		
	</form>
		
<script>
	function smsfuc(){
		var phone= $("#smsId").val();
		
		 if(!$("#smsId").val()){
			 alert('전화번호를 입력해주십시오.');
		 }
	
	
	
	
	// XMLHttpRequest 객체의 생성
	const xhr = new XMLHttpRequest();
	// 비동기 방식으로 Request를 오픈한다
	xhr.open('POST', '/smsStart', true);
	// 클라이언트가 서버로 전송할 데이터의 MIME-type 지정: json
	xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");

	xhr.onload = function (e) {
	  if (xhr.readyState === 4) {
	    if (xhr.status === 200) {
	    	debugger;
	    	var cuten = document.getElementById("smsUi");
    		cuten.style.display = "block";
	    	alert("전송되었습니다.");
	      console.log(xhr.responseText);
	    } else {
	    	alert("전송에 실패하였습니다. \n(문의 번호 : 1588-9999).");
	    	debugger;
	      console.error(xhr.statusText);
	    }
	  }
	};
	
	xhr.onerror = function (e) {
	  console.error(xhr.statusText);
	};
	
	const data = { phone : $("#smsId").val() };

		xhr.send(JSON.stringify(data));
	 }
	
	
	
	function smsConfirm(){
		
		if(!$("#smsNumber").val()){
			alert("값을 입력해주세요.");
		}
		
		
		// XMLHttpRequest 객체의 생성
		const xhr = new XMLHttpRequest();
		// 비동기 방식으로 Request를 오픈한다
		xhr.open('POST', '/smsconfirm', true);
		// 클라이언트가 서버로 전송할 데이터의 MIME-type 지정: json
		xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");

		xhr.onload = function (e) {
		  if (xhr.readyState === 4) {
		    if (xhr.status === 200) {
		    	debugger;
		    	
		    	var use = JSON.parse(xhr.responseText);
		    	console.log("use >> " + use);
		    	
		    	if(use.start){
		    		var cuten = document.getElementById("smsUi");
		    		cuten.style.display = "none";
		    		alert("인증 되었습니다.");	
		    	}else{
		    		alert("인증 실패하였습니다.");
		    	
		      console.log(xhr.responseText);
		    } 
		    	debugger;
		      console.error(xhr.statusText);
		    
		  }else{
			  alert('');
		  }
		}
	};
		
		xhr.onerror = function (e) {
		  console.error(xhr.statusText);
		};
		
		const data = { phone_number : $("#smsId").val()      ,                 
		 	   	   	   confirm      : $("#smsNumber").val() 
		 	 	 	 };
		xhr.send(JSON.stringify(data));
		}
		
		
		
		
		
		
		
	
	
	
</script>


		
		
</body>
</html>