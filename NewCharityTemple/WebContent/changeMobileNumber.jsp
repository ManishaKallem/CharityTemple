<%@page import="temple.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Mobile Number</title>
</head>
<body background="https://images.unsplash.com/photo-1605106325682-3482f7c1c9c4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHBhdHRlcm5zfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60">
<%
String msg=request.getParameter("msg"); 
if("done".equals(msg)){
%>
<h3 class="alert">Your Mobile Number Succesfully Updated!</h3>
<%} %>
<%
if("wrong".equals(msg)){
%>
<h3 class="alert">Your Password is Incorrect!!</h3>
<%} %>

<form action="changeMobileNumberAction.jsp" method="post">
 <h3 style="color:white;">Enter Your New Mobile Number</h3>
 <input class="input-style" type="number" name="mobileNumber" placeholder="Enter Your Mobile Number" required>
 <hr>
<h3 style="color:white;">Enter Your Password</h3>
<input class="input-style" type="password" name="password" placeholder="Enter Your Password" required>
<hr>
<button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button> 

</form>
</body>
<br><br><br>
<br>
</html>