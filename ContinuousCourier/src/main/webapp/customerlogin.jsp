<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
.btn{
color black;
}

.btn:hover{
color: red;
text-decoration: blink;
font-size:35px
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
				  <li><a href="/">Home</a></li>
				  <li><a href="adminlogin">Admin</a></li>
				  <li><a href="branchmanagerlogin">BranchManager</a></li>
				  <li><a href="customerlogin">Customer</a></li>
				</ul>
            </nav>
           </div>
<br><br>

<h3 align=center><u>   Customer Login</u></h3>

<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>

<br>
<div align="center">
<form method="post" action="checkcuslogin">

<table>

<tr>
<td><label>Username</label></td>
<td><input type="text" name="cuname" required></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="cpwd" required></td>
</tr>

<tr><td></td></tr>

<tr align=center>

<td colspan="2"><input type="submit" value="Login" class="button"></td>

</tr>

</table>

</form>
</div>
<br><br>

<h3 align=center>

New to Our Service <a href="addcustomer" class="btn">Register Here</a>

</h3>

	</div>
</body>
</html>

 
