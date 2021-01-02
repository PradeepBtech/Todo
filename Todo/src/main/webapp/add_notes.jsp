<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
   <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
   <%@include file="navbar.jsp" %>
   <br>
   <h3>Please fill the add note details...</h3>
   	<%@include file="component/message.jsp" %>
   <!-- This is add form -->
   <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note title</label>
    <input type="text" class="form-control"
     id="title" aria-describedby="emailHelp"
     name="title" required placeholder="Enter here"/>

  </div>
  <div class="form-group">
    <label for="content">Note content</label>
    <textarea id="content" 
    class="form-control" 
    style="height:250px;" 
    name="content" required placeholder="Enter your content..."></textarea>
  </div>
 <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
  </div>
</form>
   
   
   
   </div>
</body>
</html>