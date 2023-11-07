<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
	
	
	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Student </p>
					
					<form action="" method="post">
					
	 <div class="mb-3">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" id="name" aria-describedby="emailHelp">
  
	<div class="mb-3">
    <label for="dob" class="form-label">Date Of Birth</label>
    <input type="date" class="form-control" id="dob" aria-describedby="emailHelp">
  
  <div class="mb-3">
    <label for="email" class="form-label">Email address</label>
    <input type="email" class="form-control" id="email" aria-describedby="emailHelp">
   
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Qualification</label>
    <input type="text" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary col-md-12">Update</button>
</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>
	

</body>
</html>