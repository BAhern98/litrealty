<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<script src="js/confirmation.js"></script>
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
  <div class="container-fluid">
       <jsp:include page="/Header.jsp" />
    <div >
        <div>
            <div class="goBack">
                        <a style="text-align: left;"href="javascript:history.back()">Go Back</a>
                    </div>
              <form action="archiveProperty" method="post">
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
                    
                    </div></center>


                <div class="row">   


                    <div class="col-md-3">
                    </div>
                    <div class="col-md-3">
                        
                        <h3>Street</h3>
                        <p>${property.street}, ${property.city}</p>
                        <h3>Listing Number</h3>
                        <p>${property.listingNum}</p>
                        <h3>Bedrooms & Bathrooms</h3>
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
                        <p><button type="submit" class="btn south-btn"> Delete Property</button></p>
                        //onclick="clicked()"
                    </div>

        </div>
    </div>
                          </form>
                        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCYz_he365YHCZs07jVGnL2dBY-wC5YixE&callback=initMap"></script>


<center>
 <div id="map" style="height:300px; width:500px"></div>
</center>
</html>

</body>

</html>