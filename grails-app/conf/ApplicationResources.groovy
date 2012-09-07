import org.springframework.context.annotation.DependsOn;

modules = {
    application {
		resource url: 'js/jquery.min.js'
		resource url: 'js/bootstrap.min.js'
		resource url: 'js/imperio.general.js'
		resource url: 'js/imperio.dashboard.js'
	}
	
	index {
		dependsOn 'application'
		resource url: 'js/jquery.min.js'
		resource url: 'js/jquery.flot.min.js'
		resource url: 'js/jquery.flot.resize.min.js'
		
	}
	
	form {

		dependsOn 'application'
		resource url: 'js/jquery.min.js'		
		resource url: 'js/jquery.validate.min.js'
		resource url: 'js/bootstrap-datepicker.js'
		resource url: 'js/bootstrap-colorpicker.js'
		resource url: 'js/imperio.forms.js'
		
	}
	
	tables {
		
		dependsOn 'application, form'
		resource url: 'js/jquery.min.js'
		resource url: 'js/imperio.tables.js'
		resource url: 'js/jquery.dataTables.min.js'
		
	}
	
	
	alert{
		
		resource url: 'js/jquery.noty.js'
		resource url: 'js/noty.theme.js'
		resource url: 'js/top.js'
		
		
		
	}
	
}


