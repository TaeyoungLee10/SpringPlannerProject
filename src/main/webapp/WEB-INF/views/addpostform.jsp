<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Event</title>
<link href="<c:url value="/resources/css/form.css" />" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@500&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function () {
		$("#datepicker").datepicker();
	});
</script>

</head>
<body>
<div class="page_wrapper" style="padding-top: 130px; padding-bottom: 130px;">
	<div class="form_box">
		<div class="card">
			<div class="card_body">
				<h1 class="title">Add Event</h1>
					<form action="addok" method="post">
						<div class="row">
							<div class="col-2">
								<div class="input-group">
									<label for="title" class="label">Title</label>
									<input type="text" name="title" class="input-style" id="title">
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label for="subject" class="label">Subject</label>
									<input type="text" name="subject" class="input-style" id="subject">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-2">
								<div class="input-group">
									<label for="duedate" class="label">Due Date</label>
									<input type="text" name="duedate" class="input-style" id="datepicker">
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label for="description" class="label">Description</label>
									<textarea class="input-style" id="description" rows="4" name="description"></textarea>
								</div>
							</div>
						</div>
						<div class="button-group">
							<button type="button" class="button-style" onclick="location.href='list'">Home</button>
							<button type="submit" class="button-style">Create</button>
						</div>
					</form>
			</div>
		</div>
	</div>
</div>

</body>
</html>