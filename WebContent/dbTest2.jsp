<%@page import="pack.SangpumDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="connBeanPooling" class="pack.ConnbinPooling" scope="page"/>
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
<h2>** 상품자료(beans + pooling 사용) **</h2>
<a href="DBtest2_ins.html">추가</a>
<a href="javascript:funcup()">수정</a>
<a href="javascript:funcdel()">삭제</a>
<table border="1">
	<tr><th>코드</th><th>상품</th><th>수량</th><th>단가</th></tr>
<%
ArrayList<SangpumDTO> list = connBeanPooling.getData();
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