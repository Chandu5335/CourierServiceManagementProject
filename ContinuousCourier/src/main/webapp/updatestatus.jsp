<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<style>

.blink {
  animation: blink 1s steps(1, end) infinite;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

.button {
  background-color: blue;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date]
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}

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
	background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url(images/track.webp);
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
				  <li><a href="branchmanagerhome">Home</a></li>
				  <li><a href="viewallorders">View Orders</a></li>
				  <li><a href="branchmanagerlogin">Logout</a></li>
				</ul>
				</nav>
				</div>

<br>

<h3 align=center>It is order of &nbsp;<c:out value="${cuname}"></c:out></h3>

<br>

<h3 align=center><u>Update Order Status</u></h3>

<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>

<br>
<div align="center" class=viewable>
<form  method="post" action="updatestatus">

<table align=center>

<tr><th>Username:</th>&nbsp;<td>${cuname}</td></tr>
<tr>
<td><label>Status</label></td>
<td>

<form>
<input type = "radio" name="Status" value="Placed" required="required"/>Placed
<input type = "radio" name="Status" value="In Transit" required="required"/>In Transit
<input type = "radio" name="Status" value="Out for delivery" required="required"/>Out for delivery
<input type = "radio" name="Status" value="Delivered" required="required"/>Delivered

</form>

</td>
</tr>
<tr align=center>

<td colspan="2"><input type="submit" value="Update" class="button"></td>

</tr>

</table>

</form>
</div>
</div>
</body>
</html>

 
