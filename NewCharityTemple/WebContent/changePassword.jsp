<%@page import="temple.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%> 
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Password</title>
</head>
<body background="https://t4.ftcdn.net/jpg/01/19/11/55/360_F_119115529_mEnw3lGpLdlDkfLgRcVSbFRuVl6sMDty.jpg">
<%
String msg = request.getParameter("msg");
if("notMatch".equals(msg)){
%>
<h3 class="alert">Your new password is not same as confirmed one!</h3>
<%} %>
<%
if("wrong".equals(msg)){
%>
<h3 class="alert">Your previous password is incorrect!</h3>
<%} %>
<%
if("done".equals(msg)){
%>
<h3 class="alert">Password changed successfully!</h3>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h3 class="alert">something went wrong!</h3>
<%} %>
 <hr>
 <form action="changePasswordAction.jsp" method="post">
 <h3 style="color:white;"><b>Enter previous Password:</b></h3>
 <input class=input-style type="password" name="oldPassword" placeholder="Enter Previous Password" required>
<hr>
<h3 style="color:white;"><b>Enter New Password:</b></h3>
<input class=input-style type="password" name="newPassword" placeholder="Enter New Password" required>
<hr>
<h3 style="color:white;"><b>Confirm Password:</b></h3>
<input class=input-style type="password" name="confirmPassword" placeholder="confirm your New Password" required>
<button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>