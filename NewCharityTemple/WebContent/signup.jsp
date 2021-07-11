<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/sign.css" type="text/css"/>
<title>Signup</title>
</head>
<body background="https://t4.ftcdn.net/jpg/01/19/11/55/360_F_119115529_mEnw3lGpLdlDkfLgRcVSbFRuVl6sMDty.jpg">
<div id='container'>
  <div class='signup'>
  <form action="signupAction.jsp" method="post">
  <input type="text" name="name" placeholder="Enter Name" required>
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
  <select name="securityQuestion" required>
  <option value="What was your first car?">What was your first car?</option>
  <option value="What is the name of your first pet?">What is the name of your first pet?</option>
  <option value="What elementary school did you attend?">What elementary school did you attend?</option>
  <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
  </select>
  <input type="text" name="answer" placeholder="Enter answer" required>
  <input type="password" name="password" placeholder="Enter password" required>
  <input type="submit" value="Signup">
  </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'> 
    <img style="padding-left:1.5em; padding-top:2.5em;" src="file:///C:/Users/reliance/eclipse-workspace/NewCharityTemple/WebContent/images/Screenshot__329_-removebg-preview.png" alt="" width="400px" >
<%
String msg = request.getParameter("msg");
if("valid".equals(msg)){
%>
<h3 style="color:red">Successfully Registered!</h3>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h3 style="color:red">Some thing Went Wrong! Try Again !</h3>
<%} %>	
  </div>
</div>

</body>
</html>