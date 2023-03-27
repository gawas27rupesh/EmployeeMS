<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>
<style type="text/css">
h1{
 font-family:"Times New Roman";
 text-align: center;
 color:white;
 background-color:black;
}
body{
	background-image:linear-gradient(rgba(1,1,1,.7),rgba(1,1,1,.7)),url('https://images.unsplash.com/photo-1473893604213-3df9c15611c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80');
	background-repeat:no-repeat;
    background-attachment:fixed; 
	background-size:cover;
	color:white;
	}
</style>
</head>
<body>
	<h1>DETAILES OF EMP ${employee.id}</h1>
	<div class="col-md-8 offset-md-4">
		<h3>EMPLOYEE NAME: ${ employee.name}</h3>
		<h3>EMPLOYEE PROFILE: ${employee.profile }</h3>
		<h3>EMPLOYEE SALARY: ${employee.salary}</h3>
	</div>
	<div class="col-md-8 offset-md-5">
		<a href="showemp" class="btn btn-outline-danger">GO BACK</a>
	</div>
</body>
</html>