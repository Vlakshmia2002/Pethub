<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		b{
			margin-left:-635px;
		}
		nav ul li{
			display: inline;
			padding:20px;
		}
		.logo{
			position:relative;
		}
</style>
</head>
<body>
	   <div class="navbar">
            <div class="logo">
                <img src="image/pethublogo.png" width="125px">
            </div>
            <% if (session.getAttribute("name") != null) {%>  
            <b>   <%= session.getAttribute("name")%> </b>
            <%}%>
            <nav>
                <ul>
                    <li><a href="userhome.jsp">Home</a> </li>
                    <% if (session.getAttribute("name") != null) {%>  

                    <li><a href="myorder.jsp">My Orders</a></li>
                    <li><a href="register?logout=logout">Logout</a></li>
                    <li><a href="cart.jsp"><img src="image/cart.png" width="30px" height="30px"></a></li>

                    <%} else {%> 
                    <li><a href="login.html">Login</a></li>
                    <li><a href="register.html">Register</a></li>
                        <%}%> 
                </ul>
            </nav>

        </div>
</body>
</html>