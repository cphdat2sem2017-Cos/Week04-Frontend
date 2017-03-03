<%-- 
    Document   : shop
    Created on : Mar 1, 2017, 7:01:07 AM
    Author     : kasper
--%>

<%@page import="ModelLayer.ModelFacade"%>
<%@page import="GUI.RenderUtils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>About - Business Casual - Start Bootstrap Theme</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/business-casual.css" rel="stylesheet">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>


        <%= RenderUtils.title()%>
        <!-- Navigation -->
        <nav class="navbar navbar-default" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                    <a class="navbar-brand" href="index.html">AP Cupcakes</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <%= RenderUtils.navBar() %>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <div class="container">

            <div class="row">
                <div class="box">
                    <div class="col-lg-12">
                        <hr>
                        <h2 class="intro-text text-center">A couple of cakes
                            <strong>saves the day</strong>
                        </h2>
                        <hr>
                    </div>
                    <%
                        String[] toppings = ModelFacade.getToppings();
                        String[] bottoms = ModelFacade.getBottoms();
                    %>
                    <div class="col-md-6">
                        <img class="img-responsive img-border-left" src="img/slide-2.jpg" alt="">
                    </div>
                    <div class="col-md-6">
                        <form role="form" method="POST" action="BuyCake">
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="seltop">Topping:</label>
                                    <select name="Bottom" class="form-control" id="seltop">
                                        <% for ( String b : bottoms ) {%>
                                        <option><%=b%></option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="selbot">Bottom</label>
                                    <select name="Topping" class="form-control" id="selbot">>
                                        <% for ( String b : toppings ) {%>
                                        <option><%=b%></option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <input type="hidden" name="action" value="buyCake">
                                    <label><br></label>
                                    <button type="submit" class="btn btn-success">Buy</button>
                                </div>
                            </div>
                        </form>                        
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="row">
                <div class="box">
                    <div class="col-lg-12">
                        <hr>
                        <h2 class="intro-text text-center">Your 
                            <strong>Cart</strong>
                        </h2>
                        <hr>
                    </div>
                    <div class="col-sm-12 text-center">
                        <table class="table table-striped text-left">
                            <thead>
                                <tr>
                                    <th>Bottom</th>
                                    <th>Top</th>
                                    <th>Number</th>
                                    <th>Price</th>
                                </tr>
                            </thead>
                            <tr>
                                <td>Cinamon</td>
                                <td>Blueberry</td>
                                <td>3</td>
                                <td>12.-</td>
                            </tr>
                        </table>
                        <img class="img-responsive" src="img/intro-pic.jpg" alt="">
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

        </div>
        <!-- /.container -->

        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <p>Copyright &copy; Your Website 2014</p>
                    </div>
                </div>
            </div>
        </footer>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>

