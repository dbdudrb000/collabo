<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
		@media screen and (min-width: 1415px) {
    .bar-icon {
      /* display: none; */
    }
}
@media screen and (max-width: 1415px) {
    .main-header > .logotag {
      transition: all 0.2s linear;
    }
    .main-sidebar {
        transition: all 0.2s linear;

        /* display: none; */

    }
    .bar-icon {
        transition: all 0.2s linear;
        /* transform: translateX(-250px); */
    }
}
/* .test{
    float: left;
} */
.main-header {
    position: fixed;
    top: 0px;
    left: 0px;
    max-height: 50px;
    width: 100%;
    z-index: 2;
}
    .main-header > .logotag {
        height: 50px;
        width: 250px;
        display: flex;
        flex-direction: row;
        justify-content: start;
        float: left;
        background-color: #ff9201;
        transition: all 0.2s linear;
        position: relative;
        z-index: 10;
    }
        .main-header > .logotag .logo {
            position: relative;
            width: 160px;
            display: flex;
        }
        .main-header > .logotag .logo > img{
            width: 160px;
        }
    .navbar {
        background-color: #ffb34f;
        height: 50px;
    }
        .logotag .bar-icon {
            position: relative;
            left: 16px;
            top: 14px;
            margin-right: 26px;
            color: white;
            font-size: 20px;
            transition: all 0.2s linear;
            width: 40px;
        }
    .navbar > .bar-icon{
        position: relative;
        left: 16px;
        top: 14px;
        margin-right: 26px;
        color: white;
        font-size: 20px;
        transition: all 0.2s linear;
        width: 40px;
        transform: translateX(-250px);
    }

    .navbar > .logo{
        height: 50px;
        position: absolute;
        top: 0px;
        left: 67px;
        width: 160px;
        display: flex;
    }
    .navbar > .logo > img{
        width: 160px;
    }


.main-sidebar {
    position: fixed;
    min-height: 100%;
    width: 250px;
    /* background-color: #e8e8e1; */
    z-index: 2;
    top: 50px;
    transition: all 0.2s linear;
}
    .login {
        margin: 18px 0px 24px 0px;
        position: relative;
    }
        .loginBtn {
            cursor: pointer;
            color: #858585;
            border: 1px solid #b4b3b3;
            background-color: #ffffff;
            border-radius: 7px;
            position: relative;
            margin: 0px 8px 0px 0px;
            font-size: 30px;
            float: right;
            width: 60px;
            height: 85px;
        }
        .loginBtn:hover {
            color: black;
        }
            .powerIcon {
                position: relative;
                margin: 25px 0px 0px 14px;
            }
        .loginForm {
            overflow: hidden;
        }
            .loginInput {
                position: relative;
                border-radius: 5px;
                border: 1px solid black;
                margin: 2px;
                padding: 10px;
                width: 150px;
                font-size: 14px;
            }
    .menuTitle {
        color: #545454;
        padding-left: 24px;
        font-size: 24px;
    }
    .sidebar {
        position: relative;
        clear: both;
    }
        .nav-li {
        	list-style-type: none;
            padding-top: 17px;
            cursor: pointer;
            height: 40px;
            font-size: 18px;
            padding-left: 10px;
        }
        .nav-li:hover {
            background-color: #dadace;
        }
            .circleFillIcon {
                display: inline-block;
                margin-right: 10px;
                /* position: relative; */
                font-size: 12px;
                top: 2px;
            }
        .nav-child-li {
            padding-top: 10px;
            cursor: pointer;
            height: 30px;
            padding-left: 20px;
        }
        .nav-child-li:hover {
            font-weight: 600;
        }
            .circleIcon {
                display: inline-block;
                margin-right: 10px;
                position: relative;
                font-size: 15px;
            }
	 
	  .test {
	 	width : 50%;
	 }
	 
	 #test2{
	 	margin-left : 40%;
	 }
	 #testId{
	 	float:left;
	 }
	
	</style>
