<%-- 
    Document   : Header
    Created on : 16 Nov 2019, 11:56:00
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
       <div class="container-fluid">
            <nav class="navbar" style="background: #2F4F4F;">

                <a class="navbarWebTitle" style="color: white;"><h2>LIT Realty</h2></a>

                <ul class="navbar-nav">
                    <li class="active"><a href="displayAll" style="color: white;">Properties</a></li>
                        <shiro:guest>
                          <li><a href="SearchProperty.jsp" style="color: white;">Search</a></li>

                        <li><a href="displayFavourites" style="color: white;">Favourites</a></li>

                        <li><a href="Login.jsp" style="color: white;"><span class="glyphicon glyphicon-log-in"></span> Agent Login</a></li>
                        </shiro:guest>
                        <shiro:user>
                        <li><a href="AddProperty.jsp" style="color: white;"><span class="glyphicon glyphicon-log-in"></span> Add Property</a></li>
                        <li><a href="logout" style="color: white;"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                        </shiro:user>
                        <shiro:user>
                        <div class="profile">
                            <p>Logged in as: <shiro:principal/></p>
                            <img class="agent-icon" src="images/agents/${agent.agentId}.jpg"/>
                            <br>
                        </div>
                    </shiro:user>
                </ul>
                    </nav>

        </div>
    </nav>
    </head>
    <body>
       
    </body>
</html>
