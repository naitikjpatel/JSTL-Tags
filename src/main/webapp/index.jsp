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


</body>
</html>