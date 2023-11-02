<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
   <%@ page isELIgnored="false" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>JSTL CORe Tags</h1>
	<hr>
	
<c:out value="Nitin Updahyay"></c:out>	

<c:import url="Demo.jsp" var="he"></c:import>
	
 <!-- <c:out value="${he}"></c:out> -->	 

<c:set value="${500*5 }" var="result" scope="session"></c:set>
<c:out value="${result }"></c:out>

<c:remove var="result"/>

<h3>After  : </h3>
<c:out value="${result }"></c:out>

<!-- <c:catch var="exception">

		<% int c = 10/0; %>

</c:catch>

<c:if test="${exception!=null }">

		<p>${exception }</p>
		<p>${exception.message }</p>
</c:if> -->


<c:set value="${2 }" var="age"></c:set>

<!--  

 <c:if test="${age>18 }">

	<p>age is more than 18</p>

</c:if>

 -->		


<c:choose>

<c:when test="${age>18 }">
	<p>Adult</p>
</c:when>
<c:when test="${age>10 }">
	<p>teen</p>
</c:when>
<c:otherwise>
	check on your own
</c:otherwise>

</c:choose>


<c:forEach var="num" begin="1" end="18">

	<c:out value="${num }"></c:out>

</c:forEach>

<c:forTokens items="Nitin-is-learning-jSTL-core" delims="-" var="string">

	<p><c:out value="${string }"></c:out></p>

</c:forTokens>

<c:url value="/nitin.jsp" var="pageUrl">

	<c:param name="email" value="Nitin2n9@gmail.com"></c:param>
	<c:param name="password" value="buteiskfe"></c:param>

</c:url>


<c:redirect url="/Demo.jsp"></c:redirect>

	${pageUrl}








</body>
</html>