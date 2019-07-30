$(document).ready(function() { 
	
	$("#ifYes").hide();
	
	$("#select").change(function(){
		   if($(this).val()=="NGO")
		   {    
		       $("#ifYes").show();
		   }
		    else
		    {
		        $("#ifYes").hide();
		    }
		});
	
$('#form').submit(function(e) {
    var name = $('#name').val();
    var password = $('#password').val();
    var select = $('#select').val();
    var cnf_pwd=$('#cnf_pwd').val();
    var reg_id=$('#reg_no').val();

    $(".error").remove();
     if (select == 'select') {
    	e.preventDefault();
    	$('#select').after('<span class="error">Select your Role</span>');
    }
    if(cnf_pwd!=password)
    	{
    	e.preventDefault();
        $('#cnf_pwd').after('<span class="error">Password miss match</span>');
    	}
    if (name.length < 1) {
    	e.preventDefault();
      $('#name').after('<span class="error">This field is required</span>');
    }
    if (password.length < 1) {
    	e.preventDefault();
      $('#password').after('<span class="error">This field is required</span>');
    }
    if (reg_id.length < 1) {
    	e.preventDefault();
      $('#reg_id').after('<span class="error">This field is required</span>');
    }
  });
 
});