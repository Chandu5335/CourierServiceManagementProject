<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<style>
    *
{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
.full-page
{
    height: 100%;
	width: 100%;
	background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url(images/bg-6.avif);
	background-position: center;
	background-size: cover;
	position: absolute;
}
.navbar
{
    display: flex;
    align-items: center;
    padding: 20px;
    padding-left: 50px;
    padding-right: 30px;
    padding-top: 50px;
}
nav
{
    flex: 1;
    text-align: right;
}
nav ul 
{
    display: inline-block;
    list-style: none;
}
nav ul li
{
    display: inline-block;
    margin-right: 70px;
}
nav ul li a
{
    text-decoration: none;
    font-size: 20px;
    color: white;
    font-family: sans-serif;
}
nav ul li button
{
    font-size: 20px;
    color: white;
    outline: none;
    border: none;
    background: transparent;
    cursor: pointer;
    font-family: sans-serif;
}
nav ul li button:hover
{
    color: aqua;
}
nav ul li a:hover
{
    color: black;
}
a
{
    text-decoration: none;
    color: palevioletred;
    font-size: 28px;
}
.viewable{
background-color:lightblue;
 background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4));
 margin-left:500px;
 margin-right:500px;
 border-radius: 10px;

}
</style>
</head>
<body>
<div class="full-page">
        <div class="navbar">
            <div>
                <a href='#'>Continuous Couriers</a>
            </div>
		<nav>
		       <ul id='MenuItems'>
				  <li><a href="adminhome">Home</a></li>
				  <li><a href="viewallcus">View All Customers</a></li>
				  <li><a href="adminlogin">Logout</a></li>
				</ul>
				</nav>
				</div>

<br>

<h3 align=center>Customer Details&nbsp;

<br>
<div align="center" class=viewable>
<table>

<tr><th>ID:</th>&nbsp;<td>${cus.id}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${cus.name}</td></tr>
<tr><th>Gender:</th>&nbsp;<td>${cus.gender}</td></tr>
<tr><th>Location:</th>&nbsp;<td>${cus.location}</td></tr>
<tr><th>Email ID:</th>&nbsp;<td>${cus.emailid}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${cus.contactno}</td></tr>



</table>
</div>
</div>

</body>
</html>

 
