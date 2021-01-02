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
<title>All Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
<%@include file="navbar.jsp" %>
<br>
<div class="row">
<div class="col-12">
<%
Session s=FactoryProvider.getFactory().openSession();
Query q=s.createQuery("from Note");
List<Note> list=q.list();
for(Note note:list){
%>
<div class="container text-center">
<div class="card mt-3">
<img class="card-img-top m-4 mx-auto" style="max-width:100px;"src="img/pencil.png" alt="Card image cap">
<div class="card-body px-5">
  <h5 class="card-title"><%=note.getTitle() %></h5>
  </div>
  <p class="card-text"><%=note.getContent() %></p>
  <p><b class="text-primary"><%=note.getAddedDate() %></b></p>
 <div class="container text-center mt-2s">
  <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
   <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Edit</a>
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