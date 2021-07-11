 <%@page import="temple.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader1.jsp"%>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Edit Donation</title>
<style>
.back{
color: white;
margin-left: 2.5%;
}
</style>
</head>
<body style="background-color:rgb(117,117,117);">
<h2><a class="back" href="allProductEditProduct.jsp"><i class='far fa-arrow-alt-circle-left'>Back</i></a></h2>
<%
String id = request.getParameter("id");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from product where id='"+id+"'");
	while(rs.next()){
		
%>
<form action="editProductAction.jsp" method="post">
<input type="hidden" name="id" value="<% out.println(id);%>">
<div class="left-div">
 <h3>Enter Your Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter Your Name:" value="<%=rs.getString(2) %>" required>
 
<hr>
</div>

<div class="right-div">
<h3>Enter Category of Donation</h3>
<input class="input-style" type="text" name="category" placeholder="Enter the category of Donation(Ex: Money):" value="<%=rs.getString(3) %>" required>
 
<hr>
</div>

<div class="left-div">
<h3>Enter Worth of the Product/Donating Amount</h3>
<input class="input-style" type="number" name="price" placeholder="Enter the Worth of the Product/Donating Amount:" value="<%=rs.getString(4) %>" required>
 
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
<%
}
}
catch(Exception e){
	
}
%>
</form>

</body>
<br><br><br>
</body>
</html>