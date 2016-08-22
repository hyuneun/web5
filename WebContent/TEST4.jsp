<%@page import="pack.BDTO"%>
<%@page import="pack.SangpumDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="connBeanPooling" class="pack.TEST4_pooling" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function funcup(){
	var code = prompt("수정할 코드를 입력하세요")
	//alert(code)
	if(code != "" && code != null){
		location.href="dbtest2_up.jsp?code=" + code;
	}
}

function funcdel(){
	var code = prompt("삭제할 코드를 입력하세요")
	if(code != "" && code != null){
		if(confirm("삭제?") == true){
		location.href="dbtest2_del.jsp?code=" + code;
			
		}
	}
}
</script>
</head>
<body>
<h2>** 방명록 **</h2>
<a href="TEST4_ins.html">글쓰기</a>
<!-- <a href="javascript:funcup()">수정</a>
<a href="javascript:funcdel()">삭제</a> -->
<table border="1">
	<tr><th>코드</th><th>작성자</th><th>제목</th><th>내용</th></tr>
<%
ArrayList<BDTO> list = connBeanPooling.getData();
for(BDTO s : list){
%>
	<tr>
	<td><%=s.getCode() %></td>
	<td><%=s.getName()%></td>
	<td><%=s.getSubject()%></td>
	<td><%=s.getContent() %></td>
	</tr>
<%	
}
%>

</table>
</body>
</html>