<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="/resources/css/hotplace/kakao.css">
	 <link rel="stylesheet" type="text/css" href="/resources/css/hotplace/login.css">
	 <link rel="stylesheet" type="text/css" href="/resources/css/hotplace/mainTop.css">
	 <style>
		 .menubar li ul {
	background: rgb(109,109,109);
	display:none;  /* 평상시에는 서브메뉴가 안보이게 하기 */
	height:auto;
	padding:0px;
	margin:0px;
	border:0px;
	position:absolute;
	width:200px;
	z-index:200;
}
	 </style>

</head>
<body>
	<a aling = "center" href ="/kakao"><h1>HotPlace</h1></a>

	<nav>	
        <ul align = "right">
            <li><a href="/joinView">회원가입</a></li>
            <li><a href="/loginView">로그인</a></li>
        </ul>      
    </nav>  

<div class="search-wrapper">
	
	<form>
	<div align = "center">
	<input type="text" id="search" required class="search-box" placeholder="검색창" />
		<button class="close-icon" type="reset"></button>
		<input type = "button" value = "검색" onclick = "ps.keywordSearch( document.getElementById('search').value, placesSearchCB)" >
	</div>
	</form>
</div>
<!--  검색창에 검색하면 해당 정보를 가져오는데 그 정보들을 searchList 의 innerHTML 로 넣어주는 것이다. -->
<div class = "menubar">
 <ul id="searchList" align = "left">
	
</ul>
</div> 

	<c:forEach var = "boardList" items = "${boardList}">
		<tr>
			<td>${boardList.board_address} // </td>
		</tr>
		
	</c:forEach>

<p style="margin-top:-12px">
    사용한 데이터를 보시려면 
    <em class="link">
       <a href="/download/web/data/chicken.json" target="_blank">여기를 클릭하세요!</a>
    </em>
</p>


<div id="map" style="width:80%;height:650px;"></div>	<!-- 여기에 지도창에 보여주는 것이다. -->
<div id="clickLatlng"></div>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bf2a48e2f31d722ff5972f0dca35a662&libraries=services"></script>
<script>
   
var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
    center : new kakao.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표 
    level : 14 // 지도의 확대 레벨 
});

// 마커 클러스터러를 생성합니다 
var clusterer = new kakao.maps.MarkerClusterer({
    map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
    averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
    minLevel: 10 // 클러스터 할 최소 지도 레벨 
});

// 데이터를 가져오기 위해 jQuery를 사용합니다
// 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
$.get("/download/web/data/chicken.json", function(data) {
    // 데이터에서 좌표 값을 가지고 마커를 표시합니다
    // 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
    var markers = $(data.positions).map(function(i, position) {
        return new kakao.maps.Marker({
            position : new kakao.maps.LatLng(position.lat, position.lng)
        });
    });

    // 클러스터러에 마커들을 추가합니다
    clusterer.addMarkers(markers);
});
   
   
</script>

</body>
</html>