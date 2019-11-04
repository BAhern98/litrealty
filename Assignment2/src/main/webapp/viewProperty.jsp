<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<html lang="en">
    <head>
        <title>LIT Realty</title>
        <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css"/>
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
        <!-- jQuery 1.8 or later, 33 KB -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <!-- Fotorama from CDNJS, 19 KB -->
        <link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
    </head>
    <body>
        <nav class="navbar" style="background: #2F4F4F;">

            <a class="navbarWebTitle" style="color: white;">LIT Realty</a>

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
    <div class ="bg-opacity">
        <div class="bg">
            <div >


                <center><div class="fotorama">
                        <img src="images/properties/large/${property.listingNum}/${property.photo}"/>
                        <img src="images/properties/large/${property.listingNum}/${property.listingNum}-1.jpg"/>
                        <img src="images/properties/large/${property.listingNum}/${property.listingNum}-2.jpg"/>
                        <img src="images/properties/large/${property.listingNum}/${property.listingNum}-3.jpg"/>
                        <img src="images/properties/large/${property.listingNum}/${property.listingNum}-4.jpg"/>
                        <img src="images/properties/large/${property.listingNum}/${property.listingNum}-5.jpg"/>
                        <img src="images/properties/large/${property.listingNum}/${property.listingNum}-6.jpg"/>
                        <img src="images/properties/large/${property.listingNum}/${property.listingNum}-7.jpg"/>
                    s
                    </div></center>


                <div class="row">   


                    <div class="col-md-3">
                    </div>
                    <div class="col-md-3">
                        
                        <h3>Street</h3>
                        <p>${property.street}, ${property.city}</p>
                        <h3>Listing Number</h3>
                        <p>${property.listingNum}</p>
                        <h3>Bedrooms</h3>
                        <p>${property.bedrooms} Bedrooms & ${property.bathrooms} Bathrooms</p>
                        <h3>Property Area</h3>
                        <p>${property.squarefeet}ft² total space - ${property.lotsize} lot & ${property.garagesize} garage</p>
                        <h3>Rating</h3>
                        <p>${property.berRating} </p>
                        <h3>Description</h3>
                        <p>${property.description}</p>
                        <h3>Price</h3>
                        <p>${property.price}</p>
                        <h3>Available Since</h3>
                        <p>${property.dateAdded}</p>
                        <p><button href="" name="">Add to Favourites</button></p>
                    </div>

        </div>
    </div>
</body>
</html>