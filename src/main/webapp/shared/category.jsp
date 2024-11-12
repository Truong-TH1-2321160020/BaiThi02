<%-- 
    Document   : Left
    Created on : Sep 28, 2023, 12:08:09 PM
    Author     : KHOACNTT
--%>
<%@page import="model.TheLoai"%>
<%@page import="dao.TheLoaiDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     TheLoaiDAO  loaiDAO = new TheLoaiDAO();
     ArrayList<TheLoai> dsLoai= loaiDAO.getAll();
%>

<div class="card mb-3">
    <h3 class="card-header">Danh mục loại</h3>  
        <ul class="list-group list-group-flush">
            <%
               for(TheLoai x : dsLoai)
               {
            %>
             <li class="list-group-item"><a class="text-decoration-none" href="product.jsp?maloai=<%=x.getMaloai() %>"> <%=x.getTenloai() %> </a></li>           
            <%
               }
            %>
        </ul>   
</div>
