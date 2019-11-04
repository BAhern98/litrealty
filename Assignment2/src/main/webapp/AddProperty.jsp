<%-- 
    Document   : AddProperty
    Created on : 1 Nov 2019, 10:43:26
    Author     : Brendan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="contact-form">
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
                <div class="form-group">
                    BER Rating: <input type="text" class="form-control" name="ber" id="contact-name" placeholder="BER Rating">
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
                <div class="form-group">
                    <button type="submit" class="btn south-btn">Save Details</button>
                </div>

            </form>
        </div>

    </body>
</html>
