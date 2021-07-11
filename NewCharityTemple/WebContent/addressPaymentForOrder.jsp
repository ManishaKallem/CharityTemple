<%@page import="temple.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/addNewProduct-style.css" type="text/css"/>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Address and Payment</title>
<script>
if(window.history.forward(1) != null)
	window.history.forward(1);
</script>
</head>
<body style="background-color:black;">
<br>
<table>
<thead>
<%
try{
String email = session.getAttribute("email").toString();
Connection con = ConnectionProvider.getCon();
Statement st = con.createStatement();
%>

          <tr>
          <th scope="col"><a href="myCart.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></th>
          </tr>
  </thead>
         <%
        ResultSet rs2 = st.executeQuery("select *from users where email='"+email+"'");
        while(rs2.next()){
        %>
        </tbody>
</table>
      
<hr style="width: 100%">
<form action="addresspaymentrequest.jsp" method="post">

 <div class="left-div">
 <h3>Enter Address</h3>
<input class="input-style" type="text" name="address" value="<%= rs2.getString(7) %>" placeholder="Enter your address" required>
 </div>

<div class="right-div">
<h3>Enter city</h3>
<input class="input-style" type="text" name="city" value="<%= rs2.getString(8) %>" placeholder="Enter your city" required>
</div> 

<div class="left-div">
<h3>Enter State</h3>
<input class="input-style" type="text" name="state" value="<%= rs2.getString(9) %>" placeholder="Enter your state" required>
</div>

<div class="right-div">
<h3>Enter country</h3>
<input class="input-style" type="text" name="country" value="<%= rs2.getString(10) %>" placeholder="Enter your country" required>
</div>
<h4 style="color: red">*This address will also updated to your profile</h4>
<hr style="width: 100%">
<div class="left-div">
<h3>Select the way of Payment from us</h3>
<select class="input-style" name="paymentMethod">
 <option value="Direct Delivery">Donation to your address by Our Volunteer</option>
 <option value="Online Payment">Online Payment in case Category is Money</option>
</select>
</div>

<div class="right-div">
<h3>UPI ID(In case Online Payment):</h3>
<input class="input-style" type="text" name="transactionId" placeholder="Enter your UPI ID">
<h4 style="color: red">*If you select online Payment then enter you UPI ID here otherwise leave this blank</h4>
</div>
<hr style="width: 100%">

<div class="left-div">
<h3>Mobile Number</h3>
<input class="input-style" type="number" name="mobileNumber" value="<%= rs2.getString(3) %>" placeholder ="Enter your mobile Number" required>
<h3 style="color: red">*This mobile number will also updated to your profile</h3>
</div>
<div class="right-div">
<h3 style="color: red">*If you enter wrong UPI id then your Request will be cancelled!</h3>
<button class="button" type="submit">Proceed to place your Request<i class='far fa-arrow-alt-circle-right'></i></button>

</div>
</form>
<%
        }
}
catch(Exception e){
	
}

%>

      <br>
      <br>
      <br>

</body>
</html>