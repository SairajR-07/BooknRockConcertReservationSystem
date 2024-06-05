<!--
@author: RPS
-->
<?php
include('config.php');
session_start();
date_default_timezone_set('Europe/Athens');
?>
<!DOCTYPE HTML>
<html>
<head>
   <style>
    body{
        font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;    

    }
    .abc{
    color: cyan;
    
    font-size:80px;
    position:absolute;
    top:90px;
    left:230px;
    display: flex;
    flex-wrap: wrap;
    transform: rotate(0deg);


    
    }
    .my{
        
   
    border:none;
    padding: 12px;
    border-radius: 8px;


    display: flex;
    flex-wrap: wrap;
    transform: rotate(3deg);


}

.ph{
    height:140px;
    width:140px;
    border-radius: 50%;
    border:5px solid cyan;


}
.im{
    position:relative;
    top:50px
}
.la{
    font-size:100px;
}
.lr{
    font-size:25px;
}


       
    
   </style>
    </style>
<title>Free Concert Website </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="style.css 2">
</head>
<body>
   
    

    </div>
    
<div class="header">
    <div class="header-top">
        <div class="wrap">
        <h1 class="abc" >BooknRock</h1>
        <div class="im">
        <img src="images/logo.jpeg"
 alt="" class="ph">
</div>
              <div  class="nav-wrap">
                    <ul  class="group" id="example-one">
                       <li  ><a href="index.php">  <h2 class="lr">Home</h2></a></li>
                       <li><a href="concert_events.php"><h2 class="lr">Concerts</h2></a></li>
                        <li ><?php if(isset($_SESSION['user'])){
                       $us=mysqli_query($con,"select * from tbl_registration where user_id='".$_SESSION['user']."'");
        $user=mysqli_fetch_array($us);?><a href="profile.php" ><div class="lr"><?php echo $user['name'];?></div></a><a href="logout.php"><h2 class="lr">Logout </h2></a><?php }else{?><a href="login.php">Login</a><?php }?></li>
                    </ul>	  
			  </div>
 			<div class="clear"></div>
   		</div>
    </div>
<div class="block">
	<div class="wrap">	
        <form action="process_search.php" id="reservation-form" method="post" onsubmit="myFunction()">
		       <fieldset>
		       	<div class="field" >
                                <input type="text"  placeholder="Search Concepts Here..." style="height:27px;width:500px"   id="search111" name="searching"> 
                                <input type="submit"   value="Search" style="height:28px;padding-top:4px" id="button111">
    </div>       	
		       </fieldset>
            </form>
            <div class="clear"></div>
   </div>
</div>
<script>
function myFunction() {
     if($('#search111').val()=="")
        {
            alert("Please enter a concert name...");//empty searchBar field 
        }
  }
    </script>
  
