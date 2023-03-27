<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="text-center md-3">
	<h1>Show Emp Details</h1>
	<div class="alert alert-danger">
		<h5>${msg }</h5>
	</div>
	<div class="col-md-8 offset-md-4 mt-4">
	<form action="seedetails" method="post">
		<table>
			<tr>
				<td><label for="id" class="text-white">ENTER EMPID:</label></td>
				<td><input type="tel" class="id" name="eid" placeholder="Enter Number Only" required></td>
			</tr>
		</table>
		<div class="col-md-6 offset-md-1 ml-2 mt-5">
			<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">GO BACK</a>
			<button type="submit" class="btn btn-outline-primary">SEE DETAILS</button>
		</div>
	</form>
	</div>
	<hr>
	<h1>Show Emp Details</h1>
	<div class="alert alert-danger">
		<h5>${msg }</h5>
	</div>
	<div class="col-md-8 offset-md-4 mt-4">
	<form action="seedetail" method="post">
		<table>
			<tr>
				<td><label for="name" class="text-white">ENTER EMP NAME:</label></td>
				<td><input type="text" class="name" name="name" placeholder="Enter Character Only" required></td>
			</tr>
		</table>
		<div class="col-md-6 offset-md-1 ml-2 mt-5">
			<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">GO BACK</a>
			<button type="submit" class="btn btn-outline-primary">SEE DETAILS</button>
		</div>
	</form>
	</div>
</body>
</html>