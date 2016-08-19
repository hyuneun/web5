<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

/* String name = request.getParameter("name"); 이렇게 쓰지말자(bean쓸때는)*/
%>
<jsp:useBean id="bean" class="pack.Exambean"></jsp:useBean><!--클래스를 bean변수에 가져온다-->
<!--이짓안함
<jsp:setProperty property="name" name="bean"/>
  값이 많을때(다들어온다) ▼-->
<jsp:setProperty property="*" name="bean"/><!--가져온 bean변수를 name에주고 사용-->
<%
//System.out.println(bean.getName() + " " + bean.getKor());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
폼빈에 등록된 사용자의 자료 출력<br>
이름은 <jsp:getProperty property="name" name="bean"/>
국은 <jsp:getProperty property="kor" name="bean"/>
영은 <jsp:getProperty property="eng" name="bean"/>

<jsp:useBean id="bean2" class="pack.Exam"></jsp:useBean>
<jsp:setProperty property="exambean" name="bean2" value="<%=bean %>" /><!--exambean을 인자로준다-->
총점은 <jsp:getProperty property="tot" name="bean2"/>
평균<jsp:getProperty property="avg" name="bean2"/>
</body>
</html>




