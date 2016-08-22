<%@page import="pack.SangpumDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String code = request.getParameter("code");
//out.println(code);

%>
<jsp:useBean id="conn" class="pack.ConnbinPooling" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
SangpumDTO dto = conn.updateList(code);
if(dto == null)
{
%>
	<script type="text/javascript">
		alert("코드가틀려");
		location.href="dbTest2.jsp";
	</script>
	<%
	return;
}
	%>
** 상품수정 **
<form action="dbtest2_upok.jsp" method="post">
코드 : <%=dto.getCode() %>
<input type="hidden" name="code" value="<%=dto.getCode() %>">
코드 : <input type="text" name="sang" value="<%=dto.getSang() %>">
수량 : <input type="text" name="su" value="<%=dto.getSu() %>">
단가 : <input type="text" name="dan" value="<%=dto.getDan() %>">
<input type="submit" value="확인">
<input type="button" value="목록" onclick="javascript:location.href='dbTest2.jsp'">
</form>
</body>
</html>







