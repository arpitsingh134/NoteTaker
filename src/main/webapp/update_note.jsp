<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Note</title>
<%@  include file="globalHeader.jsp"%>



</head>
<body>

				<%
				int noteID=Integer.parseInt(request.getParameter("note_id").trim());
				Session s = FactoryProvider.getFactory().openSession();
				Note note = (Note)s.get(Note.class,noteID);
				
				%>


	<div class="container">

		<%@ include file="navbar.jsp"%>
		<br>
		<form action="UpdateNoteServlet" method="post">
			<input type="hidden" name="note_id" value="<%=note.getId() %>" >  
			<div class="form-group">
				<label for="title">Title</label> <input type="text"
					class="form-control" name="title"  placeholder="Enter title" value="<%=note.getTitle() %>">
			</div>
			<div class="form-group">
				<label for="content" >Content</label>
				<textarea class="form-control" rows="2" cols="3"
					style="height: 300px;" name="content" ><%=note.getContent() %></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-outline-primary">Save Changes</button>
			</div>
		</form>
		


	</div>
</body>
</html>