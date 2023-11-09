<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@include file="AllCss.jsp" %>
    <%@ page import="java.sql.Connection " %>
<%@ page import="connection.DBConnect" %>  
<%@ page import="DAO.DaoAddStudent" %>  
<%@ page import="Entity.Student" %> 
<%@ page import="java.util.*" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="bg-light">

	<c:import url="NavBar.jsp"></c:import>
	
	
	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Student </p>
						
	
	<%
			int id =Integer.parseInt( request.getParameter("id"));
	
			DaoAddStudent dao = new DaoAddStudent(DBConnect.getConn());
	
			Student s = dao.getStudentById(id);
			
	
	%>
						
						
					
					<form action="update" method="post">
					
	 <div class="mb-3">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" name="name" id="name" value="<%= s.getName() %>" aria-describedby="emailHelp">
  
	<div class="mb-3">
    <label for="dob" class="form-label">Date Of Birth</label>
    <input type="date" class="form-control" name="dob" id="dob" value="<%= s.getDob() %>" aria-describedby="emailHelp">
  
  <div class="mb-3">
    <label for="email" class="form-label">Email address</label>
    <input type="email" class="form-control" name="email" id="email" value="<%= s.getEmail() %>" aria-describedby="emailHelp">
   
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Qualification</label>
    <input type="text" class="form-control" name="qualification" value="<%= s.getQualification() %>" id="exampleInputPassword1">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  
  <input type="hidden" name="id" value="<%= s.getId() %>">
  <button type="submit" class="btn btn-primary col-md-12">Update</button>
</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>
	

</body>
</html>