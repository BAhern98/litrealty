<%-- 
    Document   : index
    Created on : 18 Oct 2019, 11:37:54
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


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script src="js/tables.js" </script>
        <div class="container-fluid">
       <jsp:include page="/Header.jsp" />
            <div class="goBack">
                        <a style="text-align: left;"href="javascript:history.back()">Go Back</a>
                    </div>

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
            <c:forEach  items="${list}" var ="aProperty" >

                <tr>
                    <td>${aProperty.id}</td>
                    <td>${aProperty.street}</td>
                    <td>${aProperty.city}</td>
                    <td><fmt:formatNumber value="${aProperty.price}" type="currency" currencySymbol="&euro;" maxFractionDigits="2"/></td>
                         <td><img src="images/BER/${aProperty.berRating}.png"/></td>
                    <td><a href="displayProperty?propertyId=${aProperty.id}"><img src="images/properties/thumbs/${aProperty.photo}"></td>
                 
                </tr>

            </c:forEach>  
        </tbody>





    </table>

</div>


</div>
</body>

</html>
