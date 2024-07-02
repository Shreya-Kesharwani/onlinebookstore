<%@ page import="java.util.List" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.entity.BookDtls" %>
<%@ page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_componenet/allCss.jsp" %>
<style type="text/css">
.back-img{
background:url("img/lib_book1.jpg");

height: 70vh;
width:100%
background-repeat:no-repeat;
background-size : cover;
}
.crd-ho:hover{
background-color: #fcf7f7;

}

</style>
      </head>
<body style="background-color: #f7f7f7;">
     <%@include file = "all_componenet/navbar.jsp" %>
     <div class="container-fluid back-img">
     <h2 class="text-center text-white">Ebook Management System</h2>
     </div>
     
    
     
     <!-- Start Recent Book -->
     
     <div class="container" >
     <h3 class="text-center">Recent Book</h3>
     <div class="row">
     <%
     BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
     List<BookDtls> list2=dao2.getRecentBooks();
     for(BookDtls b:list2)
     {
     %>
       <div class="col-md-3">
     <div class="card crd-ho">
     <div class="card-body text-center">
     <img alt="" src="book/<%=b.getPhotoName() %>"
      style="width:150px; height: 200px" class="img-thumblin">
      
     <p><%=b.getBookName()%></p>
     <p><%=b.getAuthor() %></p>



<p>
  <% 
  if(b.getBookCategory().equals("Old"))
  {%>
  
  Categories:<%=b.getBookCategory() %></p>
       
         <div>
       
     
                       
                            <div class="d-inline-block">
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            </div>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %>
                                <i class="fa-solid fa-indian-rupee-sign"></i>
                                </a>
                            </div>
                        </div>
  <%}else{
  %>
	  Categories:<%=b.getBookCategory() %></p>
     <div >
     
                            <div class="d-inline-block">
                                <a href="" class="btn btn-danger btn-sm ml-2">
                                <i class="fa-solid fa-cart-plus"></i>Add Cart</a>
                            </div>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            </div>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %><i class="fa-solid fa-indian-rupee-sign"></i></a>
                            </div>
                        </div>  
  <%
  }
  %>
  

     </div>
     </div>
     </div>
     
     
     <%
     } 
     %>
     
     </div>
   
     </div>
     
     
     
     
          
     
   <div class="text-center mt-1">
   <a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white">View all</a>
   </div>
   
     </div>
     
     <!-- End of Recent Book -->
     
     
     
     
     <hr>
     
     <!-- Start new Book -->
     
     <div class="container" >
     <h3 class="text-center">New Book</h3>
     <div class="row">
   
     <%
     BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
     List<BookDtls> list =dao.getNewBook();
     for(BookDtls b:list)
     {
     %>
     
      <div class="col-md-3">
     <div class="card crd-ho">
     <div class="card-body text-center">
     <img alt="" src="book/<%=b.getPhotoName() %>"
      style="width:150px; height: 200px" class="img-thumblin">
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
     
     
    
     
     
     
     
          
     
 
     
     
    <!--        <div class="col-md-3">
     <div class="card crd-ho">
     <div class="card-body text-center">
     <img alt="" src="book/java.png"
      style="width:150px; height: 200px" class="img-thumblin">
<p>Java Programming</p>
     <p>E Balagurusami</p>
     <p>Categories:New</p>
     
    <!--  
     <div class="row">
     <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
         <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
             <a href="" class="btn btn-danger btn-sm ml-1">750</a>
             </div>
             -->
             
             <!-- Yaha pe maine code change kiya hai class ka naam d-inline block rakha hai uper wala code original hai -->
           
           <!--  
             <div>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>
                            </div>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            </div>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-danger btn-sm ml-1">750</a>
                            </div>
                        </div>-->  
             <!-- yaha tak change kiya hai -->
     
 <!--  
     </div>
     </div>
     -->
     
     
    <!--  </div>-->
     
     
     
       
     
     </div>
     
   <div class="text-center mt-1">
   <a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View all</a>
   </div>
   
     </div>
     
     <!-- End of new Book -->
     
     
     
     
     
         <hr>
     
     <!-- Start Old Book -->
     
     <div class="container" >
     <h3 class="text-center">Old Book</h3>
     <div class="row">
     
     
     <%
     BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
     List<BookDtls> list3=dao3.getOldBooks();
     for(BookDtls b:list3)
     {
     %>
       <div class="col-md-3">
     <div class="card crd-ho">
     <div class="card-body text-center">
     <img alt="" src="book/<%=b.getPhotoName() %>"
      style="width:150px; height: 200px" class="img-thumblin">
      
     <p><%=b.getBookName()%></p>
     <p><%=b.getAuthor() %></p>



<p><%=b.getBookCategory() %></p>
  <div>
                           
                            <div class="d-inline-block">
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            </div>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice() %><i class="fa-solid fa-indian-rupee-sign"></i></a>
                            </div>
                        </div>
  

     </div>
     </div>
     </div>
     
     
     <%
     } 
     %>
     
</div>
     
   <div class="text-center mt-1">
   <a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View all</a>
   </div>
   
     </div>
     
     <!-- End of Old Book -->  
     
     <%@include file="all_componenet/footer.jsp" %>
     
     
     
     
     
     
     

     
     
</body>
</html>