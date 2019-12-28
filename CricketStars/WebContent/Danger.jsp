<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" ref="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</head>
<body>
	<a href="teamsrv1">GetTeams</a>
	<br>
	<br>
	<br>
	<a href="teamsrv1" class="btn btn_primary">Add Team</a>
	<h2 class="jumbotron">Team Info</h2>
	<%
   List<TeamInfo> list =  (List<TeamInfo>)request.getAttribute("teamsData");

 

%>
	<table class="table table_hover">
		<tr>
			<th></th>
			<th>Id</th>
			<th>Team Name</th>
			<th>City</th>
			<th>Captain</th>
			<th>Ambassader</th>
		</tr>
		<%
          if(list!=null)
          for(TeamInfo info : list){
          
      %>
		<tr>
			<td><input type="checkbox" /></td>
			<td><%= info.getTeamId()%>></td>
			<td><%= info.getTeamName()%></td>
			<td><%= info.getCity()%></td>
			<td><%= info.getCaptain()%></td>
			<td><%= info.getAmbassader()%></td>
			<td><a href="" class="btn btn_primary">edit</a></td>
			<td><a href="" class="btn btn_danger">delete</td>
		</tr>
   <%
		   
		
		
     %>
</body>
</html>