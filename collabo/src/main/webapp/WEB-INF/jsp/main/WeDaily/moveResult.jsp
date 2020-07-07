<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>move search</title>

	<!-- 부트스트랩  CSS-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    
	<!-- 부트스트랩 JS  -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>


	<!-- 상단 메뉴바 css -->
	<link rel="stylesheet" type="text/css" href="/resources/css/wedaily/topMenu.css">
	<!-- 모달 css -->
	<link rel="stylesheet" type="text/css" href="/resources/css/wedaily/modal.css">

	<!-- Jquery -->
	<script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>

	<style>
		
	  font: 13px "Lucida sans", Arial, Helvetica;
	  color: #eee;
	  text-align: center;
	}
	
	a {
	  color: #ccc;
	}
	
	/*-------------------------------------*/
	
	.cf:before,
	.cf:after {
	  content: "";
	  display: table;
	}
	
	.cf:after {
	  clear: both;
	}
	
	.cf {
	  zoom: 1;
	}
	
	/*-------------------------------------*/
	
	.form-wrapper {
	  width: 450px;
	  padding: 5px;
	  margin: 50px auto 50px auto;
	  background: #444;
	  background: rgba(0, 0, 0, 0.2);
	  -moz-border-radius: 10px;
	  -webkit-border-radius: 10px;
	  border-radius: 10px;
	  -moz-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4) inset,
	    0 1px 0 rgba(255, 255, 255, 0.2);
	  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4) inset,
	    0 1px 0 rgba(255, 255, 255, 0.2);
	  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4) inset,
	    0 1px 0 rgba(255, 255, 255, 0.2);
	}
	
	.form-wrapper input {
	  width: 330px;
	  height: 40px;
	  padding: 10px 5px;
	  float: left;
	  font: bold 15px "lucida sans", "trebuchet MS", "Tahoma";
	  border: 0;
	  background: #eee;
	  -moz-border-radius: 3px 0 0 3px;
	  -webkit-border-radius: 3px 0 0 3px;
	  border-radius: 3px 0 0 3px;
	}
	
	.form-wrapper input:focus {
	  outline: 0;
	  background: #fff;
	  -moz-box-shadow: 0 0 2px rgba(0, 0, 0, 0.8) inset;
	  -webkit-box-shadow: 0 0 2px rgba(0, 0, 0, 0.8) inset;
	  box-shadow: 0 0 2px rgba(0, 0, 0, 0.8) inset;
	}
	
	.form-wrapper input::-webkit-input-placeholder {
	  color: #999;
	  font-weight: normal;
	  font-style: italic;
	}
	
	.form-wrapper input:-moz-placeholder {
	  color: #999;
	  font-weight: normal;
	  font-style: italic;
	}
	
	.form-wrapper input:-ms-input-placeholder {
	  color: #999;
	  font-weight: normal;
	  font-style: italic;
	}
	
	.form-wrapper button {
	  overflow: visible;
	  position: relative;
	  float: right;
	  border: 0;
	  padding: 0;
	  cursor: pointer;
	  height: 40px;
	  width: 110px;
	  font: bold 15px/40px "lucida sans", "trebuchet MS", "Tahoma";
	  color: #fff;
	  text-transform: uppercase;
	  background: #4b70a7;
	  -moz-border-radius: 0 3px 3px 0;
	  -webkit-border-radius: 0 3px 3px 0;
	  border-radius: 0 3px 3px 0;
	  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.3);
	}
	
	.form-wrapper button:hover {
	  background: #e54040;
	}
	
	.form-wrapper button:active,
	.form-wrapper button:focus {
	  background: #c42f2f;
	}
	
	.form-wrapper button:before {
	  content: "";
	  position: absolute;
	  border-width: 8px 8px 8px 0;
	  border-style: solid solid solid none;
	  border-color: transparent #4b70a7 transparent;
	  top: 12px;
	  left: -6px;
	}
	
	.form-wrapper button:hover:before {
	  border-right-color: #e54040;
	}
	
	.form-wrapper button:focus:before {
	  border-right-color: #c42f2f;
	}
	
	.form-wrapper button::-moz-focus-inner {
	  border: 0;
	  padding: 0;
	}
	.byline p {
	  text-align: center;
	  color: #c6c6c6;
	  font: bold 18px Arial, Helvetica, Sans-serif;
	  text-shadow: 0 2px 3px rgba(0, 0, 0, 0.1);
	}
	
	.byline p a {
	  color: #d83c3c;
	  text-decoration: none;
	}
		
	/* 영화정보 CSS */
	
	.container {
		border-style: solid;
    	border-color: gold;	
	}
	
	
	.move_info_image > img {
		width: 250px;
	    margin-left: 11%;  
	    border-style: solid;
	    border-solid FONT-WEIGHT: 100;
	    border-color: coral;
	    float:left;
	}	
		
	/* 부트스트랩 재정의 css */
	#move_text{
		background-color: tan;
	    text-align: center;
	    border-radius: 110px / 80px;
	}
	
	</style>

