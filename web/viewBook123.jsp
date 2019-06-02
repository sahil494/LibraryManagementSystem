

<%@page import="modal.addBook"%>
<%@page import="modal.addBook"%>
<%@page import="java.util.List"%>

<%@page import="java.util.Iterator"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.hibernate.Session"%>

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
                background-color: black;
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
         #customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 3px solid black;
    padding: 20px;
}

#customers tr:nth-child(even){background-color: white;}
#customers tr:nth-child(odd){background-color: graytext;}
#customers tr:hover {background-color: #303952;color: white;}

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
	background-color:black;
	color:white;
	font-size: 45px;
	height: 100px;
	padding: 5px;
}
.ab1 
{
    background-color: red;
    pointer:cursor;
    color: white;
    position: absolute;
    left:10px;
     border-radius: 10px;
     border: none;
     outline: none;
   
    height: 40px;
    width: 100px;
    font-size: 20px;
    
}
.table-dark td, .table-dark th, .table-dark thead th
{
        border-color: white;
}
.i1 
{
    height: 100px;
    width: 270px;
    left: 400px;
    position: relative;
}
         </style>
    </head>
    <body>
        
		<div class="head">
             <b>Book Details</b>
             <img src="c1.png" class="i1">
           
		</div>
        <div class="cont">
<!--            <table border="3 solid black" id="customers">-->
   <table class="table table-dark table-hover">
<tr>
    <th><B>Book ID</b></th>
    <th><b>Book Name</b></th>
    <th><b>Author Name</b></th>
    <th><b>Quantity</b></th>
    
</tr>
<%
   List<addBook> records =  (List<addBook>)request.getAttribute("list");   
   for(addBook s: records)
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
    </body>
</html>
