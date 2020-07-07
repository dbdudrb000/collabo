<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자</title>

<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/hotplace/admin/list.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<body>								

	
<div class="container-fluid">
  <div id="cust-wrap">
    <h2 id="title">HOTPLACE 고객 리스트!</h2>
    <table id="cust-table" class="table table-fixed">
      <thead>
      	<th class="col-xs-1">순번.</th>
        <th class="col-xs-2">닉네임</th>
        <th class="col-xs-3">이메일</th>
        <th class="col-xs-3">주소</th>
        <th class="col-xs-3">전화번호</th>
        <th class="col-xs-2">기능</th>
      </thead>
      <tbody>
        <div class="scroll">
        	<c:forEach var="data" items="${data }" varStatus="cnt">
	          <tr>
	            <td class="col-xs-1" contentEditable="false">${cnt.count}.</td>
	            <td class="col-xs-2" contentEditable="true">${data.nickname}</td>
	            <td class="col-xs-3" contentEditable="true">${data.email}</td>
	            <td class="col-xs-3" contentEditable="true">${data.address}</td>
	            <td class="col-xs-3" contentEditable="true">${data.phone}</td>
	            <td class="col-xs-2">
	              <button class="btn btn-success">저장</button>
	              <button class="btn btn-danger">삭제</button>
	            </td>
	          </tr>
			</c:forEach>
        </div>
      </tbody>
    </table>
  </div>
  <!-- Cust Wrap -->
  <div id="loc-wrap">
    <h2>Location: 222 <button class="btn btn-info ex">x</button></h2>
    <ul class="nav nav-tabs" id="myTab">
      <li class="active" id="loctab"><a data-target="#home" data-toggle="tab">Details</a></li>
      <li><a data-target="#profile" data-toggle="tab">Users</a></li>
      <li><a data-target="#settings" data-toggle="tab">Notes</a></li>
    </ul>
    <div class="tab-content">
      <div class="tab-pane active" id="home">
        <table id="loc-table" class="table table-fixed">
          <thead>
            <th class="col-xs-4">Number</th>
            <th class="col-xs-4">Location</th>
            <th class="col-xs-4">Address</th>
            <th class="col-xs-4">Account</th>
          </thead>
          <tbody>
          <c:forEach var="data" items="${data }" varStatus="cnt">
            <tr>
              <td class="col-xs-4" contentEditable="true">1</td>
              <td class="col-xs-4" contentEditable="true">Apple</td>
              <td class="col-xs-4" contentEditable="true">111 Main St. NE</td>
              <td class="col-xs-4" contentEditable="true">Bloop</td>
            </tr>
          </c:forEach>
          </tbody>
          <tfoot>
            <td>
            </td>
          </tfoot>
        </table>
      </div>
      <div class="tab-pane" id="profile">
        <table id="user-table" class="table table-fixed">
          <thead>
            <th class="col-xs-4">User</th>
            <th class="col-xs-4">Name</th>
            <th class="col-xs-4">Email</th>
            <th class="col-xs-4">Phone</th>
          </thead>
          <tbody>
            <tr>
              <td class="col-xs-4" contentEditable="true">1</td>
              <td class="col-xs-4" contentEditable="true">Bob Ross</td>
              <td class="col-xs-4" contentEditable="true">bobbyr@gmail.com</td>
              <td class="col-xs-4" contentEditable="true">(202)432-6752</td>
            </tr>
          </tbody>
          <tfoot>
            <td>
              <button class="btn btn-info ex">x</button>
            </td>
          </tfoot>
        </table>
      </div>
      <div class="tab-pane" id="settings">
        <h4><ul>
        <li>Follow up about issue 22.</li>
           <li>Just purchased 300 new machines.</li>
        <li>Schedule Lunch Meeting.</li></h4>
        </ul>
        <div class="input-group input-group-lg">
          <span class="input-group-addon" id="sizing-addon1">New Note</span>
          <input type="text" class="form-control" aria-describedby="sizing-addon1">
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Loc Wrap -->
<!-- END CONTAINER-->


</body>
<script>
	jQuery(function() {
	  jQuery('#myTab a:first').tab('show')
	})
	
	$(".btn-danger").click(function() {
	  $('#cust-wrap').animate({
	    width: 50 + '%',
	    marginLeft: 0
	  }, {
	    duration: 1000
	  });
	  $("#cust-table").css("display", "inline-table")
	  $("#loc-wrap").fadeIn(2000)
	  // $("#loc-table").fadeIn(2000)
	  $("#loc-wrap").css("display", "inline-table")
	  $("#loc-table").css("display", "inline-table")
	})
	
	$(".ex").click(function() {
	  $("#loc-table").fadeOut(1000)
	  $('#cust-wrap').animate({
	    width: 100 + '%',
	    marginLeft: 0
	  }, {
	    duration: 1000
	  });
	  $("#loc-wrap").css("display", "none")
	})
</script>

</html>