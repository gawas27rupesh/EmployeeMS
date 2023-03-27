<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<style>
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
t{
background-color:blue;
}
</style>
</head>
<body>
	<h1>SEE DETAILES OF EMPLOYEE</h1>
	<div class="alert alert-danger text-center" role="alert">
			  <h5>${msg }</h5>
		</div>
	<div class="col-md-8 offset-md-4">
		
	<form action="showempdet" method="post">
				<label for="id">ENTER EMPID: </label>
				<t>EMP<t>
				<input type="tel" class="emppid" name="empId" placeholder="enter only number" >
		<div class="col-md-8 offset-md-1 mt-4">
			<a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
			<button type="submit" class="btn btn-outline-success">SEE DETAILES</button>
		</div>
		</form>
	</div>	
</body>
</html>