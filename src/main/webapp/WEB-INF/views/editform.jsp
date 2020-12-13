<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Event</title>
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
				<h1 class="title">Edit Event</h1>
					<form:form commandName="u" method="POST" action="../editok">
						<form:hidden path="id"/>
							<div class="row">
								<div class="col-2">
									<div class="input-group">
										<label for="title" class="label">Title</label>
										<form:input path="title" class="input-style"/>
									</div>
								</div>
								<div class="col-2">
									<div class="input-group">
										<label for="subject" class="label">Subject</label>
										<form:input path="subject" class="input-style"/>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-2">
									<div class="input-group">
										<label for="duedate" class="label">Due Date</label>
										<form:input path="duedate" id="datepicker" class="input-style"/>
									</div>
								</div>
								<div class="col-2">
									<div class="input-group">
										<label for="description" class="label">Description</label>
										<form:textarea rows="4" path="description" class="input-style" style="width: 100%;"/>
									</div>
								</div>
							</div>
							<div class="button-group" style="margin-left:50px;">
								<button type="button" value="Cancel" class="button-style" onclick="history.back()" >Back</button>
								<button type="submit" value="Submit" class="button-style">Save</button>
							</div>
					</form:form>
			</div>
		</div>
	</div>
</div>

</body>
</html>