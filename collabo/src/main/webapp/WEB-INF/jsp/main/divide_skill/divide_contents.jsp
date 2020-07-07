<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="collabo.wato.springboot.web.divideskill.vo.DivideVO" %>
<!DOCTYPE html>
<html>
<head>
<%
	// 회원번호
	DivideVO vo = (DivideVO) request.getAttribute("vo");
   	String cs_func_id = vo.getCs_func_id();
 	System.out.println("JSP IN [cs_func_id] : " + cs_func_id);
    
 	// 회원번호를 쿠키에 지정한다
    Cookie c = new Cookie("cs_func_id", cs_func_id) ;
    // 쿠키에 설명을 추가한다
    c.setComment("컨텐츠번호") ;
    // 쿠키 유효기간을 설정한다. 초단위 : 60*60*24= 1일
    c.setMaxAge(60*60*24);
    // 응답헤더에 쿠키를 추가한다.
    response.addCookie(c);
%>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Skill View</title>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<!-- Detail Scripts -->
	<script src="${contextPath}/resources/js/divide_detail.js"></script>
	
	<link rel="stylesheet" href="${contextPath}/resources/css/divide/divide_detail.css">
	<link rel="stylesheet" href="/resources/css/fontawesome/all.css">

	<!-- 코드미러 -->
	<link rel="stylesheet" href="${contextPath}/resources/js/CodeMirror-master/lib/codemirror.css">
	<link rel="stylesheet" href="${contextPath}/resources/js/CodeMirror-master/theme/seti.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.35.0/codemirror.js"></script>
	<script src="https://codemirror.net/mode/javascript/javascript.js"></script>
	<script src="//cdn.jsdelivr.net/codemirror/3.21.0/mode/xml/xml.js" type="text/javascript"></script>
	<script src="//cdn.jsdelivr.net/codemirror/3.21.0/mode/htmlmixed/htmlmixed.js" type="text/javascript"></script>
	<script src="//cdn.jsdelivr.net/codemirror/3.21.0/mode/css/css.js" type="text/javascript"></script>

	<!-- Editor css -->
	<link rel="stylesheet" href="/resources/css/divide/divide_Editor.css">
	
	<style>
	.iframeBox{
		width: 900px;
	    height: 700px;
	}
	</style>

</head>
<body>
				
	<div class="l-site">
	  <div class="l-nav">
	    <nav class="nav">
	      <ul>
	        <li class="nav-secondary"><a href="/divide">Home</a></li>        
	        <c:if test = "${sessionScope.loginVo.nickname == null}">
	        	<li class="nav-secondary"><a href="/divide/login">Login</a></li>
	        	<li class="nav-secondary"><a href="/joinView">회원가입</a></li>
	        </c:if>
	        <c:if test = "${sessionScope.loginVo.nickname != null}">
	        	<li class="nav-secondary"><a href="#"><i class="far fa-user"></i> ${sessionScope.loginVo.nickname}님!</a></li>
	        	<li class="nav-secondary"><a href="/mypage">MyPage</a></li>
	        	<li class="nav-secondary"><a href="/likelist?nickname=${sessionScope.loginVo.nickname}">LIKE list</a></li>
	        	<li class="nav-secondary"><a href="/unlook?nickname=${sessionScope.loginVo.nickname}" style="font-size: 15px; " ><i class="fas fa-unlock-alt"></i>&nbsp;Unlock stop</a></li>
	        	<li class="nav-secondary"><a onclick = "logout()" style = "cursor: pointer; font-size: 15px;"><i class="fas fa-sign-out-alt"></i> LogOut</a></li>
	        </c:if>	 
	        <li class="nav-secondary"><a style ="cursor: pointer;" href="/history"><i class="far fa-comments"></i> history</a></li>    
	        <li class="nav-secondary"><a style ="cursor: pointer;" href="/community?nickname=${loginVo.nickname}"><i class="far fa-comments"></i> 커뮤니티</a></li>
	        <li class="nav-secondary"><a style ="cursor: pointer;" href="${contextPath}/divide/insert">Divide insert</a></li>
	        <li class="nav-secondary"><a href="#">People</a></li>
	        <li class="nav-primary"><a href="${contextPath}/divide/detail">Skill</a></li>
	        <li class="nav-secondary"><a href="#">Portfolio</a></li>
	        <li class="nav-secondary"><a href="#">Jobs</a></li>
	      </ul>
	    </nav>
	  </div>
	  <div class="l-page">
	    <div class="menu">
	      <div class="menu-hamburger"></div>
	    </div>
	    <section class="band band-a">
	      <div class="band-container">
	        <div class="band-inner">
	          <h1>${vo.title }</h1>
	          <p>${vo.detail }</p>
	        </div>
	      </div>
	    </section>
	    <section class="band band-b">
	      <div class="band-container">
	        <div class="band-inner">
	          <h1>Play !</h1>
