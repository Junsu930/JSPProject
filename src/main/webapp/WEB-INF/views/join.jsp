<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
 <%
 	boolean result = (boolean)request.getAttribute("res");
 	String id = request.getParameter("inputId");
 	String pw = request.getParameter("inputPw");
 	String name = request.getParameter("inputName");
 	String email = request.getParameter("inputEmail");
 	String[] hobby = request.getParameterValues("hobby");
 	
 	String temp= "";
 	
 	for(String h : hobby){
 		if(h.equals("study")){
 			temp += "공부 ";
 		}
 		if(h.equals("game")){
 			temp += "게임 ";
 		}
 		if(h.equals("gym")){
 			temp += "헬스 ";
 		}
 		if(h.equals("reading")) {
 			temp += "독서 ";
 		}
 		if(h.equals("movie")){
 			temp += "영화 ";
 		}
 		if(h.equals("coding")) {
 			temp += "코딩 ";
 		}
 	}
 	
 %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	</head>
	<style>
		#container{
			border-top: 10px solid black;
			width: 500px;
			margin : auto;
			margin-top: 50px;
		}
	</style>
	<body>
		<div id="container">
			<ul>
				<li> 아이디 : <%=id %></li>
				<li> 비밀번호 : <%=pw %></li>
				<li> 이름 : <%= name %></li>
				<li> 이메일 : <%=email %></li>
				<li> 취미 : <%=temp %></li>
			</ul>
			
			<%if(result==true) { %>
			<h1><%=name %>님의 회원가입이 완료되었습니다.</h1>
			<%}else{ %>
			<h1>비밀번호가 일치하지 않습니다.</h1>
			<%} %>
		</div>
		
	</body>
</html>