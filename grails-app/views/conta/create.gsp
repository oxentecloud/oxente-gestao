<%@ page import="br.com.oxentecloud.financeiro.Conta"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'conta.label', default: 'Conta')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>

<r:require module="jquery" />
<r:layoutResources />
</head>
<body>

	<div class="span9" id="content">
		<div class="row-fluid">
			<div class="span12">
				<div class="box alternate">
					<div class="box-title">
						<g:message code="default.create.label" args="[entityName]" />
					</div>
					<div class="box-content nopadding">


						<div id="create-conta" class="content scaffold-create" role="main">
							<h1>
								<g:message code="default.create.label" args="[entityName]" />
							</h1>
							<g:if test="${flash.message}">
								<div class="message" role="status">
									${flash.message}
								</div>
							</g:if>
							<g:hasErrors bean="${contaInstance}">
								<ul class="errors" role="alert">
									<g:eachError bean="${contaInstance}" var="error">
										<li
											<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
												error="${error}" /></li>
									</g:eachError>
								</ul>
						</g:hasErrors>
														
							<g:form id="register_form" name="register_form" action="save" class="form-horizontal">

								<g:render template="form" />
								
								<div class="form-actions">
									<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
									<g:link class="list" action="list" class="btn">Cancelar</g:link>
								</div>
							</g:form>
							
						</div>
					</div>
				</div>
			</div>

			<r:require module="form" />
			<r:require module="alert" />


			<r:layoutResources />

			<g:hasErrors bean="${userInstance}">

				<script>
					$(document)
							.ready(
									function() {
										noty({
											text : '<strong>Error!</strong>$tag____Preencha os Campos Obrigatórios!',
											type : 'error'
										});
				</script>

			</g:hasErrors>
</body>
</html>
