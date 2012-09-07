<%@ page import="br.com.oxentecloud.security.User"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'user.label', default: 'Usuário')}" />
<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>

	<div class="span9" id="content">
		<div class="row-fluid">
			<div class="span12">
				<div class="box alternate">
					<div class="box-title"><g:message code="default.edit.label" args="[entityName]" /></div>
					<div class="box-content nopadding">
						
						<g:if test="${flash.message}">
							<div class="message" role="status">
								${flash.message}
							</div>
						</g:if>

						<g:hasErrors bean="${userInstance}">
							<ul class="errors" role="alert">
								<g:eachError bean="${userInstance}" var="error">
									<li
										<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
											error="${error}" /></li>
								</g:eachError>
							</ul>
						</g:hasErrors>
						<g:form id="register_form" name="register_form" action="update" class="form-horizontal">
							<g:hiddenField name="id" value="${userInstance?.id}" />
							<g:hiddenField name="version" value="${userInstance?.version}" />

							<g:render template="form" />
							
							<div class="form-actions">
							<g:actionSubmit class="btn" action="update" value="${message(code: 'default.button.save.label', default: 'Update')}" />
							<g:actionSubmit class="btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
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
