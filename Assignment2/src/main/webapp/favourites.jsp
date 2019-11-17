<%-- 
    Document   : favourites
    Created on : 31 Oct 2019, 11:05:11
    Author     : Brendan
--%>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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
         
                <div class="indexMain">
                           <jsp:include page="/Header.jsp" />
                    <div class="goBack">
                        <a style="text-align: left;"href="javascript:history.back()">Go Back</a>
                    </div>
               
                    <center> <h2>  Favourites </h2></center>

               

                    <c:choose>
                        <c:when test="${favourites != null && favourites != '[null]' && favourites != '[]'}">
                           <table id="propertydatatable" class ="display" width='1200' border='1'>
 <thead>
                      <tr>
                            <th>ID</th>
                            <th>Street</th>
                            <th>City</th>              
                            <th>Price</th>
                            <th>Ber Rating</th>
                            <th>Image</th>
  
                        </tr>
                </thead>
                <tbody>
                    <c:forEach items = "${favourites}" var = "favourite"> 
                        <tr>
                     

                    <td>${favourite.id}</td>
                    <td>${favourite.street}</td>
                    <td>${favourite.city}</td>
                <td><fmt:formatNumber value="${favourite.price}" type="currency" currencySymbol="&euro;" maxFractionDigits="2"/></td>
                    <td><img src="images/BER/${favourite.berRating}.png"/></td>
                   
                     <td><a href="displayProperty?propertyId=${favourite.id}"><img src="images/properties/thumbs/${favourite.photo}"></td>
                </tr>
             
            </c:forEach>
           </tbody>
                            </table>
                        </c:when>
                        <c:otherwise>
                           <center> <p>Favourite Properties you like to add them to this page<p></center>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
</div>
</body>
</html>
