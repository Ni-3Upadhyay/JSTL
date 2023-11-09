<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.Connection " %>
<%@ page import="connection.DBConnect" %>  
<%@ page import="DAO.DaoAddStudent" %>  
<%@ page import="Entity.Student" %> 
<%@ page import="java.util.*" %>   
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@include file="AllCss.jsp" %>
    
   
    
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
	
	<c:if test="${not empty succMsg}">
		<p class="text-center text-success ">${succMsg}</p>
		<c:remove var="succMsg"/>
	</c:if>
	<c:if test="${not empty failMsg }">
		<p class="text-center text-success ">${failMsg}</p>
		<c:remove var="failMsg"/>
	</c:if>
	
	
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
  
  <%
  		DaoAddStudent dao = new DaoAddStudent(DBConnect.getConn());
  		List<Student> stud = dao.getAllStudent(); 
  		
  		for(Student s:stud){%>
  			
  			<tr>
      <th scope="row"><%= s.getName() %></th>
      <td><%= s.getEmail() %></td>
      <td><%= s.getDob() %></td>
      <td><%= s.getQualification() %></td>
      <td><a href="editStudent.jsp?id=<%= s.getId() %>" class="btn btn-sm btn-primary">Edit</a>
      	<a href="delete?id=<%= s.getId() %>" class="btn btn-sm btn-danger ms-1">Delete</a>
      </td>
    </tr>
  						
  		<%}
  
  %>
  
  
  
    
  </tbody>
</table>

	</div>
	 	</div>	
	</div>
</body>
</html>