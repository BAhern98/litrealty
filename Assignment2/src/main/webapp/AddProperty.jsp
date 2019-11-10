<%-- 
    Document   : AddProperty
    Created on : 1 Nov 2019, 10:43:26
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
        <nav class="navbar" style="background: #2F4F4F;">

            <a class="navbarWebTitle" style="color: white;"><h2>LIT Realty</h2></a>

            <ul class="navbar-nav">
                <li class="active"><a href="#" style="color: white;">Properties</a></li>
                    <shiro:guest>

                    <li><a href="favourites.jsp" style="color: white;">Favourites</a></li>

                    <li><a href="Login.jsp" style="color: white;"><span class="glyphicon glyphicon-log-in"></span> Agent Login</a></li>
                    </shiro:guest>
                    <shiro:user>
                    <li><a href="/LIT_Realty/logout" style="color: white;"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                    </shiro:user>
                    <shiro:user>
                    <div class="profile">
                        <p>Logged in as: <shiro:principal/></p>
                        <img src="images/agents/1.jpg" height="100" width="100" alt="photo"/>
                        <br>
                    </div>
                </shiro:user>
            </ul>
        </div>
    </nav>
         <div class="row">
        </div>
        <div class="col-md-3">
        </div>
        <div class="contact-form" >
            <div class="goBack">
                        <a style="text-align: left;"href="javascript:history.back()">Go Back</a>
                    </div>
            <div>
             <form action="addProperty" method="post">
                <div class="form-group">
                    Street Address: <input type="text"  class="form-control" name="street" id="contact-name" placeholder="Street Address">
                </div>
                <div class="form-group">
                    Description: <textarea style="height:80px" class="form-control" name="description" id="message" cols="30" rows="10" placeholder="Description">${property.description}</textarea>
                </div>
                <div class="form-group">
                    City: <input type="text" class="form-control" name="city" id="contact-name" placeholder="City">
                </div>

                <div class="form-group">
                    Price: <input type="number" class="form-control" name="price" id="contact-number" placeholder="Price">
                </div>
                <div class="form-group">
                    Bedrooms: <input type="number" class="form-control" name="bedrooms" id="contact-number" placeholder="Bedrooms">
                </div>
                <div class="form-group">
                    Bathrooms:<input type="number" class="form-control" name="bathrooms" id="contact-number" placeholder="Bathrooms">
                </div>
                <div class="form-group">
                    Listing Number: <input type="number" class="form-control" name="listingnum" id="contact-number" placeholder="Listing Number">
                </div>
                <div class="form-group">
                    SQ. Feet: <input type="number" class="form-control" name="squarefeet" id="contact-number" placeholder="SQ Feet">
                </div>
                  <div class="row">
                    <div class="form-group">
                        <div class="col-12 col-md-12 col-lg-12">
                            BER Rating
                            <select class="form-control" name="ber">
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
                  </div>
     
               
                <div class="form-group">
                    Lot Size: <input type="text" class="form-control" name="lotsize" id="contact-name" placeholder="Lot Size">
                </div>
                <div class="form-group">
                    Garage Size: <input type="text"  class="form-control" name="garagesize" id="contact-name" placeholder="Garage Size">
                </div>
                <div class="row">
                    <div class="form-group">
                        <div class="col-12 col-md-12 col-lg-12">
                            Garage Type
                            <select class="form-control" name="garagetype">
                                <option value="1">Attached</option>
                                <option value="2">Detached</option>
                                <option value="3">Car Port</option>
                                <option value="4">None</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <div class="col-12 col-md-12 col-lg-12">
                            Property Type: 

                            <select class="form-control" name="propertytype">
                                <option value="1">Residential</option>
                                <option value="2">Residential Multi</option>
                                <option value="3">Commercial</option>

                            </select>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <div class="col-12 col-md-12 col-lg-12">
                            Style
                            <select class="form-control" name="styletype">
                                <option  value="1">Bungalow</option>
                                <option  value="2">Semi Detached</option>
                                <option  value="3">Detached</option>
                                <option  value="4">Cottage</option>
                                <option  value="5">Terrace</option>
                                <option  value="8">Duplex</option>
                                <option  value="9">Condo</option>
                                <option  value="10">Apartment</option>
                                <option  value="11">Other</option>
                            </select>
                        </div>
                    </div>
                </div>
               
                    <button type="submit" class="btn south-btn">Save Details</button>
     
            </form>
        </div>
        <div class="col-md-3">
        </div>
    </body>
</html>
