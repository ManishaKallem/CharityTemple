<%@page import="temple.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader1.jsp"%>

<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Donation</title>
</head>
<body style="background-color:rgb(117,117,117);">
<%
String msg = request.getParameter("msg");
if("done".equals(msg)){
%>
<h3 class="alert">Donation Added Successfully!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>
<%
int id = 1;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select max(id) from product");
	while(rs.next()){
		id = rs.getInt(1);
		id = id+1;
	}
}
catch(Exception e){}


%>
<form action="addNewProductAction.jsp" method="post">
<h3 style="color: yellow;">Donation ID: <% out.println(id); %> </h3>
<input type="hidden" name="id" value="<% out.println(id); %>">

<div class="left-div">
 <h3>Enter Your Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter Your Name:" required>
 
<hr>
</div>

<div class="right-div">
<h3>Enter Category of Donation</h3>
<input class="input-style" type="text" name="category" placeholder="Enter the category:(Ex: Money)" required>
 
<hr>
</div>

<div class="left-div">
<h3>Enter worth of the Product/Donating Amount</h3>
<input class="input-style" type="number" name="price" placeholder="Enter the worth of the Product/Donating Amount:" required>
 
<hr>
</div>

<div class="right-div">
<h3>Active</h3>
  <select class="input-style" name="active">
  <option value="Available">Available</option>
  <option value="Unavailable">Unavailable</option>
  </select>
<hr>
</div>
 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
 </form>

</body>
<br><br><br>
</body>
</html>
