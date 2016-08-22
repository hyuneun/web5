<%@page import="pack.SawonDTO"%>
<%@page import="pack.SangpumDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="t3" class="pack.TEST3" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
</head>
<body>
<h2>** 부서자료 **</h2>

<%
String aa = "";
String data = request.getParameter("data");
System.out.println(data);
ArrayList<SawonDTO> list = t3.getData();
for(SawonDTO s : list){
	if(s.getBname().equals(data)){
		System.out.println(s.getBname());
		aa = "부서번호 : " + s.getBbun() + "<br>"
				+ "부서명 : " + s.getBname() + "<br>"
				+ "전화 : " + s.getBtel() + "<br>"
				+ "부서명 : " + s.getBloc();
	}


	
}
	out.println(aa);
%>


</body>
</html>