<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShowNotes</title>
<%@  include file="globalHeader.jsp"%>
</head>
<body>

	<div class="container">

		<%@ include file="navbar.jsp"%>




		<h1 class="text-uppercase mt-2">All Notes:</h1>
		

		<div class="row">

			<div class="col-12">

				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> notes = q.list();
				for (Note note : notes) {
				%>

				<div class="card mt-3">

					<img class="card-img-top mx-auto ml-3 mt-4" src="img/pencil.png"
						style="max-width: 100px" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<small id="dateAdded" class="form-text text-muted mb-2 mt-0">Note Added on :<%=note.getAddedDate() %></small>
						<p class="card-text">
							<%=note.getContent()%>
						</p>
						<div class="container text-center mt-2">
							<a href="update_note.jsp?note_id=<%=note.getId() %>" class="btn  btn-outline-primary"  >Update</a>
							<a href="DeleteNoteServlet?note_id=<%=note.getId() %>" class="btn  btn-outline-danger">Delete</a>
						</div>

					</div>


				</div>





				<%
				}

				s.close();
				%>



			</div>
		</div>




	</div>



</body>
</html>