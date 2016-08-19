<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="bean" class="pack.Testbean"></jsp:useBean><!--클래스를 bean변수에 가져온다-->
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

<jsp:getProperty property="name" name="bean"/> 의 구매가격은
정가 <jsp:getProperty property="kor" name="bean"/> 원에서 


<jsp:useBean id="bean2" class="pack.Testbean2"></jsp:useBean>
<jsp:setProperty property="exambean" name="bean2" value="<%=bean %>" /><!--exambean을 인자로준다-->
<jsp:getProperty property="tot" name="bean2"/>원 할인된
<jsp:getProperty property="avg" name="bean2"/>원
</body>
</html>




