<%@page import="pack.Gugu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
** 방법1 : 현재 내 기술로 처리하기 **<br>
<%
int dan = Integer.parseInt(request.getParameter("dan"));
out.println(dan + "단 = ");
//Gugu gugu = new Gugu();//포함관계 : 클라이언트의 요청만큼 객체가 만들어짐
Gugu gugu = Gugu.getinstance();//싱글톤

int re[] = gugu.compute(dan);
for(int a = 0;a<9;a++){
	out.println(dan + "*" + (a+1) + "=" + re[a]);
}
%>
<br>




** 방법2 : beans로 처리하기 **<br>
<!-- 자바식이 복잡할때 jsp가 더러워지므로 클래스를 만들어서 가져온다  -->
<jsp:useBean id="gugugu" class="pack.Gugu"></jsp:useBean>
<%
//id는 객체변수이름이다
int re2[] = gugugu.compute(dan);
for(int a = 0; a<9; a++){
	out.println(dan + "*" + (a+1) + "=" + re[a]);
}
%>
</body>
</html>