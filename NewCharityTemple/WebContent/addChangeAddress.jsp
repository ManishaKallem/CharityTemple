<%@page import="temple.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Add or Change Address</title>
</head>
<body background="https://images.unsplash.com/photo-1605106325682-3482f7c1c9c4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHBhdHRlcm5zfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60">
<%
String msg=request.getParameter("msg"); 
if("valid".equals(msg)){
%>
<h3 class="alert">Address successfully Updated!</h3>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h3 class="alert">something went wrong!</h3>
<%} %>
<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from users where email='"+email+"'");
	while(rs.next()){ 
%>
<form action="addChangeAddressAction.jsp" method="post">
 <h3 style="color:white;">Enter Your Address</h3>
 <input class="input-style" type="text" name="address" value="<%= rs.getString(7) %>" placeholder="Enter Your Address" required>
 <hr>
<h3 style="color:white;">Enter Your City</h3>
<input class="input-style" type="text" name="city" value="<%= rs.getString(8) %>" placeholder="Enter Your City" required>
<hr>
<h3 style="color:white;">Enter Your State</h3>
<input class="input-style" type="text" name="state" value="<%= rs.getString(9) %>" placeholder="Enter Your State" required>
<hr>
<h3 style="color:white;">Enter Your Country</h3>
<input class="input-style" type="text" name="country" value="<%= rs.getString(10) %>" placeholder="Enter Your Country" required>
<button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button> 
<%
}
}
catch(Exception e){
	
}%>
</form>
</body>
<br><br><br>
<br>
</html>