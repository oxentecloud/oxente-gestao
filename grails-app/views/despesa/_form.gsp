<%@ page import="br.com.oxentecloud.financeiro.Despesa" %>



<div class="fieldcontain ${hasErrors(bean: despesaInstance, field: 'valorPago', 'error')} required">
	<label for="valorPago">
		<g:message code="despesa.valorPago.label" default="Valor Pago" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorPago" value="${fieldValue(bean: despesaInstance, field: 'valorPago')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: despesaInstance, field: 'conta', 'error')} required">
	<label for="conta">
		<g:message code="despesa.conta.label" default="Conta" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="conta" name="conta.id" from="${br.com.oxentecloud.financeiro.Conta.list()}" optionKey="id" required="" value="${despesaInstance?.conta?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: despesaInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="despesa.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${despesaInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: despesaInstance, field: 'formaPagamento', 'error')} required">
	<label for="formaPagamento">
		<g:message code="despesa.formaPagamento.label" default="Forma Pagamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="formaPagamento" name="formaPagamento.id" from="${br.com.oxentecloud.financeiro.FormaPagamento.list()}" optionKey="id" required="" value="${despesaInstance?.formaPagamento?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: despesaInstance, field: 'lancamento', 'error')} required">
	<label for="lancamento">
		<g:message code="despesa.lancamento.label" default="Lancamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lancamento" precision="day"  value="${despesaInstance?.lancamento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: despesaInstance, field: 'observacao', 'error')} ">
	<label for="observacao">
		<g:message code="despesa.observacao.label" default="Observacao" />
		
	</label>
	<g:textField name="observacao" value="${despesaInstance?.observacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: despesaInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="despesa.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${despesaInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: despesaInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="despesa.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: despesaInstance, field: 'valor')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: despesaInstance, field: 'vencimento', 'error')} required">
	<label for="vencimento">
		<g:message code="despesa.vencimento.label" default="Vencimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="vencimento" precision="day"  value="${despesaInstance?.vencimento}"  />
</div>

