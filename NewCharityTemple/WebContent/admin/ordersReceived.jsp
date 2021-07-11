<%@page import="temple.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader1.jsp"%>
<html>
<head>
<link rel="stylesheet" href="../css/bill.css">
<title>Requests Received!</title>
<style>
h3{
color: yellow;
text-align: center;
}
</style>
</head>
<body>
<div style="color: black; text-align: center; font-size: 30px;">Requests Received<i class='fas fa-archive'></i></div>
<%
String msg=request.getParameter("msg"); 
if("cancel".equals(msg)){
%>
<h3 class="alert">Request Cancelled Successfully!</h3>
<%} %>
<%
if("delivered".equals(msg)){
%>
<h3 class="alert">Donation delivered to the Recipient Successfully!</h3>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h3 class="alert">something went wrong!</h3>
<%} %>
<table id="customers">
        <thead>
          <tr>
          <th scope="col">Mobile Number</th>
            <th scope="col">Name</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i>Sub Total</th>
            <th scope="col">Address</th>
            <th scope="col">City</th>
            <th scope="col">State</th>
            <th scope="col">Country</th>
            <th scope="col">Requested Date</th>
            <th scope="col">Tentative Delivery Date</th>
            <th scope="col">Payment-method</th>
            <th scope="col">UPI-ID(in case online payment)</th>
            <th scope="col">Status</th>
            <th scope="col">Cancel Request<i class="fas fa-windows-close"></i></th>
            <th scope="col">Service Delivered<i class="fas fa-dolly"></i></th>
            
          </tr>
        </thead>
        <tbody>
       <%
       try{
    		Connection con = ConnectionProvider.getCon();
    		Statement st = con.createStatement();
    		ResultSet rs = st.executeQuery("select *from cart inner join product where cart.product_id=product.id and cart.orderDate is not NULL and cart.status='processing'");
    		while(rs.next()){
       %>
          <tr>
          <td ><%= rs.getString(10) %></td>
           <td ><%= rs.getString(17) %></td>
           <td ><%= rs.getString(3) %></td>
           <td ><i class="fa fa-inr"></i><%= rs.getString(5) %></td>
           <td ><%= rs.getString(6) %></td>
           <td ><%= rs.getString(7) %></td>
           <td ><%= rs.getString(8) %></td>
           <td ><%= rs.getString(9) %></td>
           <td ><%= rs.getString(11) %></td>
           <td ><%= rs.getString(12) %></td>
           <td ><%= rs.getString(13) %></td>
           <td ><%= rs.getString(14) %></td>
           <td ><%= rs.getString(15) %></td>
            <td> <a href="cancelOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Cancel<i class="fas fa-window-close"></i></a></td>
            <td> <a href="deliveredOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Delivered<i class="fas fa-dolly"></i></a></td>
            
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