<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>

</head>
<body>
	<h1>DETAILES OF EMP ${employee.id}</h1>
	<div class="col-md-8 offset-md-4">
		<h3>EMPLOYEE NAME: ${ employee.name}</h3>
		<h3>EMPLOYEE PROFILE: ${employee.profile }</h3>
		<h3>EMPLOYEE SALARY: ${employee.salary}</h3>
	</div>
	<div class="col-md-8 offset-md-5">
		<a href="empdet" class="btn btn-outline-danger">GO BACK</a>
	</div>
</body>
</html>