<%@page import="temple.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader1.jsp"%>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Messages Received!</title>
<style>
h3{
color: yellow;
text-align: center;
}
</style>
</head>
<body style="background-repeat: repeat; background-size: 1500px 800px; " background="https://png.pngtree.com/thumb_back/fh260/back_our/20190620/ourmid/pngtree-charity-sale-charity-poster-background-image_165549.jpg">
<div style="color: black; text-align: center; font-size: 30px;">Messages Received <i class='fas fa-comment'></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Email</th>
            <th scope="col">Subject</th>
            <th scope="col">Body</th>
            
          </tr>
        </thead>
        <tbody>
       <%
       try{
    		Connection con = ConnectionProvider.getCon();
    		Statement st = con.createStatement();
    		ResultSet rs = st.executeQuery("select *from message");
    		while(rs.next()){
       %>
          <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            
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