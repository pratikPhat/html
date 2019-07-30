<!DOCTYPE html>
<html lang="en">
<head>
    
  <title> ngo profile page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
 
 <link rel="stylesheet" href="/css/profile.css">

</head>
<body>
<div class="container-fluid">
  
    <br>
    
    <div class="col-sm-12">
      <div class="well">
        <h4>Social Help-Care Portal</h4>
        <p></p>
      </div>
      <div class="row">
        <div class="container-fluid">
            <div class="login-form">
            <form action="ngoregister" method="post">
                <h2 class="text-center"> Ngo Registration Form</h2>       
                <div class="form-group" >
                    <input type="text" name="name" class="form-control" placeholder="Name" required="required">
                </div>
                <div class="form-group">
                    <input type="date" name="date" class="form-control" placeholder="Date Of Birth" required="required">
                </div>
                <div class="form-group">
                        <input type="number" name="registeredIdNumber" class="form-control" placeholder="Registered-Id Number" required="required">
                    </div>
                <div class="form-group">
                    <input type="email" name="email" class="form-control" placeholder="Email-Id" required="required">
                </div>
                <div class="form-group">
                    <input type="number" name="number" class="form-control" placeholder="Mobile Number" required="required">
                </div>
                <div class="form-group">
                    
                    <label class="radio-inline">
                            <input type="radio" name="optradio" checked>Male
                          </label>
                          <label class="radio-inline">
                            <input type="radio" name="optradio">Female
                          </label>
                          <label class="radio-inline">
                            <input type="radio" name="optradio">Others
                          </label> 
                </div>
                <div class="form-group">
                    <input type="text" name="address" class="form-control" placeholder="Address" required="required">
                </div>
                <div class="form-group">
                    <input type="text" name="city" class="form-control" placeholder="City" required="required">
                </div>
                <div class="form-group" ">
                        Proof :
                            <input type="file" id="myFile" >
                            <button type="submit" class="btn btn-success btn-block">Upload File</button>
    
                    </div>
                    <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">Log in</button>
                    </div>
                    </form>
                    <script>
                            function myFunction() {
                              var x = document.getElementById("myFile");
                              x.disabled = true;
                            }
                    </script>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
                </body>
                </html>
                 
                

                        
                        

                        
                        
       
      
      

