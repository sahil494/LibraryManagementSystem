
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
      height: 93vh;
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
      height: 550px;
      width: 865px;
  }
  .btn1
  {
      height: 54px;
      width: 150px;
      background-color: #05b4f7e8;
      cursor: pointer;
      outline: none;
      border: none;
      color: white;
      font-size: 20px;
      border-radius: 10px;
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
    background-color: #0b86efeb;
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
  
 
  </style>
     <script>
              function myValidation()
            {
                var flag = true;
                var bid = document.forms["myform"]["sid"];
                var bt = document.forms["myform"]["sname"];
                var an = document.forms["myform"]["br"];
                var qa = document.forms["myform"]["email"];
                if(bid.value==="")
                {
                    alert("Please Enter Student ID");
                    flag=false;
                }
                if(bt.value==="")
                {
                    alert("Please Enter Student Name"); 
                    flag=false;
                }
                 if(an.value==="")
                {
                    alert("Please Enter Branch"); 
                    flag=false;
                }
                 if(qa.value==="")
                {
                    alert("Please Enter E-mail"); 
                    flag=false;
                }
                return flag;
            }
            
               function myValidation1()
            {
                var flag = true;
                var bid1 = document.forms["myform1"]["bid1"];
                var bt1 = document.forms["myform1"]["bt1"];
                var sid = document.forms["myform1"]["sid"];
                var sname = document.forms["myform1"]["sname"];
                var br = document.forms["myform1"]["br"];
                
                if(bid1.value==="")
                {
                    alert("Please Enter Book ID");
                    flag=false;
                }
                if(bt1.value==="")
                {
                    alert("Please Enter Book Title"); 
                    flag=false;
                }
                if(sid.value==="")
                {
                    alert("Please Enter Student id"); 
                    flag=false;
                }
                 if(sname.value==="")
                {
                    alert("Please Enter Student Name"); 
                    flag=false;
                }
                 if(br.value==="")
                {
                    alert("Please Enter Branch"); 
                    flag=false;
                }
                return flag;
            }
            
               function myValidation2()
            {
                var flag = true;
                var bid2 = document.forms["myform2"]["bid2"];
                var bt2 = document.forms["myform2"]["bt2"];
                
                if(bid2.value==="")
                {
                    alert("Please Enter Book ID");
                    flag=false;
                }
                if(bt2.value==="")
                {
                    alert("Please Enter Book Title"); 
                    flag=false;
                }
               
                return flag;
            }
            
              function myValidation3()
            {
                var flag = true;
                var bid = document.forms["myform"]["bid"];
                var bt = document.forms["myform"]["bt"];
                var an = document.forms["myform"]["an"];
                var qa = document.forms["myform"]["qa"];
                if(bid.value==="")
                {
                    alert("Please Enter Book ID");
                    flag=false;
                }
                if(bt.value==="")
                {
                    alert("Please Enter Book Title"); 
                    flag=false;
                }
                 if(an.value==="")
                {
                    alert("Please Enter Author Name"); 
                    flag=false;
                }
                 if(qa.value==="")
                {
                    alert("Please Enter Quantity"); 
                    flag=false;
                }
                return flag;
            }
            </script>
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
        <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
        <br><br>
        <p><a href="index.html" class="a1">Home</a></p><br>
        <p><a href="#" class="a1" data-toggle="modal" data-target="#myModal3">About Us</a></p><br>
        <p><a href="#" class="a1" data-toggle="modal" data-target="#myModal5">Contact</a></p><br>
         <p><a href="viewServlet" class="a1">Issue Details</a></p><br>
    </div>
    <div class="col-sm-8 text-left"> 
        <img src="images\l4.jpg" class="i21">
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
          <button class="btn1" data-toggle="modal" data-target="#myModal">Add Student Details</button>
      </div>
      <div class="well">
         <button class="btn1" data-toggle="modal" data-target="#myModal1">Issue Book</button>
      </div>
        <div class="well">
         <button class="btn1" data-toggle="modal" data-target="#myModal4">Return Book</button>
      </div>
         <div class="well">
             <a href="viewBook">  <button class="btn1">Books Info</button></a>
      </div>
        <div class="well">
          <a href="viewFine" style="color:white;"><button class="btn1" >Check Fine</button></a>
      </div>
     
    </div>
  </div>
</div>



    
    
    
 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Add Student Details</h4>
        </div>
        <div class="modal-body">
            <form action="studentServlet" name="myform" role="form" method="post" onsubmit="return myValidation()">
            <div class="form-group">
                <label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span>Student ID</label>
              <input type="text" name="sid" class="form-control" id="psw" placeholder="Enter Student ID">
            </div>
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>Student Name</label>
              <input type="text" name="sname" class="form-control" id="usrname" placeholder="Enter Student Name">
            </div>
               <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>Branch</label>
              <input type="text" name="br" class="form-control" id="usrname" placeholder="Enter Student Branch">
            </div>
               <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicosn-user"></span>E-mail</label>
              <input type="text" name="email" class="form-control" id="usrname" placeholder="Enter E-mail">
            </div>
              <center><button type="submit" class="btn btn-block">Submit
                <span class="glyphicon glyphicon-ok"></span>
              </button>
              </center>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          
        </div>
      </div>
    </div>
  </div>
    
    
    
 
 <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Issue Book </h4>
        </div>
        <div class="modal-body">
            <form action="issueServlet" name="myform1" role="form" method="post" onsubmit="return myValidation1()">
            <div class="form-group">
                <label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span>Book ID</label>
              <input type="text" name="bid1" class="form-control" id="psw" placeholder="Enter Book ID">
            </div>
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>Title</label>
              <input type="text" name="bt1" class="form-control" id="usrname" placeholder="Enter Book Title">
            </div>
             <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>Student Id</label>
              <input type="text" name="sid" class="form-control" id="usrname" placeholder="Enter Student Id">
            </div>
                <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>Student Name</label>
              <input type="text" name="sname" class="form-control" id="usrname" placeholder="Enter Student Name">
            </div>
                <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>Branch</label>
              <input type="text" name="br" class="form-control" id="usrname" placeholder="Enter Branch">
            </div>
              <center><button type="submit" class="btn btn-block">Submit
                <span class="glyphicon glyphicon-ok"></span>
              </button>
              </center>
          </form>
        </div> 
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          
        </div>
      </div>
    </div>
  </div>
    
    
    
 
  
    
 <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Delete Book Details</h4>
        </div>
        <div class="modal-body">
            <form action="deleteBook" name="myform2" role="form" method="post" onsubmit="return myValidation2()">
            <div class="form-group">
                <label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span>Book ID</label>
                <input name="bid2" type="text" class="form-control" id="psw" placeholder="Enter Book ID">
            </div>
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>Title</label>
              <input type="text" name="bt2" class="form-control" id="usrname" placeholder="Enter Book Title">
            </div>
         
              <center><button type="submit" class="btn btn-block">Delete
                <span class="glyphicon glyphicon-ok"></span>
              </button>
              </center>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          
        </div>
      </div>
    </div>
  </div>
      
    
    
    
    <div class="modal fade" id="myModal3" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-lock"></span> About Us</h4>
        </div>
        <div class="modal-body">
            <center><img src="images/c3.png" class="i1"></center><br>
            <p>In the year 2002, Chitkara Educational Trust established its Punjab campus 30 kilometres from Chandigarh, on the Chandigarh–Patiala National Highway. In the year 2010 Chitkara University was established by the Punjab State Legislature under “The Chitkara University Act”.

                Chitkara University, the best university in Punjab is a government-recognized university with the right to confer degrees as per the Sections 2(f) and 22(1) of the UGC Act, 1956.<br><br><br>

                <b>The sprawling campus of the University is equidistant from Chandigarh, Mohali, Panchkula, Ambala and Patiala.</b> The University offers multi-disciplinary programs, all of which are designed to be industry-relevant. As a result of this student-centric approach, Chitkara University is renowned as one of the best private universities in the North India region. From business management programs to programs in nursing and medical laboratory technologies; and from computer science, electronics and mechanical engineering programs, to hotel management and architecture—Chitkara University, Punjab is a veritable cornucopia of educational services.

Curriculum is delivered in spacious, amphitheatre-style classrooms—fitted with modern information and communication technology (ICT) equipment—and in well-equipped, modern laboratories. Additionally, students are encouraged—and provided relevant facilities—to participate in co-curricular and extra-curricular activities through various clubs and societies on the campus.

<br><br>It is because of the cumulative effect of an elaborate in-campus academic infrastructure; strong national and international collaborations; and a robust on-campus recruitment record—including regular recruitment by reputed blue-chip companies—that the University finds favor with national as well as international students.

A healthy number of foreign students regularly study at the campus and number of them also visit on exchange programs, adding to the cultural diversity found on campus. The University in Punjab provides several opportunities for local students, too, to visit foreign universities and institutions on such exchange programs, thereby helping them receive invaluable international exposure.

The University has at the centre of its philosophical core the commitment to excellence in education. It is the strong academic heritage of the University, and such firmness on matters of principles that has seen it grow from strength to strength in such a short span of time.
            </p> </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          
        </div>
      </div>
    </div>
  </div>
    
    
     <div class="modal fade" id="myModal4" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Return Book</h4>
        </div>
        <div class="modal-body">
            <form action="returnServlet" name="myform" role="form">
            <div class="form-group">
                <label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span>Student ID</label>
                <input type="text" name="sid" class="form-control" id="psw" placeholder="Enter Student ID" required>
            </div>
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>Student Name</label>
              <input type="text" name="sname" class="form-control" id="usrname" placeholder="Enter Student Name" required>
            </div>
               <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>Book ID</label>
              <input type="text" name="bid" class="form-control" id="usrname" placeholder="Enter Book ID" required>
            </div>
              <center><button type="submit" class="btn btn-block">Submit
                <span class="glyphicon glyphicon-ok"></span>
              </button>
              </center>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          
        </div>
      </div>
    </div>
  </div>
    
    
    
    
   <div class="modal fade" id="myModal5" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Contact Us</h4>
        </div>
        <div class="modal-body">
            <center><img src="images/c3.png" class="i1"></center><br>
           <p class="p1"> For any query related to Alumni Affairs, Please contact:<br>
            Prof.<b> Harkiran Kaur</b><br>
            Vice President, Office of Alumni Affairs<br>

            Chitkara University,<br>
            Jhansla, Rajpura<br>
            Punjab- 140 401, India<br>

            <b> Mob. No.: 9501105625</b><br>
            <b>  E-Mail : harkiran.kaur@chitkara.edu.in</b><br></p>
             </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          
        </div>
      </div>
    </div>
  </div>
  
    
    
    
 
</body>
</html>

