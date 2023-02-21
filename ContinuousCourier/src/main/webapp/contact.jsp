<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Form</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

 
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css" />
    <style>
 li a:hover{
 text-decoration: underline; 
}
img{
border-radius:100px;
}
    
body {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  font-weight: 100;
  font-size: 12px;
  line-height: 30px;
  color: #777;
  background: #fff;
}

.container {
border-radius:50px;
  max-width: 400px;
  width: 100%;
  margin: 0 auto;
  position: relative;
}
body{
background-image:url(images/fb.avif);
background-repeat: no-repeat;
background-position: center;
background-size: 1800px;


}
#contactus {
  font: 400 12px/16px "Roboto", Helvetica, Arial, sans-serif;
    background: #F9F9F9;
  padding: 25px;
  margin: 150px 0;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);

    
}

#contactus h3 {
  display: block;
  font-size: 30px;
  font-weight: 300;
  margin-bottom: 10px;
}

#contactus h4 {
  margin: 5px 0 15px;
  display: block;
  font-size: 13px;
  font-weight: 400;
}

fieldset {
  border: medium none !important;
  margin: 0 0 10px;
  min-width: 100%;
  padding: 0;
  width: 100%;
}

#contactus input[type="text"],
#contactus input[type="email"],
#contactus input[type="tel"],
#contactus input[type="url"],
#contactus textarea {
  width: 100%;
  border: 1px solid #ccc;
  background: #FFF;
  margin: 0 0 5px;
  padding: 10px;
}

#contactus input[type="text"]:hover,
#contactus input[type="email"]:hover,
#contactus input[type="tel"]:hover,
#contactus input[type="url"]:hover,
#contactus textarea:hover {
  -webkit-transition: border-color 0.3s ease-in-out;
  -moz-transition: border-color 0.3s ease-in-out;
  transition: border-color 0.3s ease-in-out;
  border: 1px solid #aaa;
}

#contactus textarea {
  height: 100px;
  max-width: 100%;
  resize: none;
}

#contactus button[type="submit"] {
  cursor: pointer;
  width: 100%;
   border: none; 
  background: #f0715f;
  color: #FFF;
  margin: 0 0 5px;
  padding: 10px;
  font-size: 15px;
}

#contactus button[type="submit"]:hover {
  background: #f07150;
  -webkit-transition: background 0.3s ease-in-out;
  -moz-transition: background 0.3s ease-in-out;
  transition: background-color 0.3s ease-in-out;
}

#contactus button[type="submit"]:active {
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
}

#contactus input:focus,
#contactus textarea:focus {
  outline: 0;
  border: 1px solid #aaa;
}

::-webkit-input-placeholder {
  color: #888;
}

:-moz-placeholder {
  color: #888;
}

::-moz-placeholder {
  color: #888;
}

:-ms-input-placeholder {
  color: #888;
}


.12{
border-radius:30px;
}
    </style>
</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#"> <img  alt="" src="images/logo.jpg"	width="30"> Continuous Couriers |</a>
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
    <div class="container" id=12>  
        <form id="contactus" action="addmsg" method="post" modelAttribute="con" >
          <h3>Contact us form</h3>
          
          <fieldset>
            <input placeholder="name"path="name" type="text" tabindex="1" required autofocus>
          </fieldset>
          <fieldset>
            <input placeholder="Email Address" path="email" type="email" tabindex="2" required>
          </fieldset>
          <fieldset>
            <input placeholder="Phone Number" path="phone" type="tel" tabindex="3" required>
          </fieldset>
          <fieldset>
            <textarea placeholder="Type your message here..." path="msg" tabindex="5" required></textarea>
          </fieldset>
          <fieldset>
            <button name="submit" type="submit" id="contactus-submit" data-submit="...Sending">Send Now</button>
          </fieldset>
        
        </form>
      </div>
</body>
</html>