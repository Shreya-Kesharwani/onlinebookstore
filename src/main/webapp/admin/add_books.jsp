<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:Add Books</title>

<c:if test="${not empty succMsg }">
<p class="text-center text-success">${succMsg }</p>
<c:remove var="succMsg" scope="session" />
</c:if>


<c:if test="${not empty failedMsg }">
<p class="text-center text-danger">${failedMsg }</p>
<c:remove var="failedMsg" scope="session" />
</c:if>





<%@include file="allCss.jsp" %>
</head>
<body style="background-color: #f0f2f2;">
<%@include file="navbar.jsp" %>
<div class="container">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<h4 class="text-center">AddBooks</h4>


<form action="../add_books" method="post"
enctype="multipart/form-data">

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Book Name*</label>
    <input name="bname" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  
  
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Author Name*</label>
    <input name="author" type="text" class="form-control" id="exampleInputPassword1" aria-describedby="emailHelp">
  </div>
  
  
  
   <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Price*</label>
    <input name="price" type="number" class="form-control" id="exampleInputPassword1">
  </div>
  
   <div class="mb-3">
    <label for="inputState" class="form-label">Book Categories</label>
   <select id="inputState" name="categories" class="form-control">
  <option selected>--select--</option>
    <option value="New">New Book</option>
  </select>
  </div>
  
    <div class="mb-3">
    <label for="inputState" class="form-label">Book Status</label>
    <select id="inputState" name="status" class="form-control">
  <option selected>--select--</option>
    <option value="Active">Active</option>
     <option value="Inactive">Inactive</option>
  </select>
  </div>
  
  
    <div class="mb-3">
    <label for="exampleFormControlFile1" class="form-label">Upload Photo</label>
    <input name="bimg" type="file" class="form-control" id="exampleFormControlFile1">
  </div>
    
  
  

  <button type="submit" class="btn btn-primary">Add</button>
</form>





</div>
</div>
</div>
</div>
</div>

<div style="margin-top:80px;">
<%@include file="footer.jsp" %>
</div>


</body>
</html>