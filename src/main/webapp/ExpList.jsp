<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="tnp.model.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link rel="stylesheet" href="styles.css">
</head>
<body>
<form action="DisplayExperienceController">
<%!List<Experience> lstexp=null;%>
<%
lstexp=(List<Experience>)session.getAttribute("explist");
if(lstexp!=null){
%>
<h1 class="my-5 mx-5 dis" >Student experiences List</h1>
<table  class="table table-striped">
<thead>
<tr>
<th>Company Name</th>
<th>C No</th>
</tr>
</thead>
<%
	for(Experience e:lstexp){
%>
<tbody>
	<tr>
	<td><%=e.getSname() %></td>
	<td><%=e.getCno() %></td>
	<td><%=e.getCmpname() %></td>
	<td><%=e.getExp() %></td>
	</tr>
</tbody>	
<%}%>
</table>	
<%}%>
</form>
</body>
</html>