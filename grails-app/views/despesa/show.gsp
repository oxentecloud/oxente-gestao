
<%@ page import="br.com.oxentecloud.financeiro.Despesa" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'despesa.label', default: 'Despesa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-despesa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-despesa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list despesa">
			
				<g:if test="${despesaInstance?.valorPago}">
				<li class="fieldcontain">
					<span id="valorPago-label" class="property-label"><g:message code="despesa.valorPago.label" default="Valor Pago" /></span>
					
						<span class="property-value" aria-labelledby="valorPago-label"><g:fieldValue bean="${despesaInstance}" field="valorPago"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${despesaInstance?.conta}">
				<li class="fieldcontain">
					<span id="conta-label" class="property-label"><g:message code="despesa.conta.label" default="Conta" /></span>
					
						<span class="property-value" aria-labelledby="conta-label"><g:link controller="conta" action="show" id="${despesaInstance?.conta?.id}">${despesaInstance?.conta?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${despesaInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="despesa.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${despesaInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${despesaInstance?.formaPagamento}">
				<li class="fieldcontain">
					<span id="formaPagamento-label" class="property-label"><g:message code="despesa.formaPagamento.label" default="Forma Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="formaPagamento-label"><g:link controller="formaPagamento" action="show" id="${despesaInstance?.formaPagamento?.id}">${despesaInstance?.formaPagamento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${despesaInstance?.lancamento}">
				<li class="fieldcontain">
					<span id="lancamento-label" class="property-label"><g:message code="despesa.lancamento.label" default="Lancamento" /></span>
					
						<span class="property-value" aria-labelledby="lancamento-label"><g:formatDate date="${despesaInstance?.lancamento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${despesaInstance?.observacao}">
				<li class="fieldcontain">
					<span id="observacao-label" class="property-label"><g:message code="despesa.observacao.label" default="Observacao" /></span>
					
						<span class="property-value" aria-labelledby="observacao-label"><g:fieldValue bean="${despesaInstance}" field="observacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${despesaInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="despesa.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${despesaInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${despesaInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="despesa.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${despesaInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${despesaInstance?.vencimento}">
				<li class="fieldcontain">
					<span id="vencimento-label" class="property-label"><g:message code="despesa.vencimento.label" default="Vencimento" /></span>
					
						<span class="property-value" aria-labelledby="vencimento-label"><g:formatDate date="${despesaInstance?.vencimento}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${despesaInstance?.id}" />
					<g:link class="edit" action="edit" id="${despesaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
