<%-- 
    Document   : shopping
    Created on : Feb 27, 2017, 2:20:17 PM
    Author     : kasper
--%>

<%@page import="Model.ModelFacade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String[] toppings = ModelFacade.getToppings();
            String[] bottoms = ModelFacade.getBottoms();
        %>

        <h1>Hello World!</h1>
        <form method="POST" action="OrderCake">
            <table border="1">
                <thead>
                    <tr>
                        <th>Bottom</th>
                        <th>Topping</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>  
                        <td><select name="Bottom">
                                <% for ( String b : bottoms ) {%>
                                <option><%=b%></option>
                                <%}%>
                            </select></td>
                        <td><select name="Topping">
                                <% for ( String b : toppings ) {%>
                                <option><%=b%></option>
                                <%}%>
                            </select></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="submit" />
        </form>
    </body>
</html>
