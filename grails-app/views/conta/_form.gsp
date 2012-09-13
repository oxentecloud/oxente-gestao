<%@ page import="br.com.oxentecloud.financeiro.Conta" %>

<div class="control-group ${hasErrors(bean: contaInstance, field: 'descricao', 'error')}">
	<label class="control-label"><g:message code="conta.descricao.label" default="Descricao" /></label>
	<div class="controls">
		<g:textField name="descricao" value="${contaInstance?.descricao}"/>
	</div>
</div>


