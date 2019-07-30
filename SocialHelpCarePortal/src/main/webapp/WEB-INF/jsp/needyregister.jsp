<!DOCTYPE html>
<html lang="en">
<head>
    
  <title>student profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

 <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
 
 <link rel="stylesheet" href="/css/profile.css">

</head>
<body>
<div class="container-fluid">
  
    <br>
    
    <div class="col-sm-12">
      <div class="well">
        <h4>Social Help-Care Portal</h4>
              <p><em style="color:green;">*fields marked in red are mandatory to fill</em></p>
      </div>
      <div class="row">
        <div class="container-fluid">
            <div class="login-form">
            <form action="needyregister" method="post">
                <h2 class="text-center">Registration Form</h2>       
                <div class="form-group" >
                    <input type="text" name="userName" style="border-color:red" class="form-control" placeholder="UserName" required="required">
                </div>
                <div class="form-group">
                    <input type="date" name="dob" style="border-color:red" class="form-control" placeholder="Date Of Birth" required="required">
                </div>
                <div class="form-group">
                    <input type="email" name="email" class="form-control" placeholder="Email-Id" required="required">
                </div>
                <div class="form-group">
                    <input type="number" name="number" style="border-color:red" class="form-control" placeholder="Mobile Number" required="required">
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
                    <input type="text" name="address" style="border-color:red" class="form-control" placeholder="Address" required="required">
                </div>
                <div class="form-group">
                    <input type="text" name="city" style="border-color:red" class="form-control" placeholder="City" required="required">
                </div>
                <div class="form-group">
							<label class="fa fa-user-plus">Type To Apply</label> <select
								class="form-control" id="select" name="type">
								<option value="select">select</option>
								<option value="Education">Education</option>
								<option value="Food">Food</option>
								<option value="Old_Age_Home">Old Age Home</option>
							</select>
						</div>
                <div class="form-group">
                        <input type="text" id="student"  name="qualification" style="border-color:red" class="form-control" placeholder="Qualification">
                </div>
                <div class="form-group" ">
                    Id-Proof :
                        <input type="file" id="myFile" >
                        <button type="submit" class="btn btn-success btn-block">Upload File</button>
           		 </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Log in</button>
                </div>
                </form>
                
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
                <script type="text/javascript">
                $(document).ready(function() {                         
                        alert("jkljkljkl");
                        
                        $("#student").hide();
                        
                        $("#select").change(function(){
                 		   if($(this).val()=="Education")
                 		   {    
                 		       $("#student").show();
                 		   }
                 		    else
                 		    {
                 		        $("#student").hide();
                 		    }
                 		});
                        
                        if($("#student").val>1)
                        	{
                        	   $("#student").removeProperty("border-color");
                        	}
                });
                </script>

</body>
</html>
