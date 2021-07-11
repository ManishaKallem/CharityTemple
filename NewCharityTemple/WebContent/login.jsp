
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/sign.css" type="text/css"/>
<title>Login</title>
</head>
<body background="https://t4.ftcdn.net/jpg/01/19/11/55/360_F_119115529_mEnw3lGpLdlDkfLgRcVSbFRuVl6sMDty.jpg">
<div id="container">
     <div class="signup">
        <form action="loginAction.jsp" method="post">
        <input type="email" name="email" placeholder="Enter Email" required>
        <input type="password" name="password" placeholder="Enter password" required>
        <input type="submit" value="Login">
        </form>
        <h2><a href="signup.jsp">SignUp</a></h2>
        <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>  
     </div>   
     
        <div class="t">
        <h1>CHARITY TEMPLE</h1>
        <p style="padding-left:15em; color:white"><b>Let us make a TEMPLE OF CHARITY where DONORS are Gods and RECIPIENTS are Devotees</b></p>
    
    </div>
    <div class="whysignlogin">
     <%
     String msg = request.getParameter("msg");
     if("notexist".equals(msg)){
     %>
        <p style="color:red; padding-left:1em;">Incorrect Username or Password!</p>
        <%} %>
        <%
        if("invalid".equals(msg)){
     %>
        <p style="color:red;padding-left:1em;">Something Went Wrong! Try Again!</p>
        <%} %>
     </div>
</div>
</body>
</html>