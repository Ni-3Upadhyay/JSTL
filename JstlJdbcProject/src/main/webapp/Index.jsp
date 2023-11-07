<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.Connection"  %>
<%@ page import="connection.DBConnect" %>    
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@include file="AllCss.jsp" %>
    
    <%@page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body class="bg-light">
	
	 <c:import url="NavBar.jsp"></c:import>
	 
	 <%-- <% Connection conn = DBConnect.getConn();
	 	out.print(conn);
	 %> --%>
	 
	 
	 
	 <div class="container p-3">
	 	<div class="card">
	 		<div class="card-body">
	 	
	 
	 <p class="text-center  fs-1">All Student Details</p> 
	
	<table class="table">
  <thead>
    <tr>
      <th scope="col">Full Name</th>
      <th scope="col">Email</th>
      <th scope="col">DOB</th>
      <th scope="col">Qualification</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td><a href="editStudent.jsp" class="btn btn-sm btn-primary">Edit</a>
      	<a href="" class="btn btn-sm btn-danger ms-1">Delete</a>
      </td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td><a href="editStudent.jsp" class="btn btn-sm btn-primary">Edit</a>
      	<a href="" class="btn btn-sm btn-danger ms-1">Delete</a></td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td >Larry the Bird</td>
      <td>Thornton</td>
      <td>@twitter</td>
      <td><a href="editStudent.jsp"  class="btn btn-sm btn-primary">Edit</a>
      	<a href="" class="btn btn-sm btn-danger ms-1">Delete</a></td>
    </tr>
    
  </tbody>
</table>

	</div>
	 	</div>	
	</div>
</body>
</html>