
<%@ page import="br.com.oxentecloud.security.User"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'user.label', default: 'Usuário')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<div class="span9" id="content">
		<div class="row-fluid">
			<div class="span12">
				<div class="box alternate">
					<div class="box-title">
						<g:message code="default.show.label" args="[entityName]" />
					</div>
					<div class="box-content nopadding">

						<g:form id="register_form" name="register_form" action="save" class="form-horizontal">
						
							<g:if test="${userInstance?.enabled}">
								<div class="control-group">
									<label class="control-label"><g:message code="user.username.label" default="Username" /></label>
									<div class="controls">
										<input name="username" type="text" value="${userInstance?.username}" disabled />
									</div>
								</div>
							</g:if>
							<div class="control-group">
								<label class="control-label"><g:message code="user.password.label" default="Username" /></label>
								<div class="controls">
									<input name="password" type="text" value="${userInstance?.password}" disabled />
								</div>
							</div>
					<div class="control-group">
						<label class="control-label"><g:message code="user.enabled.label" default="Ativo" /></label>
						<div class="controls">
							<input name="enabled" type="text" value="<g:formatBoolean boolean='${userInstance?.enabled}' />" disabled />
						</div>
					</div>
						<div class="form-actions">
							<g:form>
							
								<g:hiddenField name="id" value="${userInstance?.id}" />
								
								<g:link class="btn btn-success" action="edit" id="${userInstance?.id}">
									<g:message code="default.button.edit.label" default="Edit" />
								</g:link>
								
								<g:actionSubmit class="btn btn-danger" action="delete"
									value="${message(code: 'default.button.delete.label', default: 'Delete')}"  
										onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
										
							</g:form>
						</div>
					</g:form>
	
					</div>
				</div>
			</div>
		</div>
		
		<r:require module="application" />		
		<r:layoutResources/>	
</body>
</html>
