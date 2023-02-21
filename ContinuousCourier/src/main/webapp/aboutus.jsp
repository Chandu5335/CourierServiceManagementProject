<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<title>
Continuous Couriers
</title>
<!-- Latest compiled and minified CSS -->
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style type="text/css">
li a:hover{
 text-decoration: underline; 
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
img{
border-radius:100px;
}
</style>
</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#"><img  alt="" src="images/logo.jpg"	width="30"> Continuous Couriers |</a>
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
<div class="about">
  <h1>About Us</h1>
  <p>Continuous Couriers is our markerting website which makes you and your product closer..!!</p>
  <p>Every Customer can have their orders shifted to their respective mentioned locations.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="/images/ram.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <a href="https://www.instagram.com/___mr.bunnie___/">RAM CH</a>
        <p class="title">Project Devoloper</p>
        <p>Miracles Can Be Made by anyone and anywhere</p>
        <p>klucse2000032089@gmail.com</p>
        <a href="https://www.instagram.com/___mr.bunnie___/"><button class="button">Contact</button></a>
        
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="/images/chandu.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <a href="https://www.instagram.com/_winning_.end/">POTHKAM CHANDU</a>
        <p class="title">Project Devoloper</p>
        <p>Just Be Confident With What You Know And What You Done</p>
        <p>klucse2000032093@gmail.com</p>
        <a href="https://www.linkedin.com/in/pothkam-chandu-08422a215/"><button class="button">Contact</button></a>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="/images/Tendulkar.jpg" alt="John" style="width:100%">
      <div class="container">
        <a href="https://www.instagram.com/nerellatendulkar/">TENDULKAR N</a>
        <p class="title">Project Devoloper</p>
        <p>Gaining Knowledge Is ONLY THE Way..!!</p>
        <p>klucse2000032096@gmail.com</p>
        <a href="https://www.instagram.com/tendulkar_nerella/"><button class="button">Contact</button></a>
      </div>
    </div>
  </div>
</div>

</body>
</html>