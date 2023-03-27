<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="./base.jsp"%>		
</head>
<body>
	<div class="container mt-3 mr-3">
		
		<div class="row">
		
			<div class="cal-md-12">
			
			<h1 class="text-center mb-3 text-white "><b>WELCOM TO EMPLOYEE MANAGEMENT SYSTEM</b></h1>
			
				<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">EMP NAME</th>
      <th scope="col">PROFILE</th>
      <th scope="col">SALARY</th>
      <th scope="col">ACTION</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${emps }" var="e">
    <tr class="text-white">
      <th scope="row">EMP${e.id }</th>
      <td>${e.name }</td>
      <td>${e.profile }</td>
      <td class="font-weight-bold">&#x20B9;${e.salary }</td>
      <td>
      <a href="delete/${e.id }"><i class="fa-solid fa-trash text-danger" style="font-size:23px;"></i></a>
      <a href="update/${e.id }"><i class="fa-solid fa-pen-nib text-primary" style="font-size:23px;"></i></a>
      </td>
    </tr>
   </c:forEach>
  </tbody>
</table>
	<div class="container text-center">
		<a href="addemployee" class="btn btn-outline-success">Add Employee</a>
		<a href="empdet" class="btn btn-outline-primary">See Employee details</a>
		
		</div>	
	</div>
	</div>		
	</div>
</body>
</html>
