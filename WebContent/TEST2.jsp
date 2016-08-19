<%@page import="pack.TEST2"%>
<%@page import="pack.SangpumDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="t2" class="pack.TEST2"></jsp:useBean>
    <jsp:setProperty property="buser" name="t2"/>
    <jsp:useBean id="gs" class="pack.TEST2GS"></jsp:useBean>
    
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
s.getDan()
</script>
</head>
<body>
<h2>** 사원자료(beans 사용) **</h2>
<table border="1">
	<tr><th>사번</th><th>직원명</th><th>직급</th><th>성별</th></tr>
<%
ArrayList<TEST2> list = gs.getData();
int count = 0;
int pay = 0;
for(TEST2 s : list){
	if(s.getDan().equals("남")){
	out.println("<tr style='color: blue'>");
	out.println("<td>" + s.getCode() + "</td>");
	out.println("<td>" + s.getSang() + "</td>");
	out.println("<td>" + s.getSu() + "</td>");
	out.println("<td>" + s.getDan() + "</td>");
	out.println("</tr>");
		
	}else if(s.getDan().equals("여")){
		out.println("<tr style='color: yellow'>");
		out.println("<td>" + s.getCode() + "</td>");
		out.println("<td>" + s.getSang() + "</td>");
		out.println("<td>" + s.getSu() + "</td>");
		out.println("<td>" + s.getDan() + "</td>");
		out.println("</tr>");
	}


pay = s.getAvg();
count++;
}
%>
</table>
근무인원수 : <%=count %> 명 - 평균급여 : <%=pay %>

</body>
</html>





