<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<!-- Detail Scripts -->
<script src="${contextPath}/resources/js/divide_detail.js"></script>

<link rel="stylesheet" href="${contextPath}/resources/css/divide/divide_detail.css">

<!-- font Awesome -->
<link rel="stylesheet" href="/resources/css/divide/divideMain.css">

<style>
	 .divideBoby{
			background-image: url('/resources/images/Positive.jpg');
			
	}
 
 	.skill_menu{
 		background-color: antiquewhite;
 		text-align: center;
 	}
</style>

</head>
<body>

	<div class="l-site">
	  <div class="l-nav">
	    <nav class="nav">
	      <ul>
	        <li class="nav-primary"><a href="#">Home</a></li>
	        <li class="nav-secondary"><a href="#">People</a></li>
	        <li class="nav-secondary"><a href="${contextPath}/divide/detail">Skill</a></li>
	        <li class="nav-secondary"><a href="#">Portfolio</a></li>
	        <li class="nav-secondary"><a href="#">Jobs</a></li>
	        
	      </ul>
	    </nav>
	  </div>
	  <div class="l-page">
	    <div class="menu">
	      <div class="menu-hamburger"></div>
	    </div>
	    <section class="band band-a divideBoby">
	      <div class="band-container">
	        <div class="band-inner">
	          
	          <div class="">
	          	<div class="container">
				    <header>
				        <h1 align = "center">
				           	기능 모음집
				        </h1>
				    </header>
					<div>
					<ul class="swatch-list">
						<li class="swatch">
							<div class="swatch-color color-ruby"><a onclick = "letgo('login')"><img src = "/resources/images/divide/Login.PNG" style = "width: 200px; cursor: pointer;"></a></div>
							<div class="skill_menu">
								<p style = "height:35px;">로그인기능<br>Mr.Young Gyu</p>				
							</div>
						</li>
						<li class="swatch">
							<div class="swatch-color color-grapefruit"><a onclick = "alert('서비스 준비중입니다.')"><img src = "/resources/images/divide/JOIN.PNG" style = "width: 200px; height:182px; cursor: pointer;"></a></div>
							<div class="skill_menu">		
								<p style = "height:35px;">회원가입 기능<br>Mr.Young Gyu</p>
								
							</div>
						</li>
						<li class="swatch">
							<div class="swatch-color color-bittersweet">
								<iframe id="player" type="text/html" width="100%" height="100%" 
								 src="http://www.youtube.com/embed/M7lc1UVf-VE?enablejsapi=1&origin=http://example.com"  frameborder="0"
								 allowfullscreen="allowfullscreen"
				        		 mozallowfullscreen="mozallowfullscreen" 
				        		 msallowfullscreen="msallowfullscreen" 
				        		 oallowfullscreen="oallowfullscreen" 
				        		 webkitallowfullscreen="webkitallowfullscreen"></iframe>
							</div>
							<div class="swatch-info">
								<p>Bittersweet</p>
								<p>#FC6E51</p>
								<p>rgb(252,110,81)</p>
							</div>
						</li>
						<li class="swatch">
							<iframe id="ifLogin" src="http://localhost:8080/divide?param=login" type="text/html" frameborder="0" scrolling="no" sandbox="allow-scripts allow-pointer-lock allow-same-origin" tabindex="-1" ></iframe>
							<div class="swatch-color color-grapefruit"></div>
							<div class="skill_menu">		
								<p style = "height:35px;">와토펜<br>WATO</p>
								
							</div>
						</li> 
						<li class="swatch">
							<div class="swatch-color color-sunflower"></div>
							<div class="swatch-info">
								<p>Sunflower</p>
								<p>#FFCE54</p>
								<p>rgb(255,206,84)</p>
							</div>
						</li>
						<li class="swatch">
							<div class="swatch-color color-straw"></div>
							<div class="swatch-info">
								<p>Straw</p>
								<p>#E8CE4D</p>
								<p>rgb(232,206,77)</p>
							</div>
						</li>
						<li class="swatch">
							<div class="swatch-color color-grass"></div>
							<div class="swatch-info">
								<p>Grass</p>
								<p>#A0D468</p>
								<p>rgb(160,212,104)</p>
							</div>
						</li>
						<li class="swatch">
							<div class="swatch-color color-mint"></div>
							<div class="swatch-info">
								<p>Mint</p>
								<p>#48CFAD</p>
								<p>rgb(72,207,173)</p>
							</div>
						</li>
						
					</ul>
					</div>
			    </div>
			  </div>
	          
	        </div>
	      </div>
	    </section>
	    <section class="band band-c">
	    	<footer class="footer-div-wrap">
				<div class="footer-info">
					<div class="footer-menu">
						회사소개 | 개인정보처리방침 | 이용약관 | 고객센터
					</div>
					<div class="footer-title-underline">
						<div class="footer-title">(주)와토</div>
						서울특별시 금천구 가산디지털1로 58 6층 609호<br/>
						대표 : 박근영(wato@wata.co.kr) 안종순(wato@wato.co.kr)<br/>
						TEL : 02-2081-8910 | FAX : 02-2081-8911 | EMAIL : watoforearth@gmail.com<br/> 
						<font class="footer-info-all">
							COPYLIGHTⓒ
							<font class="footer-info-gray">
								WATO
							</font> 
							2020.ALL RIGHTS RESERVED.
						</font>
						</div>
				</div>
			</footer>
	    </section>
	  </div>
	</div>
	
</body>

<script>
	
function letgo(param){

	if(param == 'login'){
		location.href = "/divide?param="+param;
	}else{
		alert('안들어옴');
	}
	
}


</script>


</html>