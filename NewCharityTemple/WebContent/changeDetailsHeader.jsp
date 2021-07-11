   <!DOCTYPE html>
<html lang="en">
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CHANGE DETAILS</title>
</head>
<body>
    <!doctype html>
<html lang="en">
  <head>
  <link rel="stylesheet" href="css/signup-style.css">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    <title>Header</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
        <a class="navbar-brand" href="" ><img src="file:///C:/Users/reliance/eclipse-workspace/NewCharityTemple/WebContent/images/Screenshot__329_-removebg-preview%20(3).png" alt="" width="100px" ></a>
        
        <%String email = session.getAttribute("email").toString();%>
          <a class="navbar-brand" href="home.jsp"><i class="fas fa-arrow-circle-left"></i>Back</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="changeDetails.jsp"><i class='fas fa-user-alt'></i> My Profile(<%out.println(email); %>)</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="changePassword.jsp"><i class='fas fa-key'></i> Change Password</a>              
              </li>
          
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="addChangeAddress.jsp"><i class='fas fa-map-marker-alt'></i> Add or Change Address</a>              
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="changeMobileNumber.jsp"><i class='fas fa-phone'></i> Change mobile Number</a>              
              </li>
            </ul>
            
          </div>
        </div>
      </nav> 
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    -->
  </body>
</html>