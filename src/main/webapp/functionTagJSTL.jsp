<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- JSTL function tags provide the functionality to provide the string manipulation functions -->
<!--  here we neeed to add the taglib library for the functon and core tags -->
<h1>Function tags</h1>
<p>This page is all about using functions tags</p>


<c:set var="name" value="BHARAT"></c:set>
<h1><c:out value="${name}"></c:out></h1>
<h1>Length Of name is : <c:out value="${fn:lenght(name)}"></c:out> </h1>

<h1>Lowercase  :  <c:out value="${fn:toLowerCase(name) }"></c:out></h1>

<h1>Contains :  <c:out value="${fn:contains(name,'B')}"></c:out></h1>
</body>
</html>