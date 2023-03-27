<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
     <%@page isELIgnored="false" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="./base.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>DETAILS OF EMPLOYEE...</h1>
	
	<table class="table">
	  <thead class="thead-dark">
	    <tr>
	      <th scope="col">ID</th>
	      <th scope="col">NAME</th>
	      <th scope="col">PROFILE</th>
	      <th scope="col">SALARY</th>
	    </tr>
	  </thead>
	  
	  <tbody>
	  <c:forEach items="${employee }" var="e">
	    <tr class="text-white">
	    	 <td>${e.id }</td>
	    	 <td>${e.name }</td>
	   		 <td>${e.profile }</td>
	   	     <td class="font-weight-bold">&#x20B9;${e.salary }</td>
	    </tr>
	   </c:forEach>   
	  </tbody>
</table>
	<div class="text-center">
		<a href="empdet" class="btn btn-outline-danger">GO BACK</a>
	</div>
</body>
</html>