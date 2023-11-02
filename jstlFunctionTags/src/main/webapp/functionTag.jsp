<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    <%@ page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Function Tags example : </h1>
	<hr>
	
	<c:set value="Welcome this is a value in a variable" var="first"></c:set>
	
	<c:if test="${fn:contains(first, 'val') }">
		<h3>It contains the value.</h3>
	</c:if>
	
</body>
</html>