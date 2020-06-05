<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css">
<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css">
<script type="text/javasctipt src="${pageContext.request.contextPath}/resources/css/bootstrap.css"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script type="text/javascript">
function airLine(){
	location.href="airLine";
}
</script>
</head>
<body>
	<div>
		<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
	</div>	
	<c:choose>
	<c:when test="${!empty airsList}">
	<div>
	<table border="1">
      <tr>
        <th>airportname</th> <th>airname</th> <th>time</th>
        <th>starttime</th><th>endtime</th><th>도착지</th><th>가격</th><th>예약</th>
	<c:forEach var="airsList" items="${airsList}">
		<tr>
		<td>${airsList.airportname}</td>
		<td>${airsList.airname}</td>
		<td>${airsList.time}</td>
		<td>${airsList.starttime}</td>
		<td>${airsList.endtime}</td>
		<td>${airsList.endarea}</td>
		<td>${airsList.endprice}</td>
		<td><a href="airreservation?endnum=${airsList.endnum}&airuser=${airuser}">예약하기</a></tr>
		</tr>
	</c:forEach>
    </table>
    <input type="hidden" value="${airuser}" style="display:none"></button>
	</div>
	</c:when>
	<c:when test="${empty airsList}">
		<div>검색 결과가 없습니다.</div>
		<button onclick="airLine()">재검색 하기</button>
	</c:when>
	</c:choose>
		<div>
			<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
		</div>
</body>
</html>