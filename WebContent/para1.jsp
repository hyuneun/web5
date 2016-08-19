<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String message = request.getParameter("message");//beans운영시에는 필요없다 (자동으로들어감,이름만맞춰주면)
%>
<jsp:useBean id="my" class="pack.Para1"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
클래스 맴버 필드에 값설정하고 읽기<br>
<%
//내가알고잇는기술
my.setMessage(message);
out.println(my.getMessage());
%>
<br>
<!--세터,게터메소드를 만들때 구칙을 지켜야 자동화가능 property와 클래스의 맴버필드를같게 -->
<jsp:setProperty property="message" name="my"/><!--value="ddd" 값을줄수도잇다,알아서 싱글톤타입으로준다  -->
<jsp:getProperty property="message" name="my"/>
</body>
</html>