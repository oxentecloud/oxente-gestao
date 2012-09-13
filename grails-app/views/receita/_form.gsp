<%@ page import="br.com.oxentecloud.financeiro.Receita" %>



<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'conta', 'error')} required">
	<label for="conta">
		<g:message code="receita.conta.label" default="Conta" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="conta" name="conta.id" from="${br.com.oxentecloud.financeiro.Conta.list()}" optionKey="id" required="" value="${receitaInstance?.conta?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="receita.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${receitaInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'formaPagamento', 'error')} required">
	<label for="formaPagamento">
		<g:message code="receita.formaPagamento.label" default="Forma Pagamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="formaPagamento" name="formaPagamento.id" from="${br.com.oxentecloud.financeiro.FormaPagamento.list()}" optionKey="id" required="" value="${receitaInstance?.formaPagamento?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'lancamento', 'error')} required">
	<label for="lancamento">
		<g:message code="receita.lancamento.label" default="Lancamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lancamento" precision="day"  value="${receitaInstance?.lancamento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'numeroDocumento', 'error')} ">
	<label for="numeroDocumento">
		<g:message code="receita.numeroDocumento.label" default="Numero Documento" />
		
	</label>
	<g:textField name="numeroDocumento" value="${receitaInstance?.numeroDocumento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'observacao', 'error')} ">
	<label for="observacao">
		<g:message code="receita.observacao.label" default="Observacao" />
		
	</label>
	<g:textField name="observacao" value="${receitaInstance?.observacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="receita.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${receitaInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'tipoDocumento', 'error')} required">
	<label for="tipoDocumento">
		<g:message code="receita.tipoDocumento.label" default="Tipo Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipoDocumento" name="tipoDocumento.id" from="${br.com.oxentecloud.financeiro.TipoDocumento.list()}" optionKey="id" required="" value="${receitaInstance?.tipoDocumento?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'valor', 'error')} required">
	<label for="valor">
		<g:message code="receita.valor.label" default="Valor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valor" value="${fieldValue(bean: receitaInstance, field: 'valor')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'valorPago', 'error')} required">
	<label for="valorPago">
		<g:message code="receita.valorPago.label" default="Valor Pago" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorPago" value="${fieldValue(bean: receitaInstance, field: 'valorPago')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: receitaInstance, field: 'vencimento', 'error')} required">
	<label for="vencimento">
		<g:message code="receita.vencimento.label" default="Vencimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="vencimento" precision="day"  value="${receitaInstance?.vencimento}"  />
</div>

