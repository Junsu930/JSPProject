<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int total = (int)request.getAttribute("tot");
	
	String pizza = request.getParameter("pizza");
	String size = request.getParameter("size");
	String amount = request.getParameter("amount");
	
%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>주문 결과</title>
	<style>
		#container{
			width:400px;
			border : 1px solid black;
			margin: auto;
		}
	</style>
	</head>
	<body>
		<div id="container">
			주문한 피자 : <%=pizza %><br>
			<% if(size.equals("L")){ %>
			Large
			<% }else{ %>
			Regular
			<% } %>
			
			<br>
			
			수량 : <%=amount %> 판
			
			<h4>총 가격 : <%=total %> 원</h4>
			
		</div>
	</body>
</html>