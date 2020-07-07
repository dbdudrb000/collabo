<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<body bgcolor = "#ff7f00">
	
	 <!-- 마커 클러스터러 에 등록할 주소를 가져오는 것이다.  -->
	
	<%-- <c:forEach var = "boardList" items = "${boardList}">
		<tr>
			<td>${boardList.board_address}// </td>
		</tr>
		
	</c:forEach> --%>
	<a aling = "center" href ="/kakao"><h1 style= "color:#00FFFF;">HotPlace</h1></a>
<form action = "" name = "form">
	<nav>
		<ul align = "right">
			<c:choose>
				<c:when test = "${sessionScope.loginVO.email == null}">
					<li><a href = "/board/allBoard">추억게시글</a></li>		
			    	<li><a href="/joinView">회원가입</a></li>
			    	<li><a href="/loginView">로그인</a></li>		      
			    </c:when>
		    	<c:otherwise>
		    		<li><a href = "/board/allBoard">추억게시글</a></li>	   
		    		${sessionScope.loginVO.email}님!    
		    		<li><a onclick = "menu()">키워드정보보기</a></li>  
		    		<li><a href = "/logoutLogic">로그아웃</a></li>
		    		<li><a href = "/board">게시글 작성</a></li>
		    		<li>
		    			<a href="javascript:void(0);" onclick="myboard('/board/myboard')">나의 히스토리</a>
		    			<input type = "hidden" name = "create_user" value = "${sessionScope.loginVO.nickname}">
		    		</li>
		    		
		    	</c:otherwise> 	
		    </c:choose>
		</ul>  
	</nav> 
	</form>          	  	            	
	<table id="searchList" style = "display:none" border = "5" width = 38%>	

	</table>   			    			   			

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
 <ul id="searchList1" align = "left">
	
