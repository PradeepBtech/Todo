<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Todo : Home page</title>
       <%@include file="all_js_css.jsp" %>
  </head>
  <body>
    <div class="container">
    <%@include file="navbar.jsp" %>
    
    <div class="card shadow bg-white py-5">
    <img alt="" class="img-fluid mx-auto" style="max-width: 400px;"src="img/pencil.png">
    <h2 class="text-primary text-uppercase text-center mt-3">Start Writing your notes..</h2>
    <div class="container text-center">
  <a href="add_notes.jsp" class="btn btn-info">Start here</a>
    </div>
</div>
   
  </body>
</html>