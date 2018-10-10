<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-3.0.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	
	<h1>회원관리</h1>
	
	<div class="btn-group" data-toggle="buttons">
	  <label class="btn btn-primary active">
	    <input type="radio" name="options" id="option1" autocomplete="off" checked> 가입일
	  </label>
	  <label class="btn btn-primary">
	    <input type="radio" name="options" id="option2" autocomplete="off"> 최종접속일
	  </label>
	  &nbsp;
	  <input id="someDate" type="date">
	  ~
	  <input id="someDate" type="date">
	</div>
	<br/>
	
	<div class="btn-group" data-toggle="buttons">
	  <label class="btn btn-primary active">
	    <input type="radio" name="options" id="option1" autocomplete="off" checked> 전체
	  </label>
	  <label class="btn btn-primary">
	    <input type="radio" name="options" id="option2" autocomplete="off"> 일반
	  </label>
	  <label class="btn btn-primary">
	    <input type="radio" name="options" id="option2" autocomplete="off"> 전문가
	  </label>
	  <label class="btn btn-primary">
	    <input type="radio" name="options" id="option2" autocomplete="off"> 관리자
	  </label>
	  <label class="btn btn-primary">
	    <input type="radio" name="options" id="option2" autocomplete="off"> 서포터즈
	  </label>
	  &nbsp;
	  <!-- Single button -->
		<div class="btn-group">
		  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
		    서포터즈 선택 <span class="caret"></span>
		  </button>
		  <ul class="dropdown-menu" role="menu">
		    <li><a href="#">Action</a></li>
		    <li><a href="#">Another action</a></li>
		    <li><a href="#">Something else here</a></li>
		    <li class="divider"></li>
		    <li><a href="#">Separated link</a></li>
		  </ul>
		</div>
	</div>
	&nbsp;
	
	<div class="btn-group" data-toggle="buttons">
	  <label class="btn btn-primary active">
	    <input type="radio" name="options" id="option1" autocomplete="off" checked> 아이디
	  </label>
	  <label class="btn btn-primary">
	    <input type="radio" name="options" id="option2" autocomplete="off"> 닉네임
	  </label>
	  &nbsp;
	  <input id="SeachKeyword" type="text">
	</div>
	
	<div>
		<c:if test="${empty member}">
			<a href="${cp}/member/joinForm">JOIN</a> &nbsp;&nbsp; 
			<a href="${cp}/member/loginForm">LOGIN</a> &nbsp;&nbsp; 
		</c:if>
		
		<c:if test="${!empty member}">
			<a href="${cp}/member/modifyForm">MODIFY</a> &nbsp;&nbsp; 
			<a href="${cp}/member/logout">LOGOUT</a> &nbsp;&nbsp;
			<a href="${cp}/member/removeForm">REMOVE</a> &nbsp;&nbsp; 
		</c:if>
	</div>
	
	<font size="5"><strong>총 NUM건의 결과</strong></font> <button type="button" class="btn btn-default">엑셀 다운로드</button>
	
	<table class="table table-striped">
  		<tr>
  			<th>No</th>
  			<th>구분</th>
  			<th>아이디</th>
  			<th>닉네임</th>
  			<th>여행지</th>
  			<th>따라가기</th>
  			<th>일정</th>
  		</tr>
  		<tr>
  			<td>No</td>
  			<td>구분</td>
  			<td>아이디</td>
  			<td>닉네임</td>
  			<td>여행지</td>
  			<td>따라가기</td>
  			<td>일정</td>
  		</tr>
	</table>
	
</body>
<script type="text/javascript">
	
</script>
</html>