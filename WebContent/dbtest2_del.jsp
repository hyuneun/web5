<%@page import="pack.ConnbinPooling"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% String code = request.getParameter("code"); %>
<jsp:useBean id="conbin" class="pack.ConnbinPooling"/>
<%
boolean b = conbin.deldata(code);

if(b)
	response.sendRedirect("dbTest2.jsp");
else
	response.sendRedirect("dbtest2_fail.html");
%>