</head>
<body style = "background:#f6f1e7;">


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



	<%-- <aside class="main-sidebar">
		<section class="login">
			<div class="loginBtn">
				<svg stroke="currentColor" fill="currentColor" stroke-width="0"
					viewBox="0 0 512 512" class="powerIcon" height="1em" width="1em"
					xmlns="http://www.w3.org/2000/svg">
					<path
						d="M279.1 48h-46.2v231.1h46.2V48zm111.6 50.2L357.9 131c36.5 29.4 59.9 74.4 59.9 125 0 89.4-72.3 161.8-161.8 161.8S94.2 345.4 94.2 256c0-50.6 23.3-95.7 59.6-125.3l-32.6-32.6C76.4 136.3 48 192.7 48 256c0 114.9 93.1 208 208 208s208-93.1 208-208c0-63.3-28.4-119.7-73.3-157.8z"></path></svg>
			</div>
			<div class="loginForm">
				<input class="loginInput" type="text" placeholder="아이디"><input
					class="loginInput" type="password" placeholder="비밀번호">
			</div>
		</section>
		<div class="menuTitle">Menu</div>
		<section class="sidebar">
			<ul>
				<li class="nav-li"><svg stroke="currentColor"
						fill="currentColor" stroke-width="0" viewBox="0 0 16 16"
						class="circleFillIcon" height="1em" width="1em"
						xmlns="http://www.w3.org/2000/svg">
						<circle cx="8" cy="8" r="8"></circle></svg>영화(개발중)</li>
				<li class="nav-li"><svg stroke="currentColor"
						fill="currentColor" stroke-width="0" viewBox="0 0 16 16"
						class="circleFillIcon" height="1em" width="1em"
						xmlns="http://www.w3.org/2000/svg">
						<circle cx="8" cy="8" r="8"></circle></svg>예매</li>
				<ul class=" transHide">
					<a href="/booking"><li class="nav-child-li"><svg
								stroke="currentColor" fill="currentColor" stroke-width="0"
								viewBox="0 0 16 16" class="circleIcon" height="1em" width="1em"
								xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd"
									d="M8 15A7 7 0 108 1a7 7 0 000 14zm0 1A8 8 0 108 0a8 8 0 000 16z"
									clip-rule="evenodd"></path></svg>빠른예매</li></a>
					<a href="/timetable"><li class="nav-child-li"><svg
								stroke="currentColor" fill="currentColor" stroke-width="0"
								viewBox="0 0 16 16" class="circleIcon" height="1em" width="1em"
								xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd"
									d="M8 15A7 7 0 108 1a7 7 0 000 14zm0 1A8 8 0 108 0a8 8 0 000 16z"
									clip-rule="evenodd"></path></svg>상영시간표</li></a>
				</ul>
				<li class="nav-li"><svg stroke="currentColor"
						fill="currentColor" stroke-width="0" viewBox="0 0 16 16"
						class="circleFillIcon" height="1em" width="1em"
						xmlns="http://www.w3.org/2000/svg">
						<circle cx="8" cy="8" r="8"></circle></svg>극장(개발중)</li>
				<li class="nav-li"><svg stroke="currentColor"
						fill="currentColor" stroke-width="0" viewBox="0 0 16 16"
						class="circleFillIcon" height="1em" width="1em"
						xmlns="http://www.w3.org/2000/svg">
						<circle cx="8" cy="8" r="8"></circle></svg>이벤트(개발중)</li>
			</ul>
		</section>
	</aside> --%>
	
	
	
	
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active" id = "test">
      <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA1MjBfMjIy%2FMDAxNTg5OTY3NTYyMjQ5.xMYzmucwK0eFGlpQrwwvim7hdh1QHM-CnSQv9GfXy4Yg.789mKcXhesTnb6glYd6SKU_pX52cDq9rBKfQxHjYR9gg.JPEG.han636434%2FIMG_1051.JPG&type=a340"  " class="test" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fkinimage.naver.net%2F20200624_26%2F1593010006746y5NXR_JPEG%2FIMG_4027.JPG&type=a340" class="test" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fpost.phinf.naver.net%2FMjAyMDA0MjJfMjUy%2FMDAxNTg3NTUwNTI5NDA2.0xgGzsnFXH0W2LKV2V2TRi-i-sEVKRGdzqzO2XWenYUg.GkZAaRmspAzwCSEthep2U6lPWP_VESPeHCP9tKzWKGcg.JPEG%2FIk00lS6As2DPmwwdMmn3srDpn4-0.jpg&type=a340" class="test" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div class="card" id = "test2"style="width: 18rem;">
  <img src="/WeDailyimg?path=영이.jpg" class="card-img-top" alt="...">
  <div class="card-body" id = "testId">
    <h5 class="card-title">신주영</h5>
    <p class="card-text">기욤고 깜찍하고 이쁜 주영 콩주입니다.</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">일산 식사동 1006번지</li>
    <li class="list-group-item">여성 | 25살</li>
    <li class="list-group-item">많이 사랑해주세요 ^~^</li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
</div>



<div class="card mb-3" style="max-width: 540px; margin-left:25%;">
  <div class="row no-gutters" >
    <div class="col-md-4">
      <img src="/WeDailyimg?path=영이.jpg" class="card-img" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">①⑤세이용가 | TEST</h5>
        <p class="card-text">1번째 p 태그</p>
        <p class="card-text"><small class="text-muted">2번째 p태그</small></p>
        <spen>spen 태그</spen><br>
        <input type = "button" value = "상세보기">
      </div>
    </div>
  </div>
</div>



	<script>
	
	//$("#modal").modal('show');
	/* $('#staticBackdrop').modal({
		backdrop:'static' ,
		keyboard: false 
		}); */
	
	</script>
	
</body>
</html>