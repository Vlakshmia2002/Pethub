<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <style>
            .jumbotron{
                background-color: white;
            }

.footer {
/*    position: fixed;*/
/*  height: 10% !important;*/
margin-top: 200px;
/*    bottom: 0;*/
    width: 100%;
    padding: 0px !important;
}
        </style>
    </head>
    <body>
        <%@include file="header2.jsp"%>
        
    <center>
      <div class="container">

        <form action="register" method="POST">
            <div class="form-group col-md-4">
                <label >Search for animal:</label>
                <input type="text" name="animalname" class="form-control" >


            </div>

            <button type="submit" class="btn btn-primary" name="submit1">Search</button>


        </form>
      </div>
    </center>
    <%@include file="footer.jsp"%>
</body>
</html>
