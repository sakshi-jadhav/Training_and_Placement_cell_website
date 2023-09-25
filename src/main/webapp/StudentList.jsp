<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="tnp.model.*" %>
    <%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="index.html"%>
<link rel="stylesheet" href="sidebar.css">
</head>
<body>
	<div id="mySidebar" class="sidebar">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="CompanyAdd.jsp">Add Company</a> 
		<a href="#">Add Training</a> 
		<a href="DisplayStudReg">Student Record</a> 
		<a href="DisplayCompanyController">Display Jobs</a> 
		<a href="#">Display Training</a> 
		<a href="#">Interview Questions</a>
	</div>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg"
			style="margin-top: -9px; margin-left: -12px; margin-right: -12px;">
			<div class="container-fluid"
				style="background-color: #12276a; color: white; height: 60px;">
				<div id="main">
					<button class="openbtn" onclick="openNav()">&#9776;</button>
				</div>
				<a href="#" class="navbar-brand"> <img alt="cumminslogo"
					src="CumminsLogo.png">
				</a> <a><h5>Home</h5></a>
				<button class="navbar-toggler" type="button" style="color: white;"
					data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
					<span class="navbar-toggler-icon" style="color: white;"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end"
					id="collapsibleNavbar">
					<ul class="navbar-nav">

						<li class="nav-item"><div class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" role="button"
									data-bs-toggle="dropdown" style="color: white;">Login</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="Login.jsp">Student</a></li>
									<li><a class="dropdown-item" href="AdminLogin.jsp">Admin</a></li>
								</ul>
							</div>
						<li class="nav-item"><a class="nav-link" href="#AboutUs">About
								us</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Register</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<script>
		function openNav() {
			document.getElementById("mySidebar").style.width = "250px";
			document.getElementById("main").style.marginLeft = "250px";
		}

		function closeNav() {
			document.getElementById("mySidebar").style.width = "0";
			document.getElementById("main").style.marginLeft = "0";
		}
	</script>
<form action="DisplayStudReg">
<%!List<StudRegister> studlst=null; %>
<%
studlst=(List<StudRegister>)session.getAttribute("studlst");
if(studlst!=null){
%>
<table border="2px" align="center">
<tr><th>Student Name</th><th>C No</th><th>Email</th><th>Mobile No</th><th>Address</th><th>Graduation Year</th><th>Branch</th><th>CGPA</th><th>Password</th></tr>
<%
	for(StudRegister s:studlst){
%>
	<tr>
	<td><%=s.getSname() %></td>
	<td><%=s.getCno() %></td>
	<td><%=s.getSemail() %></td>
	<td><%=s.getMobno() %></td>
	<td><%=s.getSaddress() %></td>
	<td><%=s.getGraduyear() %></td>
	<td><%=s.getBranch() %></td>
	<td><%=s.getCgpa() %></td>
	<td><%=s.getPassword() %></td>
	</tr>
<%}%>
</table>	
<%}%>
</form>
</body>
</html>