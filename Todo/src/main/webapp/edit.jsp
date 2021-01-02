<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.hibernate.*" %>
    <%@page import="java.util.*" %>
    <%@page import="com.helper.*" %>
    <%@page import="com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div clas="container">
<%@include file="navbar.jsp" %>
<h3>Edit Your Note..</h3>
<br>
<%
int noteId=Integer.parseInt(request.getParameter("note_id").trim());
Session s=FactoryProvider.getFactory().openSession();
Note note=(Note)s.get(Note.class,noteId);
%>

<form action="UpdateServlet" method="post">
<input type="hidden" name="noteId" value="<%=note.getId() %>"/>
  <div class="form-group">
    <label for="title">Note title</label>
    <input type="text" class="form-control"
     id="title" aria-describedby="emailHelp"
     name="title" required placeholder="Enter here"
     value="<%=note.getTitle()%>"/>

  </div>
  <div class="form-group">
    <label for="content">Note content</label>
    <textarea id="content" 
    class="form-control" 
    style="height:250px;" 
    name="content" required placeholder="Enter your content..."><%=note.getContent() %></textarea>
  </div>
 <div class="container text-center">
  <button type="submit" class="btn btn-info">Save</button>
  </div>
</form>


</div>

</body>
</html>