<%@page import="temple.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/addNewProduct-style.css">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body background="https://images.unsplash.com/photo-1605106325682-3482f7c1c9c4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHBhdHRlcm5zfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60">
<div style="background-color: black;color:white; text-align: center; font-size: 30px;">Home<i class='fa fa-institution'></i></div>
<%
String msg = request.getParameter("msg");
if("added".equals(msg)){
%>
<h3 class="alert">Requirement Added Successfully!</h3>
<%} %>
<%
if("exist".equals(msg))
{
%>
<h3 class="alert"> This Donation already exists in your requirements! Quantity of the requirement is increased!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Something went Wrong!! Try Again!</h3>
<%} %>

<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category of Donation</th>
            <th scope="col"><i class="fa fa-inr"></i>Worth of Donation</th>
            <th scope="col">Add to Requirements <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
       <%
       try{
    		Connection con = ConnectionProvider.getCon();
    		Statement st = con.createStatement();
    		ResultSet rs = st.executeQuery("select *from product where active='Available'");
    		while(rs.next()){
       %>
          <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4)%></td>
            <td><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Add to Requirements<i class='fas fa-cart-plus'></i></a></td>
          </tr>
        <%
        }
    		}
    		catch(Exception e){}%>
        </tbody>
      </table>
      <br>
      <br>
      <br>
</body>

</html>