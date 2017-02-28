<%-- 
    Document   : orderconfirmation
    Created on : Feb 28, 2017, 7:27:57 AM
    Author     : kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Your order</h1>
        <p>Bottom: <%=request.getParameter( "Bottom")%> </p>
        <p>Topping: <%=request.getParameter( "Topping")%> </p>
        <p>(and our counter is: <%= session.getAttribute( "counter") %> </p>
    </body>
</html>
