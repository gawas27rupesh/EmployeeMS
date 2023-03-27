<html>
<head>
	<%@include file="./base.jsp"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	
	<style type="text/css">
	body{
	background-image:linear-gradient(rgba(1,1,1,.7),rgba(1,1,1,.7)),url('https://images.unsplash.com/photo-1473893604213-3df9c15611c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80');
	background-repeat:no-repeat;
    background-attachment:fixed; 
	background-size:cover;
	}
	h1{
	font-family:"Times New Roman";
	}
</style>
</head>
<body>
	<div class="container mt-3">
		
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
		<a href="showemp" class="btn btn-outline-danger">See Employee Detailes by Using ID</a>
	
	</div>	
	</div>
	</div>		
	</div>
</body>
</html>
