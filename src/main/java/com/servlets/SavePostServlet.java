package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;
import com.sun.tools.classfile.Attribute.Factory;

/**
 * Servlet implementation class SavePostServlet
 */
@WebServlet("/SavePostServlet")
public class SavePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SavePostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		response.setContentType("text/html");
        // Writing the message on the web page      
        PrintWriter out = response.getWriter(); 
		
		
	 try {
		
		 String title=request.getParameter("title");
		 String content=request.getParameter("content");
		 Note note =new Note(title, content, new Date());
		 System.out.println(note.getId()+"::"+note.getTitle());

		 Session session=FactoryProvider.getFactory().openSession();
		 Transaction tx=session.beginTransaction();
		 
		 
		 session.save(note);
		
		 tx.commit();
		 session.close();
		 //FactoryProvider.closeFactory();
		 
		 out.print("<h1 sytle='text-align:center;'>data saved successfully</h1>");
		 out.print("<h1 style='text-align:center;'><a href='show_notes.jsp'>View Notes</a></h1>");
		 
	} catch (Exception e) {
		// TODO: handle exception
	}
		
		
	}
	
	

}