<!-- 	          <p><iframe id="player" type="text/html" width="640" height="360"  src="http://www.youtube.com/embed/M7lc1UVf-VE?enablejsapi=1&origin=http://example.com"  frameborder="0"></iframe></p> -->
	          <c:if test = "${vo.own == 'Y'}">
	         	 <p>
					<iframe id="viewer_iframe" name="CodePen" class = "iframeBox"allowfullscreen="true" sandbox="allow-forms allow-modals allow-pointer-lock allow-popups allow-presentation allow-same-origin allow-scripts allow-top-navigation-by-user-activation" allow="accelerometer; ambient-light-sensor; camera; encrypted-media; geolocation; gyroscope; microphone; midi; payment; vr" allowtransparency="true" allowpaymentrequest="true">
					</iframe>
				</P>	
	          </c:if>
	          <c:if test = "${vo.own == 'N'}">
	          	 <p><iframe id="player" type="text/html" width="640" height="360"  src="${vo.url }"  frameborder="0"></iframe></p>
			  </c:if>	        
	        </div>
	      </div>
	    </section>
	    <section class="band band-c">
	      <div class="band-container">
	        <div class="band-inner">
	          <h1>Comment !</h1>
	          <div class="utteranc_div">
	          	<script src="https://utteranc.es/client.js"
			        repo="qkrjg0909/codingstreet"
			        issue-term="url"
			        label="codingstreet"
			        theme="preferred-color-scheme"
			        crossorigin="anonymous"
			        async>
				</script>
<!--  	          	 issue-term="pathname" -->
	          </div>	
	        </div>
	      </div>
	    </section>
	  </div>
	</div>
	
	<main class="codepen" style = "display:none;">
			<a onclick = "arrow('htmlArrow')" id = "htmlArrow" style = "display:none;"><i class="fas fa-arrow-alt-circle-right"></i></a>
		<section id="html" style = "display:block;">
			<h2>HTML  <a onclick = "arrow('htmlArrow')"><i class="fas fa-arrow-alt-circle-left"></i></a></h2>
			<div class="code">
				<textarea id='editor'>${editor.cs_html}</textarea>
				<%-- <input type="hidden" name="cs_func_id" value = "${editorList.cs_func_id}"/> --%>
			</div>
		</section>
			<a onclick = "arrow('cssArrow')" id = "cssArrow" style = "display:none;"><i class="fas fa-arrow-alt-circle-right"></i></a> 
		<section id="css" style = "display:block;">
			<h2>CSS   <a onclick = "arrow('cssArrow')"><i class="fas fa-arrow-alt-circle-left"></i></a> </h2>
			<div class="code">					  
				<textarea id='editor2'>${editor.cs_css}</textarea>
			</div>
		</section>
			<a onclick = "arrow('jsArrow')" id = "jsArrow" style = "display:none;"><i class="fas fa-arrow-alt-circle-right"></i></a> 
		<section id="js" style = "display:block;">
			<h2>JS  <a onclick = "arrow('jsArrow')"><i class="fas fa-arrow-alt-circle-left"></i></a></h2>
			<div class="code">
				<textarea id='editor3'>${editor.cs_js}</textarea>
			</div>
		</section>	
  					
	</main>
	
	
	
