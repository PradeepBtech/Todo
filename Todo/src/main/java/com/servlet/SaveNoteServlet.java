package com.servlet;

import java.io.*;
import java.util.Date;

import javax.servlet.*;
import javax.servlet.http.*;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	public void service(HttpServletRequest req,HttpServletResponse res)
	throws ServletException,IOException{
		
			//title,content fetch
			String title=req.getParameter("title");
			String content=req.getParameter("content");
			Note note=new Note(title,content,new Date());
			
		//	System.out.println(note.getId()+":"+note.getTitle());
		//hibrnate:save()
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			s.save(note);
			 tx.commit();
			s.close();
			res.setContentType("text/html");
			//PrintWriter out=res.getWriter();
			//out.println("<h3>Note is added successfully!!!</h3>");
			 HttpSession httpsession=req.getSession();
		     httpsession.setAttribute("message", "Thank you for adding  "+title+"!!!");
		     res.sendRedirect("add_notes.jsp");
		     return;
		
	}

}
