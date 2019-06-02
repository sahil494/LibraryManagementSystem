

<%@page import="modal.addBook"%>
<%@page import="java.util.List"%>

<%@page import="java.util.Iterator"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 
        <style>
            body 
            {
                background-image: url("sb.jpg");
                background-repeat: no-repeat;
                
            }
            image{
                height: 100vh;
                width: 100%;
            }
             .header 
          {
              height: 100px;
              background-color: black;
              color: white;
            
              
              font-size: 20px;
              width: 600px;
              position: relative;
              left: 330px;
              top: 50px;
              flex-wrap: wrap;
              border: 3px solid white;
          }
         .main
         {
             background-color: grey;
             height: 200px;
             display: flex;
             border: 2px solid black;
             flex-wrap: wrap;
             
         }
         #particles-js
		{
			height: 100%;
			background-color: black;
		}
         #customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 3px solid black;
    padding: 20px;
}

#customers tr:nth-child(even){background-color: #18dcff;}



#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: dodgerblue;
    color: white;
}
.head 
{
	display: flex;
	justify-content: center;
	align-items: center;
	background-color:#15c1dc;
	color:white;
	font-size: 45px;
	height: 100px;
	padding: 5px;
}
.table-dark td, .table-dark th, .table-dark thead th
{
    border-color: white;
}
.nav{
			display: flex;
			background-color: #333;
			justify-content: left;
			align-items: left;
		}

		.nav a{
			text-align: center;
			text-decoration: none;
			color: #f1f1f1;
			padding: 12px 14px;
			width: 20%;

		}

		.nav a:hover{
			color: #333;
			background-color: #fff200;
		}
         </style>
    </head>
    <body>
        	<div class="head">
             <b>Search Bus Record</b>
		</div>
<!--        	<div class="nav">
	<a href="adminHome.jsp">HOME</a>
		<a href="#">Driver</a>
		<a href="#">Bus</a>
		<a href="#">Routes</a>
	        
  <a href=""  data-toggle="modal" data-target="#modalRegisterForm">About Us</a>

  <a href="logout" class="abc">Logout</a>
</div>-->
        <div class="cont">
            <table class="table table-dark table-hover">
<tr>
     <th><B>Book ID</b></th>
    <th><B>Book Name</b></th>
    <th><b>Author Name</b></th>
    <th><b>Quantity</b></th>
   
    
</tr>
<%
    List<addBook> result = (List<addBook>)request.getAttribute("list");
    for(addBook s : result)
    {
%>
<tr>
<td><%=s.getBookId()%></td>
<td><%=s.getbName()%></td>
<td><%=s.getAname()%></td>
<td><%=s.getQuantity()%></td>

</tr>
<%
}
%>
</table>
            
            
        </div>
	<div id="particles-js">
            <script type="text/javascript" src="particles.js"></script>
     <script type="text/javascript" src="app1.js"></script>
</div>
   
    </body>
</html>


