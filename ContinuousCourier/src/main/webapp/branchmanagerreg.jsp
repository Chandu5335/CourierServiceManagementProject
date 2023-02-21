<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

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
  border-radius:3px;
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

.viewable{
background-color:lightblue;
 background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4));
 margin-left:500px;
 margin-right:500px;
 border-radius: 10px;

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
    height: 125%;
	width: 100%;
	background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url(images/bg-5.avif);
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
			  <li><a class="active" href="viewallbms">View Branch Manager</a></li>
			  <li><a  href="adminlogin">Logout</a></li>
			</ul>
			</nav>
			</div>
<br><br>
<div class="viewable">
<br>
<h3 align=center><u>BranchManager Infomation</u></h3>

<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>

<br>

<div align="center">
<form:form action="addbranchmanager" method="post" modelAttribute="bm">

<table>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
<form:radiobutton path="gender" value="Male" required="required"/>Male
<form:radiobutton path="gender" value="Female" required="required"/>Female
</td>
</tr>

<tr><td></td></tr>


<tr>
<td><label>Location</label></td>
<td><form:input path="location" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Email ID</label></td>
<td><form:input path="emailid" type="email" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr class=float>
<td ><label>Username</label></td>
<td><form:input path="username" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr class=float>
<td><label>Password</label></td>
<td><form:password path="password" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr class=float>
<td><label>Contact No</label></td>
<td><form:input path="contactno" type="tel" required="required"/></td>
</tr>

<tr><td></td></tr>
<tr class=float>
<td><label>Branch</label></td>
<td><form:input path="branch" required="required"/></td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>


<tr align=center>
<td colspan=2><input type="submit" value="Add" class="button"></td>
</tr>

</table>
</form:form>
</div>
</div>
</div>




</body>
</html>

 
