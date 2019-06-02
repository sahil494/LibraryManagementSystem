
<%@page import="modal.issue"%>
<%@page import="java.util.List"%>
<%@page import="modal.addBook"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
        
  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style>
       body 
            {
                background-image: url("oi1.jpg");
                background-repeat: no-repeat;
            }
             .header 
          {
              height: 100px;
              background-color: red;
              color: white;
            
              
              font-size: 20px;
              width: 600px;
              position: relative;
              left: 330px;
              top: 50px;
              flex-wrap: wrap;
              border: 3px solid white;
              box-shadow: 10px 10px 10px white;
          }
         .main
         {
             background-color: black;
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
	background-color: black;
	color:white;
	font-size: 45px;
	height: 100px;
	padding: 5px;
        font-size: 35px;
}
        	.nav{
			display: flex;
			background-color: black;

		}

		.nav a{
			text-align: center;
			text-decoration: none;
			color: #f1f1f1;
			padding: 12px 14px;
			width: 25%;

		}

		.nav a:hover{
			color: black;
			background-color: whitesmoke;
		}
                .button is-danger
                {
                    height: 45;
                }
                .abc 
{
    background-color: #f70334; 
}
.table-dark td, .table-dark th, .table-dark thead th
{
    border-color: white;
}

  </style>
    
        
            
          
</head>
<body>

 <div class="head">
             <b>Issue Book Details</b>
		</div>
  
 <div class="cont">
            <table class="table table-dark table-hover">
<tr>
    <th><B>Book Id</b></th>
    <th><B>Book Name</b></th>
    <th><b>Student Id</b></th>
    <th><b>Student Name</b></th>
    <th><b>Branch</b></th>
   
    <th><B>Issue Date</b></th>
    <th><B>Return Date</b></th>
</tr>
<%
   List<issue> records =  (List<issue>)request.getAttribute("list");
   System.out.print(records);   
   for(issue s: records)
   {

     
%>
<tr>
<td><%=s.getBid()%></td>
<td><%=s.getBt()%></td>
<td><%=s.getSid()%></td>
<td><%=s.getSname()%></td>
<td><%=s.getBranch()%></td>
<td><%=s.getRegdate()%></td>
<td><%=s.getReturndate()%></td>
</tr>
<%
}
%>
</table>
            
            
        </div>
    
 
</body>
</html>


