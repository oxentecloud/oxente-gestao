<%@ page import="br.com.oxentecloud.security.User"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"	value="${message(code: 'user.label', default: 'Usuário')}" />
<title><g:message code="default.create.label" args="[entityName]" /></title>

</head>
<body>

	<div class="span9" id="content">
		<div class="row-fluid">
			<div class="span12">
				<div class="box alternate">
					<div class="box-title"><g:message code="default.create.label" args="[entityName]" /></div>
					<div class="box-content nopadding">
						
						<g:if test="${flash.message}">
							<!-- <div class="message" role="status">
								${flash.message}
							</div> -->
							
							<div class="alert alert-error">
								<button class="close" data-dismiss="alert">×</button>
								<strong>Error!</strong>Preencha os Campos Obrigatórios!
							</div>
						
						</g:if>

						
						<g:form id="register_form" name="register_form" action="save" class="form-horizontal">

							<g:render template="form" />
							
							<div class="form-actions">
								<input type="submit" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
								<g:link class="list" action="list" class="btn">Cancelar</g:link>
							</div>
						</g:form>
					</div>
				</div>
			</div>
		</div>

<g:javascript src="jquery.validate.min.js"/>
<g:javascript src="imperio.forms.js"/>
<g:javascript src="jquery.noty.js"/>
<g:javascript src="noty.theme.js"/>
<g:javascript src="top.js"/>				
		
		<g:hasErrors bean="${userInstance}">
									
			<script>
				$(document).ready(function(){		
					noty({text: '<strong>Error!</strong>Preencha os Campos Obrigatórios!', type: 'error'});		
				});
			</script>
		
		</g:hasErrors>
</body>
</html>
