<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Parisienne&display=swap" rel="stylesheet">
</head>
<body class="text-center"> 

	<form class="form-signin" method="post" action="loginOk">
		<h1 class="h3 mb-3">Spring Planner</h1>
		<label for="inputID" class="sr-only">User ID  </label>
		<input type="text" id="inputID" name='userid' class="form-control" placeholder="User ID">
		<label for="inputPassword" class="sr-only">Password</label>
		<input type="password" id="inputPassword" name='password' class="form-control" placeholder="Password">
		<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
	</form>
	
</body>
</html>