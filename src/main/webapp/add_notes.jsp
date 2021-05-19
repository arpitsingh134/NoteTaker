<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddNotes</title>
<%@  include file="globalHeader.jsp"%>

</head>
<body>

	<div class="container">

		<%@ include file="navbar.jsp"%>


		<br>
		<h1 class="heading">Add Your Note Here</h1>
		<br>
		<form action="SavePostServlet" method="post">
			<div class="form-group">
				<label for="title">Title</label> <input type="text"
					class="form-control" name="title"  placeholder="Enter title">
			</div>
			<div class="form-group">
				<label for="content">Content</label>
				<textarea class="form-control" rows="2" cols="3"
					style="height: 300px;" name="content"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-outline-primary">Submit</button>
			</div>
		</form>
	</div>



</body>
</html>