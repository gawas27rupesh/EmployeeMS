<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<style type="text/css">
	body{
	background-image:linear-gradient(rgba(1,1,1,.4),rgba(1,1,1,.4)),url('https://images.unsplash.com/photo-1473893604213-3df9c15611c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80');
	background-repeat:no-repeat;
    background-attachment:fixed; 
	background-size:cover;
	}
</style>
</head>
<body>
	<div class="container mt-3">
	
		<div class="row">
		
		<div class="col-md-8 offset-md-3">
		
			<h1 class="text-center-mb-3 text-white"><b>CHANGE EMPLOYEE DETAILES</b></h1>
			
			<form action="${pageContext.request.contextPath }/handleemployee" method="post">
			<!--Return the portion of the request URI that indicates the context of the request  -->
			
			<input type="hidden" value="${employee.id }" name="id" >
			
			<div class="form-group text-white">
				<label for="name">EMPLOYEE NAME:</label>
				<input type="text" 
				class="form-control"
				 id="name"
				  aria-describedby="emailHelp"
				name="name" 
				placeholder="Enter the employee name here"
				value="${employee.name}"
				required>
			</div>
			
			<div class="form-group text-white">
				<label for="profile">EMPLOYEE PROFILE:</label>
				<textarea class="form-control" 
						   name="profile"
						   id="profile"
						 rows="5"
						  placeholder="Enter the employee profile" required>${employee.profile }
				 </textarea>
			</div>
			
			<div class="form-group text-white">
			<label for="salary">EMPLOYEE SALARY:</label>
			<input type="text"
					placeholder="Enter Employee salary" 
					name="salary"
					class="form-control" 
					id="salary" value="${employee.salary}" required>
			</div>
			
			<div class="container text-center">
				<a href="${pageContext.request.contextPath }/"
				class="btn btn-outline-danger">Back</a>
				<button type="submit" class="btn btn-warning">Update</button>
			</div>
			</form>
		</div>
		</div>
	</div>
</body>
</html>