
<%@page import="modal.issue"%>
<%@page import="modal.student"%>
<%@page import="java.util.List"%>
<%@page import="modal.addBook"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
        
  
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: black;
      height: 85vh;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
     .i1 
  {
      height: 70px;
      width: 220px;
  }
  .container-fluid 
  {
      height: 100px;
  }
  .navbar-inverse .navbar-nav>.active>a{
      margin-left: 200px;
    width: 500px;
    height: 70px;
    margin-top: 20px;
  }
  .i21 
  {
      height: 520px;
      width: 865px;
  }
  .btn1
  {
      height: 45px;
      width: 150px;
      background-color: red;
      cursor: pointer;
      outline: none;
      border: none;
      color: white;
      font-size: 20px;
  }
  .btn1:hover {
    
     color: white;
} 

  .well
  {
      background-color: black;
      border: none;
      padding: 10px;
      outline: none;
  }
  
  .navbar-nav>li>a
  {
      font-size: 20px;
      color: white;
  }
  .a1 
  {
      color: white;
      font-size: 20px;
      padding: 20px;
      outline: none;
      border: none;
  }
  .a1:hover 
  {
      color: dodgerblue;
      outline: none;
      border: none;
  }
   .btn {
    padding: 10px 20px;
    background-color: #b50c4a;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
  }
  .btn:hover, .btn:focus {
    
    background-color: #b5456ee3;
    color: white;
  }
   .modal-header, h4, .close {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-header, .modal-body {
    padding: 10px 50px;
  }
  .i1 
  {
      height: 80px;
      width: 250px;
      
  }
  .p1 
  {
      font-family: sans-serif;
  }
  
 table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #E0E0E0;
  text-align: center;
  padding: 15px;
  width:15%;
}
tr:nth-child(even) {
  background-color: rgba(223,230,234,0.6);
  color: black;
  border: 1px solid black;
}
tr:nth-child(odd) {
  background-color: white;
  color: black;
  border: 1px solid white;
}
i
{
  position: absolute;
  top: 15px;
  right: 40px;
  height: 100px;
}
.i12 
{
    height: 100px;
    width: 100px;
}
.pa 
{
    color: red;
}
  </style>
     
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"><img class="i1" src="c1.png"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
          <li class="active"><a href="#" style="font-size:25px;"><center>LIBRARY MANAGEMENT SYSTEM</center></a></li>
       
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="libHome.jsp"><span class="glyphicon glyphicon-log-in"></span> Home</a></li>
      </ul>
    </div>
  </div>
</nav>
  
   <table>
<tr>
    <th><B>Student ID</b></th>
    <th><b>Student Name</b></th>
    <th><b>Branch</b></th>
    <th><b>Issue Date</b></th>
    <th><b>Return Date</b></th>
    <th><b>Fine</b></th>
</tr>
<%
   List<issue> records =  (List<issue>)request.getAttribute("list");   
   for(issue s: records)
   {

     
%>
<tr>

<td><%=s.getSid()%></td>
<td><%=s.getSname()%></td>
<td><%=s.getBranch()%></td>
<td><%=s.getRegdate()%></td>
<td><%=s.getReturndate()%></td>
<td><p class="pa">0.0 Rs</p></td>
</tr>
<%
}
%>
</table>            
          
  
  
    
    
    
 
</body>
</html>

