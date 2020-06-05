<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>	
<script>
	function pay(no){
		var number = no;
		console.log(number)
		 $.ajax({
			url:'paymentUpdate',
			type:'get',
			data:{no:number
				},
			success:function(result){
				console.log(result);
	
			}
			}); 
   	 window.open('airpayment','payviewer','width=1000,height=800,resizeable,scrollbars');
	}
</script>
</head>
<body>
	<div>
    	<jsp:include page="/WEB-INF/views/top.jsp"></jsp:include>
    </div>
      
  	<!--결제 대기 상품-->
	
	<div>
	<div>
	<h2>결제 대기중</h2>
	</div>
	<table border='1'>
	<tr>
	<th>예약번호</th><th>항공번호</th><th>이름</th><th>핸드폰번호</th><th>비상연락처</th><th>이메일</th>
	<th>총 예약가격</th><th>결제상태</th>
	</tr>
	<c:forEach var="myreser" items="${myreser}">
	<tr>
	<c:if test="${myreser.payment == 0}">
	<td id="${myreser.reservationnum}"><h3>${myreser.reservationnum}</h3></td>
	<td><h3>${myreser.endnum}</h3></td>
	<td><h3>${myreser.name}</h3></td>
	<td><h3>${myreser.phone}</h3></td>
	<td><h3>${myreser.phone1}</h3></td>
	<td><h3>${myreser.email}</h3></td>
	<td><h3>${myreser.resultprice}</h3></td>
	<td><h3><a onclick="pay('${myreser.reservationnum}')">결제하기</a></h3></td>
	</tr>
	</c:if>
	</c:forEach>
	</table>
	</div>
	
	<!--결제한 상품-->
	<div>
	<div>
	<h2>결제 완료</h2>
	</div>
	<table border='1'>
	<tr>
	<th>예약번호</th><th>항공번호</th><th>이름</th><th>핸드폰번호</th><th>비상연락처</th><th>이메일</th>
	<th>총 예약가격</th><th>결제상태</th>
	</tr>
	<c:forEach var="myreser" items="${myreser}">
	<tr>
	<c:if test="${myreser.payment eq 1}">
	<td><h3>${myreser.reservationnum}</h3></td>
	<td><h3>${myreser.endnum}</h3></td>
	<td><h3>${myreser.name}</h3></td>
	<td><h3>${myreser.phone}</h3></td>
	<td><h3>${myreser.phone1}</h3></td>
	<td><h3>${myreser.email}</h3></td>
	<td><h3>${myreser.resultprice}</h3></td>
	<td><h3><button onclick="passport()">여권등록</a></h3></td>
	</c:if>
	</tr>
	</c:forEach>
	</table>
	</div>
	
	<!-- 결제 취소 -->
	
	<div>
	<div>
	<h2>결제 취소</h2>
	</div>
	<table border='1'>
	<tr>
	<th>예약번호</th><th>이름</th><th>핸드폰번호</th><th>비상연락처</th><th>이메일</th>
	<th>총 예약가격</th><th>결제상태</th>
	</tr>
	<c:forEach var="myreser" items="${myreser}">
	<tr>
	<c:if test="${myreser.payment eq 2}">
	<td><h3>${myreser.reservationnum}</h3></td>
	<td><h3>${myreser.name}</h3></td>
	<td><h3>${myreser.phone}</h3></td>
	<td><h3>${myreser.phone1}</h3></td>
	<td><h3>${myreser.email}</h3></td>
	<td><h3>${myreser.resultprice}</h3></td>
	<td><h3><button onclick="cancellation()">결제취소</a></h3></td>
	</c:if>
	</tr>
	</c:forEach>
	</table>
	</div>
	
   
      
      <div>
         <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
      </div>
      
</body>
</html>