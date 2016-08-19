<%@page import="pack.SangpumDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="connBean" class="pack.ConnBean"></jsp:useBean>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>** 상품자료(beans 사용) **</h2>
<table border="1">
	<tr><th>코드</th><th>상품</th><th>수량</th><th>단가</th></tr>
<%
ArrayList<SangpumDTO> list = connBean.getData();
for(SangpumDTO s : list){
%>
	<tr>
	<td><%=s.getCode() %></td>
	<td><%=s.getSang()%></td>
	<td><%=s.getSu()%></td>
	<td><%=s.getDan() %></td>
	</tr>
<%	
}
%>
</table>

</body>
</html>





