package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


public class UpdateServlet extends HttpServlet {
	public void service(HttpServletRequest req,HttpServletResponse res)
	throws ServletException,IOException{
		res.setContentType("text/html");
		String title=req.getParameter("title");
		String content=req.getParameter("content");
		int noteId=Integer.parseInt(req.getParameter("noteId").trim());
		Session s=FactoryProvider.getFactory().openSession();
		Transaction tx=s.beginTransaction();
		//for update we want that the note object will Persistance state.. through
		//GET
		Note note=s.get(Note.class, noteId);
		note.setContent(content);
		note.setTitle(title);
		note.setAddedDate(new Date());
		tx.commit();
		s.close();
		res.sendRedirect("all_notes.jsp");
		
	}
}
