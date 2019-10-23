<%-- 
    Document   : index
    Created on : 18 Oct 2019, 11:37:54
    Author     : Brendan
--%>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">

<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <script>$(document).ready(function () {
                $('#propertydatatable').DataTable();
            });</script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <table id="propertydatatable" class ="display" width='1200' border='1'>
            <thead>
              

            <tr>
                <th>ID</th>
                <th>Street</th>
                <th>City</th>              
                <th>Price</th>

                <th>Image</th>
                <th>View</th>
                <th>Edit</th>
                <th>Delete</th>

                  


                </tr>
            </thead>


  <tbody>
            <c:forEach  items="${list}" var ="aProperty" >
              
                    <tr>
                        <td>${aProperty.id}</td>
                        <td>${aProperty.street}</td>
                        <td>${aProperty.city}</td>
                          <td><fmt:formatNumber value="${aProperty.price}" type="currency" currencySymbol="&euro;" maxFractionDigits="2"/> </td>
                        <td><img src="images/properties/thumbs/${aProperty.photo}"></td>
                        <td><a href="ViewProperty?id=${aProperty.id}">View</a></td>
                        <td><a href="EditProperty?id=${aProperty.id}">Edit</a></td>
                        <td><a href="DeleteProperty?id=${aProperty.id}">Delete</a></td>
                    </tr>
              
            </c:forEach>  
  </tbody>





        </table>
       
    </body>
</html>
