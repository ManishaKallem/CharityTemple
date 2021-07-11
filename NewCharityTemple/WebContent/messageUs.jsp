<%@page import="temple.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body background="https://images.unsplash.com/photo-1605106325682-3482f7c1c9c4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHBhdHRlcm5zfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60">
<div style="color: white; text-align: center; font-size: 30px;">Message Us <i class='fab fa-comment'></i></div>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
%>
<h3 style="text-align:center;color:green">Message successfully sent! Our Volunteers will contact you soon!<i class="fas fa-smile"></i></h3>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h3 style="text-align:center;color:red">something went wrong!</h3>
<%} %>
<form action="MessageAction.jsp" method="post">
<input class=input-style name="subject" type="text" placeholder="Type the subject of your message..." required>
<hr>
<textarea class=input-style name="body"  placeholder="Type your message here..." required></textarea> 
<hr>
<button class="button" type="submit">Send<i class='far fa-arrow-alt-circle-up'></i></button>
</form>
</body>
<br><br><br>
</html>