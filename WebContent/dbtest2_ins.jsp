<%@page import="pack.ConnbinPooling"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bean" class="pack.SangpumBean"/>
<jsp:setProperty property="*" name="bean"/>
<jsp:useBean id="conbin" class="pack.ConnbinPooling"/>
<%
boolean b = conbin.insertData(bean);

if(b)
	response.sendRedirect("dbTest2.jsp");
else
	response.sendRedirect("dbtest2_fail.html");
%>