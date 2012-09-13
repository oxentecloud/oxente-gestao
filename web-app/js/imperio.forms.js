$(document).ready(function(){
    
    // Colorpicker and datepicker
	//$('#dp1, #dp2').datepicker();
    
    // Form Validation
    $("#register_form").validate({
				rules:{
					user_name:"required",
					
					user_email:{
							required:true,
							email: true
						},
					pwd:{
						required:true,
						minlength: 6
					}
				},
				messages:{
					user_name:"Enter your first and last name",
					
					user_email:{
						required:"Enter your email address",
						email:"Enter valid email address"
					},
					
					pwd:{
						required:"Enter your password",
						minlength:"Password must be minimum 6 characters"
					}
					
				},
				errorClass: "help-inline",
				errorElement: "span",
				highlight:function(element, errorClass, validClass) {
					$(element).parents('.control-group').addClass('error');
				},
				unhighlight: function(element, errorClass, validClass) {
					$(element).parents('.control-group').removeClass('error');
					$(element).parents('.control-group').addClass('success');
				}
			});
});
