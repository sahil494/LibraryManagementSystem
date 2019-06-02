

<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <html>
<head>

<style>
body 
{      
   background-color: black;     
    margin: 0;
    padding: 0;
 }
.c {
display: flex;
justify-content: center;
align-items: center;
flex-wrap: wrap;
}
.a {
width:300px;
height:300px;
background: green;
}
.b {
width:300px;
height:300px;
background: blue;
padding-left: 20px;
}
.login-box{
    width: 430px;
    height: 470px;
    background-color: white;
    color: red;
    top: 50%;
    margin-top: 30px;
    box-sizing: border-box;
    font-size: 30px;
     border: 1px solid grey;
  
}
.login-box1{
    width: 430px;
    height: 470px;
   background-color: white;
    
    top: 50%;
    margin-left: 0px;
    margin-top: 30px;
    box-sizing: border-box;
  font-size: 30px;
   color: red;
     border: 1px solid grey;
}
.main 
{
	display: flex;
justify-content: center;
align-items: center;
}
.head 
{

	background-color:#cb1a12;
	height: 5px;
}
		
          a 
          {
              text-decoration: none;
              
          }
          #particles-js
		{
			height: 100%;
			background-color: black;
		}
                .i11
                {
                    height: 70px;
                    width: 240px;
                }
                
                .inner 
                {
                    height: 380px;
                    width: 360px;
                    background-color: #f6f6f6;
                    margin-left: 30px;
                    color: black;
                    font-size: 15px;
                    font-family: arial;
                    padding: 3px;
                }
                input 
                {
                    height: 30px;
                    width: 330px;
                    border: 2px solid gainsboro;
                }
                .s1
                {
                    height: 30px;
                    width: 330px;
                    border: 2px solid gainsboro; 
                }
                .btn 
                {
                    height: 40px;
                    width: 330px;
                    background-color: #cb1a12;
                    color: white;
                    font-family: arial;
                    cursor: pointer;
                    outline: none;
                    border: none;
                    
                }
                .i20
                {
                    height: 270px;
                    width: 370px;
                    margin-left: 30px;
                    margin-top: 10px;
                }
                .i21
                {
                    height: 100px;
                    width: 250px;
                    margin-top: -30px;
                    margin-left: 90px;
                }
</style>
<!--<script type="text/javascript">
        var i=0;
        function change_image()
        {
        document.getElementById("slideshow").src="images\img"+(i++ % 6)+".jpg";
        }
        function slider()
        {
            setInterval(change_image,1000);
        }
    </script>-->
      <script>
           images = new Array;
            
            images[0] = "images/img1.jpg";
            images[1] = "images/img2.jpg";
            images[2] = "images/img3.jpg";
            images[3] = "images/img4.jpg";
            images[4] = "images/img5.jpg";
            images[5] = "images/img2.jpg";

            setInterval( function() {
                changeImage()
            }, 3000);

            x = 0;

            function changeImage() {
                document.getElementById('ad').src = images[x];

                if ( x < 5 ) {
                    x += 1;
                } else if ( x === 5 ) {
                    x = 0;
                }
            }
        </script>
        <script>
              function myValidation()
            {
                var flag = true;
                var uname = document.forms["myform"]["username"];
                var pwd= document.forms["myform"]["password"];
                if(uname.value==="")
                {
                    alert("Please Enter Username");
                    flag=false;
                }
                if(pwd.value==="")
                {
                    alert("Please Enter Password"); 
                    flag=false;
                }
                return flag;
            }
            </script>
</head>
<body>
	
    
		<div class="head">
                   
		</div>
    <br>
<center><img class="i11" src="c1.png"><br></center>	
<div class="c">
    
    <div class="login-box"><br>
        <img src="images\c3.png" class="i21">
        <img id='ad' class="i20" src="images\img5.jpg">
    </div>
<div class="login-box1">
    <br>
    <center>LOG IN</center>    
    <div class="inner">
        <br>
        <form action="logServlet" method="post" name="myform" onsubmit="return myValidation()">
        &nbsp;&nbsp;&nbsp; USERNAME<br><br>
        &nbsp;&nbsp;&nbsp;<input name="username" type="text"><br><br>
        &nbsp;&nbsp;&nbsp; PASSWORD<br><br>
        &nbsp;&nbsp;&nbsp;<input name="password" type="password"><br><br>
        &nbsp;&nbsp;&nbsp; Session<br><br>
        &nbsp;&nbsp;&nbsp;<select class="s1">
            
            
            <option> &nbsp;&nbsp;&nbsp;2019-20</option>
             <option> &nbsp;&nbsp;&nbsp;2020-21</option>
              <option> &nbsp;&nbsp;&nbsp;2021-22</option>
        </select>
        <br><br><br>
          &nbsp;&nbsp;&nbsp;<button class="btn"><center>LOGIN</center></button>
        </form>
    </div>
   
</div>
</div>
 
</body>
</html>
