<%-- 
    Document   : EditProperty
    Created on : 8 Nov 2019, 09:51:29
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
        <div class="container-fluid">
            <jsp:include page="/Header.jsp" />
            <div class="goBack">
                <a style="text-align: left;"href="javascript:history.back()">Go Back</a>
            </div>
            <form action="SaveEditProperty" method="post">
                <div class="form-group">
                    Street Address: <input type="text" value="${property.getstreet}" class="form-control" name="street" placeholder="Street Address" required>
                </div>
                <div class="form-group">
                    Description: <textarea style="height:80px" class="form-control" name="description" placeholder="Description"required>${property.description}</textarea>
                </div>

                <div class="form-group">
                    City: <input type="text" value="${property.city}" class="form-control" name="city"  placeholder="City"required>
                </div>
                <div class="form-group">
                    Agent ID: <input type="text" value="${property.agentId}" class="form-control" name="agent" placeholder="agent"required>
                </div>
                <div class="form-group">
                    ID:  <input type="text" value="${property.id}" class="form-control" name="propertyid" placeholder="Property ID"required>
                </div>
                <div class="form-group">
                    Price: <input type="number" value="${property.price}" class="form-control" name="price"  placeholder="Price"required>
                </div>
                <div class="form-group">
                    Bedrooms: <input type="number" value="${property.bedrooms}" class="form-control" name="bedrooms"  placeholder="Bedrooms"required>
                </div>
                <div class="form-group">
                    Bathrooms: <input type="number" value="${property.bathrooms}" class="form-control" name="bathrooms"  placeholder="Bathrooms"required>
                </div>
                <div class="form-group">
                    Listing Number: <input type="number" class="form-control" name="listingnum" id="contact-number" placeholder="Listing Number"required>
                </div>
                <div class="form-group">
                    SQ. Feet: <input type="number" value="${property.squarefeet}" class="form-control" name="squarefeet"  placeholder="SQ Feet"required>
                </div>
                <div class="form-group">
                    <div class="col-12 col-md-12 col-lg-12">
                        BER Rating
                        <select class="form-control" name="berRating">
                            <option value="1">A1</option>
                            <option value="2">A2</option>
                            <option value="3">A3</option>
                            <option value="4">B1</option>
                            <option value="5">B2</option>
                            <option value="6">B3</option>
                            <option value="7">C1</option>
                            <option value="8">C2</option>
                            <option value="9">C3</option>
                            <option value="10">D1</option>
                            <option value="11">D2</option>
                            <option value="12">F</option>
                            <option value="13">G</option>
                        </select>
                    </div>
                </div>
              
                <div class="form-group">
                    Lot Size: <input type="text" value="${property.lotsize}" class="form-control" name="lotsize"  placeholder="Lot Size"required>
                </div>
                <div class="form-group">
                    Garage Size: <input type="text" value="${property.garagesize}" class="form-control" name="garagesize"  placeholder="Garage Size"required>
                </div>
                <div class="form-group">
                    Vendor ID: <input type="text" value="${property.vendorid}" class="form-control" name="vendorid"  placeholder="Vednor ID"required>
                </div>

                <div class="form-group">

                    Garage Type

                    <select class="form-control" name="garagetype">
                        <option value="1">Attached</option>
                        <option value="2">Detached</option>
                        <option value="3">Car Port</option>

                    </select>


                </div>
        </div>

        <div class="form-group">

            Property Type: 
            <select class="form-control" name="propertytype">
                <option value="1">Residential</option>
                <option value="2">Residential Multi</option>
                <option value="3">Commercial</option>

            </select>


        </div>


        <div class="form-group">
            <div>
                Style
                <select class="form-control" name="styletype">

                    <option value="1">Bungalow</option>
                    <option value="2">Semi Detached</option>
                    <option value="3">Detached</option>
                    <option value="4">Cottage</option>
                    <option value="5">Terrace</option>
                    <option value="6">Duplex</option>
                    <option value="7">Condo</option>
                    <option value="8">Apartment</option>
                    <option value="9">Other</option>



                </select>
            </div>
        </div>
    </div>
    <div class="form-group">
        <button type="submit" class="btn south-btn">Save Details</button>
    </div>

</form>
</body>
</html>
