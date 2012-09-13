
<%@ page import="br.com.oxentecloud.financeiro.Despesa" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'despesa.label', default: 'Despesa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-despesa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-despesa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="valorPago" title="${message(code: 'despesa.valorPago.label', default: 'Valor Pago')}" />
					
						<th><g:message code="despesa.conta.label" default="Conta" /></th>
					
						<g:sortableColumn property="descricao" title="${message(code: 'despesa.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="despesa.formaPagamento.label" default="Forma Pagamento" /></th>
					
						<g:sortableColumn property="lancamento" title="${message(code: 'despesa.lancamento.label', default: 'Lancamento')}" />
					
						<g:sortableColumn property="observacao" title="${message(code: 'despesa.observacao.label', default: 'Observacao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${despesaInstanceList}" status="i" var="despesaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${despesaInstance.id}">${fieldValue(bean: despesaInstance, field: "valorPago")}</g:link></td>
					
						<td>${fieldValue(bean: despesaInstance, field: "conta")}</td>
					
						<td>${fieldValue(bean: despesaInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: despesaInstance, field: "formaPagamento")}</td>
					
						<td><g:formatDate date="${despesaInstance.lancamento}" /></td>
					
						<td>${fieldValue(bean: despesaInstance, field: "observacao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${despesaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
