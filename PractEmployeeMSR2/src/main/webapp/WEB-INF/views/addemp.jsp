<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
</head>
<body >
	<div class="container mt-3">
	
		<div class="row">
		
		<div class="col-md-8 offset-md-2">
		
			<h1 class="text-center-mb-3 text-white"><b>FILL THE EMPLOYEE DETAILES</b></h1>
			<div class="alert alert-danger text-center">
				<p>${msg }</p>
			</div>
			<form action="handleemployee" method="post">
			
			<div class="form-group text-white">
				<label for="name">EMPLOYEE NAME:</label>
				<input type="text" 
				       class="form-control"
				       id="name"
				      aria-describedby="emailHelp"
				      name="name" 
				      placeholder="Enter the Employee name" required>
		   </div>
			
			<div class="form-group text-white">
				<label for="profile">EMPLOYEE PROFILE:</label>
				<textarea class="form-control" 
						   name="profile"
						   id="profile"
						 rows="5"
						  placeholder="Enter the employee profile" required>
				 </textarea>
			</div>
			
			<div class="form-group text-white">
			 <label for="salary">EMPLOYEE SALARY:</label>
			 <input type="text"
			 placeholder="Enter  salary" name="salary"
			 class="form-control" id="salary" required>
			</div>
			
			<div class="container text-center">
					<a href="${pageContext.request.contextPath }/"
					class="btn btn-outline-danger">Back</a>
					<button type="submit" class="btn btn-primary">Add</button>
				</div>
			</form>
		</div>
		</div>
	</div>
</body>
</html>