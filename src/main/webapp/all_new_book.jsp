<%@page import="java.util.List" %>
<%@page import="com.DB.DBConnect" %>
<%@page import="com.DAO.BookDAOImpl" %>
<%@page import="com.entity.BookDtls" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Recent Books</title>
<%@include file="all_componenet/allCss.jsp" %>
<style type="text/css">
.crd-ho:hover{
background-color: #fcf7f7;

}

</style>

</head>
<body>
    <%@include file = "all_componenet/navbar.jsp" %>
    <div class="container-fluid">
        <div class="row p-3">
           <%
     BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
     List<BookDtls> list =dao.getAllNewBook();
     for(BookDtls b:list)
     {
     %>
     
      <div class="col-md-3">
     <div class="card crd-ho">
     <div class="card-body text-center">
     <img alt="" src="book/<%=b.getPhotoName() %>"
      style="width:100px; height: 150px" class="img-thumblin">
     <p><%=b.getBookName() %></p>
     <p><%=b.getAuthor()  %></p>
     <p>Categories:<%=b.getBookCategory() %></p>
     
      
    <!--  <div class="row">
     <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
         <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
             <a href="" class="btn btn-danger btn-sm ml-1">750</a>
             </div>-->
             
             
             <!-- Yaha pe maine code change kiya hai class ka naam d-inline block rakha hai uper wala code original hai -->
            
             <div>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                            </div>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            </div>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %><i class="fa-solid fa-indian-rupee-sign"></i></a>
                            </div>
                        </div>
             <!-- yaha tak change kiya hai -->
     
 
     </div>
     </div>
     </div>
    
  
   
    <% 	 
     }
     %>
        </div>
    </div>
</body>
</html>