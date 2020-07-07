<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>


<html>
<head>	
  <meta charset="utf-8"/>
    <title>HotPlace 홈페이지</title>
    <style type="text/css">
         /* 기본 설정*/
         a{text-decoration:none; color:#000000;}         
         a:hover{color:#ff0000;}                     
         
         /* nav tag */
         nav ul{padding-top:10px;}                     /*  상단 여백 10px  */
         nav ul li {
            display:inline;                         /*  세로나열을 가로나열로 변경 */
            border-left:1px solid #999;             /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */

			   font:bold 12px Dotum;                     /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
            padding:0 10px;                         /* 각 메뉴 간격 */
        }
         nav ul li:first-child{border-left:none;}     /* 메뉴 분류중 제일 왼쪽의 "|"는 삭제        

    </style>
 <link rel="stylesheet" type="text/css" href="/resources/css/hotplace/login.css">
  
</head>
<body  bgcolor = "#ff7f00">
	<div>		
	<nav>	
        <ul align = "right">
            <li><a href="/joinView">회원가입</a></li>
            <li><a href="/loginView">로그인</a></li>
        </ul>    
    </nav>  
	</div>


<%-- 	<c:if tset = "${ }">  session 영역에 email 없으면 이창을 보여준다. 
	<nav>	
        <ul align = "right">
            <li><a href="">회원가입</a></li>
            <li><a href="/loginView">로그인</a></li>
        </ul>    
    </nav>  
   </c:if>
 <c:if test = "${ }">
		<nav>	
        <ul align = "right">  					session 영역에 email 있으면 이 창을 보여준다. 
            <li>${sessionScope.email}님!</li>    session 영역에 있는 이메일을 보여줄 것이다. 
            <li><a href = "">내 정보</a></li>
        </ul>    
    </nav>    
	</c:if> --%>



<!-- 지도를 표시할 div 입니다 -->
<div id="map" style= "width:80%;height:650px;" align = "left"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bf2a48e2f31d722ff5972f0dca35a662"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 
</script>
</body>
</html>

