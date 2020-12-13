<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Planner</title>
<link href="<c:url value="/resources/css/form.css" />" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@500&display=swap" rel="stylesheet">
</head>
<body>

<div class="page_wrapper" style="padding-top: 130px; padding-bottom: 130px;">
	<div class="form_box" style="max-width: 700px">
		<div class="card">
			<div class="card_body">
				<h1 class="title">Spring Planner</h1>
				<table id="list" width="90%">
					<tr>
						<th>Title</th>
						<th>Due Date</th>
						<th>View</th>
					</tr>
					
					<c:forEach items="${list}" var="u">
						<tr>
							<td>${u.title}</td>
							<td>${u.duedate}</td>
							<td><a href="view/${u.id}">View</a></td>
						</tr>
					</c:forEach>
				</table>
				<br>
				<div class="button-group" style="margin-left:0;">
					<button type="button" class="button-style" onclick="location.href='add'">Add</button>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>