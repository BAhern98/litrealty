
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html lang="en">
    <head>
        <title>LIT Realty</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </head>
    <body>

        <shiro:guest>
        <center><form name="loginform" method="post">

                <span
                    <h1> Agent Login </h1>

                    <div>
                        <input type="text" id="username" name="username" >
                    </div>
                    <div>
                        <input type="password" id="password" name="password" >
                    </div>
                    <div>
                        <label for="rememberMe">Remember me:</label>
                        <input type="checkbox" id="rememberMe" name="rememberMe" value="true" />
                    </div>
                    <div>
                        <input type="submit" value="Login" />
                    </div>
                    <c:if test="${shiroLoginFailure != null}">
                        Incorrect Username/Password
                    </c:if>
                    <p><a href="displayAll">Continue as Guest</a></p>
            </form></center>
        </shiro:guest>
        <shiro:user>
        You are already logged in!
        <br>
        <a href="displayAll">Search Properties</a>
        <br>
        <a href="displayAll">Logout</a>
    </shiro:user>
</div>
</div>
</div>
</body>
</html>


