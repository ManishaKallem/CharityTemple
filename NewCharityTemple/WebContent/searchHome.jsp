
<%@page import="temple.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/addNewProduct-style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body background="https://images.unsplash.com/photo-1605106325682-3482f7c1c9c4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHBhdHRlcm5zfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60">
<div style="color: white; text-align: center; font-size: 30px;">Home<i class='fa fa-institution'></i></div>


       <%
       int z = 0;
       try{
    	    String search=request.getParameter("search");
    		Connection con = ConnectionProvider.getCon();
    		Statement st = con.createStatement();
    		ResultSet rs = st.executeQuery("select *from product where name like '%"+search+"%' or category like '%"+search+"%' and active='Available'");
    		while(rs.next()){
    			z=1;
       %>
       <table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category of Donation</th>
            <th scope="col"><i class="fa fa-inr"></i>Worth of Donation/Amount</th>
            <th scope="col">Add to my Requirements <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4)%></td>
            <td><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Add to My Requirements <i class='fas fa-cart-plus'></i></a></td>
          </tr>
     <%
        }
    		}
    		catch(Exception e){}%>
        </tbody>
      </table>
      <%if(z==0){ %>
      <h1 style="color:yellow;text-align:center;">No matches Found!</h1>
      <img style="padding-left:15em;" src="https://i.insider.com/60887d033f0560001881c67b?width=1136&format=jpeg">
      <%} %>
      
      
      <br>
      <br>
      <br>
</body>

</html>