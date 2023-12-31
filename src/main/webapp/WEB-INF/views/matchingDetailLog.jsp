<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<style>
.dLog {
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 1.8rem;
	margin: 10px;
}

.pd {
	align-items: center;
	padding: 110px 50px 110px 50px;
}

#idBtn {
	font-weight: bold;
	color: green;
	
}

@charset "UTF-8";

@font-face {
	font-family: 'omyu_pretty';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

* {
	text-align: center;
	font-family: 'omyu_pretty';
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background: #D8E0A5;
}
#table {
	border-collapse: separate;
	border-spacing: 0;
	text-align: center;
	box-shadow: 0 2px 5px rgba(0, 0, 0, .25);
	margin: 0 auto;
	background: #FAF3E6;
}

th {
	background: #198754;
	color: #fff;
	text-align: center;
	height: 50px;
	font-size: 20px;
}

th:nth-child(1){
	padding-left: 15px;
	padding-right: 15px;
}

th:nth-child(2n){
	padding-left: 50px;
	padding-right: 50px;
}

th:nth-child(3){
	padding-left: 70px;
	padding-right: 70px;
}

tr:first-child th:first-child {
	border-top-left-radius: 6px;
}

tr:first-child th:last-child {
	border-top-right-radius: 6px;
}

td {
	border-right: 1px solid #c6c9cc;
	border-bottom: 1px solid #c6c9cc;
	height: 50px;
	padding-left: 70px;
	padding-right: 70px;
}
	
}

td:first-child {
	border-left: 1px solid #c6c9cc;
}

tr:last-child td:first-child {
	border-bottom-left-radius: 6px;
}

tr:last-child td:last-child {
	border-bottom-right-radius: 6px;
}
</style>

<%@ include file="header.jsp"%>

<%
if ( !(userId.equals("admin")) || userId == null) {
response.sendRedirect("main");
}
%> 

<div class="pd">
<div class="dLog">매칭 상세 - 동행 여부 확인</div>

<body>
	<table id="table">
		<thead>
			<tr>
				<th>NO.</th>
				<th>스케줄</th>
				<th>동행 예정일</th>
				<th>동행 상태</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="mDetail" items="${matchingDetail}">
				<tr>
					<td>${mDetail.matchingNumber}</td>
					<td><c:choose>
							<c:when test="${mDetail.scheduleCode eq '1A'}">월요일 오전</c:when>
							<c:when test="${mDetail.scheduleCode eq '1B'}">월요일 오후</c:when>
							<c:when test="${mDetail.scheduleCode eq '2A'}">화요일 오전</c:when>
							<c:when test="${mDetail.scheduleCode eq '2B'}">화요일 오후</c:when>
							<c:when test="${mDetail.scheduleCode eq '3A'}">수요일 오전</c:when>
							<c:when test="${mDetail.scheduleCode eq '3B'}">수요일 오후</c:when>
							<c:when test="${mDetail.scheduleCode eq '4A'}">목요일 오전</c:when>
							<c:when test="${mDetail.scheduleCode eq '4B'}">목요일 오후</c:when>
							<c:when test="${mDetail.scheduleCode eq '5A'}">금요일 오전</c:when>
							<c:when test="${mDetail.scheduleCode eq '5B'}">금요일 오후</c:when>
						</c:choose></td>
					<td><c:out value="${fn:substring(mDetail.day, 0, 10)}"/></td>
					<td>${mDetail.status}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<br>
	<button type="button" class="btn btn-secondary" onclick="history.back();">이전 페이지로 돌아가기</button>
	
</body>
</div>
</html>