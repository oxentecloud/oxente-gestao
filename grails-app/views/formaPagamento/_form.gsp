<%@ page import="br.com.oxentecloud.financeiro.FormaPagamento" %>



<div class="fieldcontain ${hasErrors(bean: formaPagamentoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="formaPagamento.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${formaPagamentoInstance?.descricao}"/>
</div>

