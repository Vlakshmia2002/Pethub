<%@page import="model.Dproduct"%>
<%@page import="model.Registration1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" ></script>
        <title>JSP Page</title>
        <style>
            .container1{
                margin-top: 100px;
                width: 100%;
                padding-left: 100px;
            }
            .container{
                max-width: 1300px;
                margin:auto;
                padding-left: 25px;
                padding-right: 25px;
            }
            /*              body{
                            font-family: 'Poppins', sans-serif;
                            background-color: white;
                        }*/
            /*             .header{
                            background: radial-gradient(#fff,#ffd2d2);
                            background-color: whitesmoke;
                        }*/
            .col-md-7{
                /*                color:#555;*/

            }
            .row{
                display: flex;
                align-items:center;
                flex-wrap: wrap;
                justify-content:space-around;
            }
            .price{
                color:#FE980F;
                font-size:26px;
                font-weight:bold;
                padding-top: 20px;
            }
            /*            .cart{
                            background: #FE980F;
                            color:#FFFFFF;
                            font-size: 15px;
                            margin-left:20px;
                        }*/
            .but{
                display: inline-block;
                background: #ff523b;
                color: #fff;
                padding: 8px 30px;
                margin: 30px 0;
                border-radius: 30px;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="header">

            <div class="container">
                <%@include file="header2.jsp"%>
                <%
                    Registration1 r = new Registration1(session);
                    ArrayList<Dproduct> al = r.get_productinfo(request.getParameter("animal"));
                    Iterator<Dproduct> it = al.iterator();
                    while (it.hasNext()) {
                        Dproduct s = it.next();%>
                <form action="addtocart" method="POST">
                    <div class="container1">
                        <div class="row"> 
                            <div class="col-md-5">
                                <img  src="image/<%=s.getp_image()%>"  class="d-block w-100">
                            </div>
                            <div class="col-md-7">
                                <h2><%=s.getp_name()%></h2>
                               <input type="hidden" name="p_id" value="<%=s.getp_id()%>"> 
                                <p class="price" >&#8377 <%=s.getp_cost()%></p>
                                <p><%=s.getp_details()%></p>

                                <% if (session.getAttribute("name") != null) {%>
                                <button type="submit" name="addtocart" class="but">Add to Cart </button>
                                <% } else {
                                    session.setAttribute("logoutredirect", "dog2col.jsp?animal=" + request.getParameter("animal"));
                                %>
                                <a href="login.html" >Add To Cart</a>
                                <% } %>

                            </div>

                        </div>
                    </div>
                </form>

                <% }%>



            </div>
        </div>
        <br><br><br>
        <%@include file="footer.jsp"%>
    </body>
</html>
