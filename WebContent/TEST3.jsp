<%@page import="pack.SawonDTO"%>
<%@page import="pack.SangpumDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="t3" class="pack.TEST3" scope="page"/>
<jsp:useBean id="t2" class="pack.SawonDTO"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>** 상품자료(beans + pooling 사용) **</h2>
<table border="1">
	<tr><th>코드</th><th>상품</th><th>수량</th></tr>
<%
ArrayList<SawonDTO> list = t3.getData();
for(SawonDTO s : list){
%>
	<tr>
	<td><%=s.getBun() %></td>
	<td><a href="TEST3_1.jsp?data=<%=s.getBname()%>" target="tar"><%=s.getName()%></a></td>
	<td><%=s.getJik()%></td>
	</tr>
<%	
}
%>


</table>
<iframe align="center" name="tar" width="800" height="800"></iframe>
</body>
</html>