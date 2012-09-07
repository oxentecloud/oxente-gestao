

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Dashboard - Imperio Admin</title>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />


		<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="../css/bootstrap-responsive.css" />
		<link rel="stylesheet" type="text/css" href="../css/imperio.css" />
        
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <r:require module="jquery"/>
        <r:layoutResources/>
        
	</head>
    <body>
    
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="box login">
                    <div class="box-title">
                        <span class="ico"><i class="icon-lock"></i></span> Login
                    </div>
                    <div class="box-content">
                        <form id= "singup"class="form-horizontal" method="post" action="${postUrl}">
                            <p>Logo</p>
                            <div class="control-group">
                                <label for="username" class="control-label">Usuário</label>
                                <div class="controls">
                                    <input type="text" name="j_username" id="username"  value="" required/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label for="password" class="control-label">Senha</label>
                                <div class="controls">
                                    <input type="password" name="j_password" id="password"  value="" required/>
                                </div>
                            </div>
                            <div class="form-actions">
                                <input type="submit" value="Login" class="btn btn-primary btn-large"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

<r:require module="alert"/> 
<r:layoutResources/>

<g:if test='${flash.message}'>		
	<script>
		$(document).ready(function(){		
			noty({text: '${flash.message}', type: 'error'});		
		});
	</script>
</g:if>    
    
<script type='text/javascript'>
	(function() {
		document.forms['singup'].elements['j_username'].focus();
	})();
</script>

 
    </body>
</html>