</ul>
</div> 
<div id="map" style="width:100%;height:650px;"></div>	<!-- 여기에 지도창에 보여주는 것이다. -->
<div id="clickLatlng"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bf2a48e2f31d722ff5972f0dca35a662&libraries=services"></script>
<script>
	
	
	var address = "${loginVO.address}";
	var y = "37.54136185774449";
	var x = "126.93931937930844";
	
		// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
     var infowindow = new kakao.maps.InfoWindow({zIndex:1});      
	
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
    mapOption = {
        center: new kakao.maps.LatLng(y, x), // 지도의 중심좌표
        level: 7 // 지도의 확대 레벨
    };   
    // 지도생성
	var map = new kakao.maps.Map(mapContainer, mapOption);  
	
	
	
	 var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
	        center : new kakao.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표 
	        level : 14 // 지도의 확대 레벨 
	
	
    var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
        minLevel: 10 // 클러스터 할 최소 지도 레벨 
    });
 
    // 데이터를 가져오기 위해 jQuery를 사용합니다
    // 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
   
        // 데이터에서 좌표 값을 가지고 마커를 표시합니다
        // 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
        var markers = $(data.positions).map(function(i, position) {
            return new kakao.maps.Marker({
                position : new kakao.maps.LatLng(position.lat, position.lng)
            });
        });

        // 클러스터러에 마커들을 추가합니다
        clusterer.addMarkers(markers);
   
    
    
    
    
    
    
    
	// 지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(address, function(result, status) {
	
	    // 정상적으로 검색이 완료됐으면
	     if (status === kakao.maps.services.Status.OK) {
	
	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });
	
	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">나의집</div>'
	        });
	        infowindow.open(map, marker);
				/* alert("회원님의 주소 좌표는" +coords);  좌표구하는 기능*/
			
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	      
	    }/* else{
	    	alert("회원님의 주소는 없는주소입니다.");
	    } */
	});    
		
 
 
	 
	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places(); 
	
	// 키워드로 장소를 검색합니다	
	// ps.keywordSearch( document.getElementById("search").value, placesSearchCB); 
	
	// 장소 리스트
	var ul = document.getElementById("searchList");
	// 이주소의 ( 경도, 위도) 구하기
	
	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	function placesSearchCB (data, status, pagination) {

	   	if (status === kakao.maps.services.Status.OK) {		
	    
	    	// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	    	// LatLngBounds 객체에 좌표를 추가합니다
	        var bounds = new kakao.maps.LatLngBounds();
	        ul.innerHTML = ""; 
	        var array = [];
	        for (var i=0; i<data.length; i++) {
	        	/*
	        	displayMarker(data[i]); 이 펑션안에는 좌표를 계산하고 alert 해주는 로직까지 같이 있엇음.
	        	그래서 이 정보들의 수 많큼 좌표보여주는 alert 팝업창이 뜨는 거였음.
	        	그냥 쉽게설명하면
	        	원래 클릭콜백함수를 displayMarker() 함수대신 clickAddress() 를 사용한 것이다.
	        	*/
	       
	            displayMarker(data[i]);    
	            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
	           
	            //리스트에 표시 (innerHTML 로 넣는 것이다. )
	            var liStr = "<th>"+data[i].address_name + data[i].place_name +" ▶ <a href='"+ data[i].place_url +"' target='_blank'>링크 바로가기</a></th>";
	            ul.innerHTML = ul.innerHTML + liStr;   
	            console.log(data[i] + " 호출");
	          	//menu(data[i]); // 아직 미구현
	          	array.push(data[i]);
	        }       
	        	// 여기서 검색데이터의 마지막 아이템만 가지고 click event를 추가하게끔 한번만 펑션호출함 
	       	 	clickAddress(data.length-1); 
	        	
	       		// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	      	  	map.setBounds(bounds);
	        
	    } else {// 검색창에 값을 안넣고 검색누를시 실행되는 부분
			if (document.getElementById("search").value == "") {
				alert("검색값을 입력해주세요.");
			}
		}
	}
	
	// 지도에 마커를 표시하는 함수입니다
 	function displayMarker(place) {
		
		// 마커를 생성하고 지도에 표시합니다
		var marker = new kakao.maps.Marker({
			map : map,
			position : new kakao.maps.LatLng(place.y, place.x)
		});

		// 마커에 클릭이벤트를 등록합니다
		kakao.maps.event.addListener(marker, 'click', function() {
		// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
			infowindow.setContent('<div style="padding:5px;font-size:12px;">'
					+ place.place_name + '</div>');
			infowindow.open(map, marker);
		});
	} 
	
		// 결과적은로 place 파라미터는 검색시 정보들의 마지막 데이터만 가지고 옴.( 한번만 실행될 것이다.)
	function clickAddress(place) {
		
		// 마커를 생성하고 지도에 표시합니다
		var marker = new kakao.maps.Marker({
			map : map,
			position : new kakao.maps.LatLng(place.y, place.x)
		});
		
		// 마커에 클릭이벤트를 등록합니다
		kakao.maps.event.addListener(marker, 'click', function() {
			// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
			infowindow.setContent('<div style="padding:5px;font-size:12px;">'
					+ place.place_name + '</div>');
			infowindow.open(map, marker);
		});
		
		
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
			// 클릭한 위도, 경도 정보를 가져옵니다 
			var latlng = mouseEvent.latLng;

			// 마커 위치를 클릭한 위치로 옮깁니다
			marker.setPosition(latlng);

			var message = '위도는: ' + latlng.getLat() + '\n';
			message += '경도는: ' + latlng.getLng();

			var resultDiv = document.getElementById('clickLatlng');
			resultDiv.innerHTML = message;
	
			alert(message);			
		});	
	}
		
	// 키워드 정보들을 보기위해 ( 펼치기, 안보이게 하기) 하는 펑션	
	function menu(){
	
			if(document.getElementById("searchList").style.display == "none"){				
				document.getElementById("searchList").style.display = "block";			
			}else{
				document.getElementById("searchList").style.display = "none";		
			}
		}
	
	/*	회원의 available 를 N 일때만 가지고 오는 것이다.
	   	result는  로그인 실패할때 뜨는 alert 팝업창  ( 없는 회원 로그인 시 쿼리문에서 아무 값도 안가져오기 때문이다.)
	*/
	
	var ava = '${isAvailable}';
	if(ava == "N"){ 
		alert("정지된 회원입니다.");
	}else if('${result}' == 'false'){
		alert("로그인이 실패하였습니다.");
	}	
	
	function myboard(url){
		document.form.action = url;
		form.submit();
	}
	
	

</script>
</body>
</html>