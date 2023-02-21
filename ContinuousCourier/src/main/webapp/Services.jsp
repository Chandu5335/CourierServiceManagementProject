
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<title>Continuous Couriers</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<style type="text/css">
*

{
margin: 0;
padding: 0;
font-family: 'Montserrat', sans-serif;
transition: 0.3s;
}
body
{
width: 100vw;
height: 100vh;
background: #f1f1f1;
overflow: hidden;
margin-down:50px;
}
h3
{
   
margin-top: 100px;
margin-left: 100px;
color: black;
letter-spacing: 1.5px;
}
h1
{
font-size: 40px;
color: #3c3e41;
margin-left: 100px;
margin-top: 20px;
}
.container
{
width: 1200px;
margin: auto;
display: flex;
justify-content: space-between;
align-items: center;
padding-top: 50px;
}
.box
{
width: 250px;
height: 250px;
padding: 50px;
overflow: hidden;
border-radius: 14px;
background: linear-gradient(145deg, #e6e6e6, #ffffff);
box-shadow: 8px 8px 16px #d1d1d1,
-8px -8px 16px #ffffff;
cursor: pointer;
}
.box:hover
{
background: linear-gradient(145deg, #bb0738 , #ff3366);
box-shadow: 8px 8px 16px #d1d1d1,
-8px -8px 16px #ffffff;
}
.box .icons
{
font-size: 50px;
color: #ff3366;
margin-top: 10px;
}
.box:hover .icons
{
margin-top: 0px;
color: #fff;
}
.box h2
{
font-weight: 500;
margin-top: 25px;
}
.box:hover h2
{
color: #fff;
}
.box p
{
color: grey;
font-weight: 400;
margin-top: 25px;
}
.box:hover p
{
color: #fff;
}
.arrow
{
font-size: 30px;
color: #ff3366;
margin-top: 40px;
display: none;
}
.box:hover .arrow
{
color: #fff;
margin-top: 30px;
display: block;
}

li a:hover{
 text-decoration: underline; 
}
img{
border-radius:100px;
}
</style>
</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#"> <img  alt="" src="images/logo.jpg"  width="30"> Continuous Couriers |</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Services">Services</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact" >Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="aboutus" >About Us</a>
      </li>
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Login
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="adminlogin">Admin Login</a>
          <a class="dropdown-item" href="branchmanagerlogin">BranchAdmin Login</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="customerlogin">Customer Login</a>
        </div>
      </li>
    </ul>
  </div>
</nav>
<body>
    <div class="full-page">
        
<h1>Service</h1>
<h1>We Have For You..!!</h1>
<div class="container">
<div class="box">
<ion-icon class="icons" name="menu-outline"></ion-icon>
<h2>Residential Service</h2>
<p>Here we Transport your products within local range. 
    Cost per product depends on its space!!.</p>
<ion-icon class="arrow" name="arrow-forward-outline"></ion-icon>
<a href="/customerlogin">Find here</a>
</div>
<div class="box">
<ion-icon class="icons" name="book-outline"></ion-icon>
<h2> Packing Service</h2>
<p>If your huge Products need to be divided into groups , you can have this service benifitely.
    Here Service Charge depends on Pack required!!</p>
<ion-icon class="arrow" name="arrow-forward-outline"></ion-icon>

<a href="/customerlogin">Find here</a>
</div>
<div class="box">
<ion-icon class="icons" name="tv-outline"></ion-icon>
<h2>Megalopies Service</h2>
<p>We also have Service which helps your Products to reach some other cities Service Center.
    You Can also have this facility!!.</p>
<ion-icon class="arrow" name="arrow-forward-outline"></ion-icon>
<a href="/customerlogin">Find here</a>
</div>
</div>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</div>
<br>
</body>
</html>