</head>
<body style = "background-color:#f6f1e7;">

	<nav>
		<ul class = "wedailUl">	
			<c:if test = "${loginList.userid == null }">
				<li><a href="#news"></a></li>
				<li><a href="/WeDailyJoinView">로그인 | 회원가입</a></li>
				<li><a class="active" href="/move2">Home</a></li>
				</h3><li class = "logo" style = "color: antiquewhite; margin: 10px; margin-right: 27%; font-size: 23px;">WeDaily</li>
	    	</c:if>
	    	<c:if test = "${loginList.userid != null}">
		    	<li><a href="#news"></a></li>		    	
		    	 <li class="sub-menu-parent" tab-index="0">
		    	 	<a href = "#">${loginList.userid}님!</a>
			    	 	<ul class="sub-menu">
	        				<li><a href="/WeDailyLogout">로그아웃</a></li>
	        			</ul>
		    	 </li>	
				<li><a class="active" href="/move2">Home</a></li>
				</h3><li class = "logo" style = "color: antiquewhite; margin: 10px; margin-right: 31%; font-size: 23px;">WeDaily</li>	
	    	</c:if>	
	    </ul>
	</nav>
	
	<!-- 검색창 -->
	<form class="form-wrapper cf">
	  	<input type="text" placeholder="검색할 영화를 입력해주세요." required>
		<button type="submit">검색</button>
	</form>
	<div class="byline">
	</div>
		
	<%-- <div claass = "container">
	<div class = "move_info">
		<div class = "move_info_image">
			<c:forEach var = "move" items = "${titleArr}"> 	
			 <img src = "${move.image}">
			 <div>
				<tr>
					<td>
						 ${move.title}  			
					</td>
				</tr>
				<tr>
					<td>
						 ${move.actor}			
					</td>
				</tr> 
			</div>    
		</div>
		 	</c:forEach> 
	</div>
	</div> --%>

	<c:forEach var = "move" items = "${titleArr}">
	<div class="card mb-3" style="max-width: 900px; margin-left:12%;">
	  <div class="row no-gutters" >
	    <div class="col-md-4">
	      <img src="${move.image}" class="card-img" alt="...">
	    </div>
	    <div class="col-md-8" id = "move_text">
	      <div class="card-body">
	        <h5 class="card-title">①⑤세이용가 | ${move.title}</h5>
	        <p class="card-text">출연배우: ${move.actor}</p>
	        <p class="card-text"><small class="text-muted">2번째 p태그</small></p>
	        <p class="card-text"> 평점 | ${move.move_rating}</p>
	        <spen>spen 태그</spen><br>
	        <input type = "button" value = "상세보기" onclick = "alert('서비스준비중입니다.')">
	      </div>
	    </div>
	  </div>
	</div>
	</c:forEach>
	
	
</body>
</html>