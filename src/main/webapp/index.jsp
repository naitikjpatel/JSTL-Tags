<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>This is JSTL Exaple</h2>

<!-- 1.out tag : out tag is alternative of expression tags   . to print the varible we use the out tag -->

<!-- 2.set tag : to create the varible we use the set tags -->

<c:set var="i" value="23" scope="application"></c:set>

<h1><c:out value="${i}"></c:out></h1>

<!-- 3.remove tag: to remove the varible we use this tags -->
	<c:remove var="i"></c:remove>
	
	<!-- if i is not present then Default value will be print on the browser -->
	<h1> <c:out value="${i}">This is default value</c:out> </h1>
	
	<hr/>
	
	<!-- 4: if : test condtion : true -> print .... -->
	<c:set var="n" value="18"></c:set> 
	<c:if test="${n==18}">
		<h1>n is equal to 18 and condition is true</h1>
	</c:if>
	
	
	
	<!-- 5: achive the switch case functionality in the JSTL using : choose ,when and otherwise   -->
	<c:choose>
	
		<c:when test="${n>0 }">
			<h1> <c:out value="${n}"></c:out> is positive number </h1>
		</c:when>
		
		<c:when test="${n<0 }">
			<h1> <c:out value="${n}"></c:out> is negative number</h1>
		</c:when>
		
		
		<!-- this like the default case -->
		<c:otherwise>
		<h1> <c:out value="${n}"></c:out> is zero</h1>
		</c:otherwise>
	</c:choose>
	
	
	
	
	<!-- 6: forEach Tag : for repeating and traversing -->
	<c:set var="x" value="5"></c:set>
	<c:forEach var="j" begin="1" end="10">
		<h1> <c:out value="${x}"></c:out> X <c:out value="${j}"></c:out>  =  <c:out value="${x*j}"></c:out> </h1>
	</c:forEach>
	
	
	<!-- 7: redirect : transfer one jsp to another jsp file or controlller -->
	
	<!--  <c:redirect url="https://www.google.com"></c:redirect>-->
	
	<!-- 8: pass some value in the url -->
	
	<c:url var="myurl" value="https://www.google.com/search">
	<!--  using this way we can pass the value in the url : it is known as url rewritting -->
		<c:param name="q" value="android tutorial by w3school"></c:param>
	</c:url>
	
	
	<h1> <c:out value="${myurl}"></c:out> </h1>
	
	<c:redirect url="${myurl}"></c:redirect>
	

</body>
</html>