<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/sign.css">
<title>ForgotPassword</title>
</head>
<body background="https://t4.ftcdn.net/jpg/01/19/11/55/360_F_119115529_mEnw3lGpLdlDkfLgRcVSbFRuVl6sMDty.jpg">
<div id='container'>
  <div class='signup'>
  <form action="forgotPasswordAction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter Your Email:" required>
  <input type="number" name="mobileNumber" placeholder="Enter Your Mobile Number:" required>
  <select name="securityQuestion">
  <option value="What was your first car?">What was your first car?</option>
  <option value="What is the name of your first pet?">What is the name of your first pet?</option>
  <option value="What elementary school did you attend?">What elementary school did you attend?</option>
  <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
  </select>
  <input type="text" name="answer" placeholder="Enter the Answer:" required>
  <input type="password" name="newPassword" placeholder="Enter Your New Password to set:" required>
  <input type="submit" value="Save">
  </form>
     
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
   <img style="padding-left:1.5em; padding-top:1.5em;" src="file:///C:/Users/reliance/eclipse-workspace/NewCharityTemple/WebContent/images/Screenshot__329_-removebg-preview.png" alt="" width="400px" >
<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
<h4 class="alert" style="color:red;">Password changed successfully!</h4>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h3 class="alert">something went wrong!</h3>
<%} %>
    
  </div>
</div>
</body>
</html>