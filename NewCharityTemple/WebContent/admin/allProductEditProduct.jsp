<%@page import="temple.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader1.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Available Donations</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body style="background-repeat: repeat; background-size: 1500px 800px; " background="https://png.pngtree.com/thumb_back/fh260/back_our/20190620/ourmid/pngtree-charity-sale-charity-poster-background-image_165549.jpg">
<div style="color: black; text-align: center; font-size: 30px;">All Available Donations <i class='fab fa-elementor'></i></div>
<%
String msg = request.getParameter("msg");
if("done".equals(msg)){
%>
<h3 class="alert" style="color:red">Donation Updated Successfully!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert" style="color:red">Some thing went wrong! Try Again!</h3>
<%} %>

<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category of Donation</th>
            <th scope="col"><i class="fa fa-inr"></i>Worth</th>
            <th>Status</th>
            <th scope="col">Edit <i class='fas fa-pen-fancy'></i></th>
          </tr>
        </thead>
        <tbody>
        <%
        try{
	       Connection con = ConnectionProvider.getCon();
	       Statement st = con.createStatement();
	       ResultSet rs = st.executeQuery("select *from product");
	       while(rs.next()){
       %>
       
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
            <td><a href="editProduct.jsp?id=<%=rs.getString(1) %>">Edit <i class='fas fa-pen-fancy'></i></a></td>
          </tr>
          <%
	       }
        }
        catch(Exception e){
        	System.out.println(e);
        }
          %>
         
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>