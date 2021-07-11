<%@page import="temple.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header1.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/addNewProduct-style.css">
<title>My Requests</title>
</head>
<body style="background-color:black;">
<div style="background-color: black;color: white; text-align: center; font-size: 30px;">My Requests <i class='fab fa-elementor'></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">S.No</th>
            <th scope="col">Name</th>
            <th scope="col">category of Donation</th>
            <th scope="col"><i class="fa fa-inr"></i>Worth of Donation/Amount</th>
            <th scope="col">Quantity</th>
            <!-- <th scope="col"><i class="fa fa-inr"></i> Sub Total</th> -->
            <th scope="col">Requested Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
              <th scope="col">Status</th>
              
          </tr>
        </thead>
        <tbody>
<%
int sno=0;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from cart inner join product where cart.product_id=product_id and cart.email='"+email+"' and cart.orderDate is not NULL");
	while(rs.next()){
		sno=sno+1;
		

%>
          <tr>
            <td><% out.println(sno); %></td>
            <td><%= rs.getString(17) %></td>
            <td><%= rs.getString(18) %></td>
            <td><i class="fa fa-inr"></i> <%= rs.getString(19) %></td>
            <td><%= rs.getString(3) %></td>
            <!--  <td><i class="fa fa-inr"></i></td> -->
             <td><%= rs.getString(11) %></td>
              <td><%= rs.getString(12) %></td>
               <td><%= rs.getString(13) %></td>
               <td><%= rs.getString(15) %></td>
            </tr>
         <%
         }
}
catch(Exception e){
	
}
         %>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>