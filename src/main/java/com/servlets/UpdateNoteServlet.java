package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class UpdateNoteServlet
 */
@WebServlet("/UpdateNoteServlet")
public class UpdateNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		try {
			
			int noteID=Integer.parseInt(request.getParameter("note_id").trim());
			 String title=request.getParameter("title");
			 String content=request.getParameter("content");
			 Session session=FactoryProvider.getFactory().openSession();
			 Transaction tx=session.beginTransaction();
			 
			 Note note =(Note)session.get(Note.class, noteID);
			 
			 note.setTitle(title);
			 note.setContent(content);
			 note.setAddedDate(new Date());
			 
			 
			// System.out.println(note.getId()+"::"+note.getTitle());
			 
			 tx.commit();
			 session.close();
			 
			 response.sendRedirect("show_notes.jsp");
			 

			 
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
