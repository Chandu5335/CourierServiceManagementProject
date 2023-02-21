<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

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
	background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url(images/cod.webp);
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
background-color:white;
 background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4));
 margin-left:200px;
 margin-right:200px;
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
				  <li><a href="viewallbms">View All BranchManagers</a></li>
				  <li><a href="addbranchmanager">Add BranchManagers</a></li>
				  <li><a href="adminlogin">Logout</a></li>
				</ul>
				</nav>
				</div>

<br><br>
<div  align="center"  class=viewable>
<br>
<h3 align=center><u>******BranchManagers******</u></h3>
<table class="table table-striped">
  <tbody>
	 <thead>

<tr>

<th scope="col">ID</th>
<th scope="col">Name</th>
<th scope="col">Gender</th>
<th scope="col">Location</th>
<th scope="col">Email ID</th>
<th scope="col">Username</th>
<th scope="col">Contact No</th>
<th scope="col">Branch</th>


</tr>
</thead>
<c:forEach items="${bmlist}" var="bm">

<tr>

<td scope="row"> <c:out value="${bm.id}"></c:out>   </td>
<td scope="row"> <c:out value="${bm.name}"></c:out>   </td>
<td scope="row"> <c:out value="${bm.gender}"></c:out>   </td>
<td scope="row"> <c:out value="${bm.location}"></c:out>   </td>
<td scope="row"> <c:out value="${bm.emailid}"></c:out>   </td>
<td scope="row"> <c:out value="${bm.username}"></c:out>   </td>
<td scope="row"> <c:out value="${bm.contactno}"></c:out>   </td>
<td scope="row"> <c:out value="${bm.branch}"></c:out>   </td>
<td scope="row"> 

<a href='<c:url value='deletebm?id=${bm.id}'></c:url>'> Delete</a>&nbsp;&nbsp;
</td>
<td scope="row"> 
<a href='<c:url value='viewbmbyid?id=${bm.id}'></c:url>'> View</a>&nbsp;&nbsp;

</td>


</tr>

</c:forEach>
</tbody>
</table>
<br>
</div>
</div>

</body>
</html>

 
