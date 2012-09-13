
<%@ page import="br.com.oxentecloud.financeiro.Receita" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'receita.label', default: 'Receita')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-receita" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-receita" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="receita.conta.label" default="Conta" /></th>
					
						<g:sortableColumn property="descricao" title="${message(code: 'receita.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="receita.formaPagamento.label" default="Forma Pagamento" /></th>
					
						<g:sortableColumn property="lancamento" title="${message(code: 'receita.lancamento.label', default: 'Lancamento')}" />
					
						<g:sortableColumn property="numeroDocumento" title="${message(code: 'receita.numeroDocumento.label', default: 'Numero Documento')}" />
					
						<g:sortableColumn property="observacao" title="${message(code: 'receita.observacao.label', default: 'Observacao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${receitaInstanceList}" status="i" var="receitaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${receitaInstance.id}">${fieldValue(bean: receitaInstance, field: "conta")}</g:link></td>
					
						<td>${fieldValue(bean: receitaInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: receitaInstance, field: "formaPagamento")}</td>
					
						<td><g:formatDate date="${receitaInstance.lancamento}" /></td>
					
						<td>${fieldValue(bean: receitaInstance, field: "numeroDocumento")}</td>
					
						<td>${fieldValue(bean: receitaInstance, field: "observacao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${receitaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