</body>

	<script type = "text/javascript">
	
	function logout(){
		
		var logout = confirm("로그아웃 하시겠습니까?");
		
		if(logout){
			location.href = "/logout";
		}
	}
	
	// 에디터정보들을 셋팅
	
	$(document).ready(function() {
		console.log('Are U Ready?');
		//최초 실행
		init();
		//이벤트 부착
		attachEventListener();
		
		//셋팅
		setting();
	});
		
		
	function attachEventListener(){
		console.log('I AM READY ');
		
		editor.on("change", function (cm_editor, info){
			console.log('I AM Editor ABOUT HTML');
			var jsx = editor.getValue();
	        $("#viewer_iframe").contents().find("#chalfunction").remove();
			var s = $("#viewer_iframe").contents()[0].createElement('script');
			s.setAttribute("id", "chalfunction");
			//JS Editor 값을 셋팅
			s.text = editor3.getValue();
			jsx += s.outerHTML;
			console.log(jsx);
// 			$("#viewer_iframe").contents()[0].open();
			if($("#viewer_iframe").contents()[0].body){
				$("#viewer_iframe").contents()[0].body.innerHTML = '';
			}else{
				jsx = '<body>' + jsx + '</body>';
			}
	        $("#viewer_iframe").contents()[0].write(jsx);
	        $("#viewer_iframe").contents()[0].close();
	    });
		
		editor2.on("change", function (cm_editor, info){
			console.log('I AM Editor ABOUT CSS');
			var jsx = editor2.getValue();
			console.log("jsx : " + jsx)
			var s = document.createElement('style');
			s.setAttribute("id", "style");
			s.textContent = jsx;//inne
 	        $("#viewer_iframe").contents().find("head").html(s);
 	        CodeMirror.signal(editor, "change");
	    });
		
		
		editor3.on("change", function (cm_editor, info){
			console.clear();
			console.log('I AM Editor ABOUT JAVASCRIPT');
			$("#viewer_iframe").contents().find("#chalfunction").remove();
			var jsx = editor3.getValue();
			var s = $("#viewer_iframe").contents()[0].createElement('script');
			s.setAttribute("id", "chalfunction");
			//JS Editor 값을 셋팅
			s.textContent = jsx;//inne
			var htmlValue = editor.getValue();
			if($("#viewer_iframe").contents()[0].body){
				$("#viewer_iframe").contents()[0].body.innerHTML = '';
			}else{
				htmlValue = '<body>' + htmlValue + '</body>';
			}
			
			htmlValue += s.outerHTML;
			
			$("#viewer_iframe").contents()[0].write(htmlValue);
		    $("#viewer_iframe").contents()[0].close();
		    
	    });
		
	}
	
	var editor;
	var editor2;
	var editor3;
	function init(){
		//에디터 그리기
		editor = CodeMirror.fromTextArea(document.getElementById('editor'), {
		    mode: "text/html",
		    lineNumbers: true,
		    theme: "seti",
		});
		 editor2 = CodeMirror.fromTextArea(document.getElementById('editor2'), {
		    mode: "text/css",
		    lineNumbers: true,
		    theme: "seti",
		});
		editor3 = CodeMirror.fromTextArea(document.getElementById('editor3'), {
		    mode: "text/javascript",
		    lineNumbers: true,
		    theme: "seti",
		});
	 		
		editor.save();
		editor2.save();
		editor3.save(); 
	}
	
	function setting(){
		if('${editor.cs_func_id}'){
			CodeMirror.signal(editor, "change");
			CodeMirror.signal(editor2, "change");
		}
	}
	
	function upsertCode(){
		var data = {
                cs_html   : editor.getValue()
               ,cs_css    : editor2.getValue()
               ,cs_js     : editor3.getValue()
               ,cs_func_id: $("[name=cs_func_id]").val()
           } 

		$.ajax({
		   type : 'POST',
		   url : '/divide/upsertDivideMirror',
		   data : data,
		   error : function(error) {
		       alert("Error!");
		   },
		   success : function(data) {
		       alert("수정완료하였습니다.");
		       location.href = "/mypage";
		   },
		   complete : function() {
		       //alert("complete!"); 
		   }
		});
	}
	// 에디터 열고닫고 하는기능
	function arrow(Arrow){
									
		if(Arrow == "htmlArrow"){
			
			if(document.getElementById('html').style.display == "block"){
				document.getElementById('html').style.display = "none";				
				document.getElementById('htmlArrow').style.display = "block";	
				
			}else if(document.getElementById('html').style.display == "none"){
				
				document.getElementById('html').style.display = "block";
				document.getElementById('htmlArrow').style.display = "none";
			}
			
		}else if(Arrow == "cssArrow"){
			
			if(document.getElementById('css').style.display == "block"){
				document.getElementById('css').style.display = "none";				
				document.getElementById('cssArrow').style.display = "block";	
				
			}else if(document.getElementById('css').style.display == "none"){
				
				document.getElementById('css').style.display = "block";
				document.getElementById('cssArrow').style.display = "none";
			}
					
		}else{
			
			if(document.getElementById('js').style.display == "block"){
				document.getElementById('js').style.display = "none";				
				document.getElementById('jsArrow').style.display = "block";	
				
			}else if(document.getElementById('js').style.display == "none"){
				
				document.getElementById('js').style.display = "block";
				document.getElementById('jsArrow').style.display = "none";
			}							
		} 
	}	

	</script>



</html>