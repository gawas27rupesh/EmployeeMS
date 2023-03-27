<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>
<title>Insert title here</title>
</head>
<body class="text-center text-white"> 
	<h1>DETAILS OF EMP ${employee.id }</h1>
	<h2>EMPLOYEE NAME: ${employee.name}</h2>
	<h2>EMPLOYEE PROFILE: ${employee.profile }</h2>
	<h2>EMPLOYEE SALARY: ${employee.salary }</h2>
	
	<a href="empdet" class="btn btn-outline-danger">GO BACK</a>
			
</body>
</html>