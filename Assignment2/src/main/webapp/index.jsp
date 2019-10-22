<%-- 
    Document   : index
    Created on : 18 Oct 2019, 11:37:54
    Author     : Brendan
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <table width='1200' border='1'>

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


            <c:forEach  items="${list}" var ="aProperty" >
                <tr>
                    <td>${aProperty.id}</td>
                    <td>${aProperty.street}</td>
                    <td>${aProperty.city}</td>
                    <td>${aProperty.price}</td>
                    <td><img src="images/properties/thumbs/${aProperty.photo}"></td>
                    <td><a href="ViewProperty?id=${aProperty.id}">View</a></td>
                    <td><a href="EditProperty?id=${aProperty.id}">Edit</a></td>
                    <td><a href="DeleteProperty?id=${aProperty.id}">Delete</a></td>
                </tr>

            </c:forEach>  





        </table>
    </body>
</html>