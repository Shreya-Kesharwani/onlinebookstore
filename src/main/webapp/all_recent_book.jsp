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
            BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
            List<BookDtls> list2 = dao2.getAllRecentBook();
            for (BookDtls b : list2) {
            %>
            <div class="col-md-3 mb-3">
                <div class="card crd-ho">
                    <div class="card-body text-center">
                        <img alt="" src="book/<%= b.getPhotoName() %>" style="width:100px; height: 150px" class="img-thumbnail">
                        <p><%= b.getBookName() %></p>
                        <p><%= b.getAuthor() %></p>
                        <p>Categories: <%= b.getBookCategory() %></p>
                        <div>
                            <% if (b.getBookCategory().equals("Old")) { %>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            </div>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-danger btn-sm ml-1">
                                    <%= b.getPrice() %>
                                    <i class="fa-solid fa-indian-rupee-sign"></i>
                                </a>
                            </div>
                            <% } else { %>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-danger btn-sm ml-2">
                                    <i class="fa-solid fa-cart-plus"></i>Add Cart</a>
                            </div>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-success btn-sm ml-1">View Details</a>
                            </div>
                            <div class="d-inline-block">
                                <a href="" class="btn btn-danger btn-sm ml-1">
                                    <%= b.getPrice() %>
                                    <i class="fa-solid fa-indian-rupee-sign"></i>
                                </a>
                            </div>
                            <% } %>
                        </div>
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