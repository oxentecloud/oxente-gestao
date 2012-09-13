
<%@ page import="br.com.oxentecloud.financeiro.Receita" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'receita.label', default: 'Receita')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-receita" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-receita" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list receita">
			
				<g:if test="${receitaInstance?.conta}">
				<li class="fieldcontain">
					<span id="conta-label" class="property-label"><g:message code="receita.conta.label" default="Conta" /></span>
					
						<span class="property-value" aria-labelledby="conta-label"><g:link controller="conta" action="show" id="${receitaInstance?.conta?.id}">${receitaInstance?.conta?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${receitaInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="receita.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${receitaInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receitaInstance?.formaPagamento}">
				<li class="fieldcontain">
					<span id="formaPagamento-label" class="property-label"><g:message code="receita.formaPagamento.label" default="Forma Pagamento" /></span>
					
						<span class="property-value" aria-labelledby="formaPagamento-label"><g:link controller="formaPagamento" action="show" id="${receitaInstance?.formaPagamento?.id}">${receitaInstance?.formaPagamento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${receitaInstance?.lancamento}">
				<li class="fieldcontain">
					<span id="lancamento-label" class="property-label"><g:message code="receita.lancamento.label" default="Lancamento" /></span>
					
						<span class="property-value" aria-labelledby="lancamento-label"><g:formatDate date="${receitaInstance?.lancamento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${receitaInstance?.numeroDocumento}">
				<li class="fieldcontain">
					<span id="numeroDocumento-label" class="property-label"><g:message code="receita.numeroDocumento.label" default="Numero Documento" /></span>
					
						<span class="property-value" aria-labelledby="numeroDocumento-label"><g:fieldValue bean="${receitaInstance}" field="numeroDocumento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receitaInstance?.observacao}">
				<li class="fieldcontain">
					<span id="observacao-label" class="property-label"><g:message code="receita.observacao.label" default="Observacao" /></span>
					
						<span class="property-value" aria-labelledby="observacao-label"><g:fieldValue bean="${receitaInstance}" field="observacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receitaInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="receita.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${receitaInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receitaInstance?.tipoDocumento}">
				<li class="fieldcontain">
					<span id="tipoDocumento-label" class="property-label"><g:message code="receita.tipoDocumento.label" default="Tipo Documento" /></span>
					
						<span class="property-value" aria-labelledby="tipoDocumento-label"><g:link controller="tipoDocumento" action="show" id="${receitaInstance?.tipoDocumento?.id}">${receitaInstance?.tipoDocumento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${receitaInstance?.valor}">
				<li class="fieldcontain">
					<span id="valor-label" class="property-label"><g:message code="receita.valor.label" default="Valor" /></span>
					
						<span class="property-value" aria-labelledby="valor-label"><g:fieldValue bean="${receitaInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receitaInstance?.valorPago}">
				<li class="fieldcontain">
					<span id="valorPago-label" class="property-label"><g:message code="receita.valorPago.label" default="Valor Pago" /></span>
					
						<span class="property-value" aria-labelledby="valorPago-label"><g:fieldValue bean="${receitaInstance}" field="valorPago"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receitaInstance?.vencimento}">
				<li class="fieldcontain">
					<span id="vencimento-label" class="property-label"><g:message code="receita.vencimento.label" default="Vencimento" /></span>
					
						<span class="property-value" aria-labelledby="vencimento-label"><g:formatDate date="${receitaInstance?.vencimento}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${receitaInstance?.id}" />
					<g:link class="edit" action="edit" id="${receitaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
