<%@ page import="br.com.oxentecloud.financeiro.TipoDocumento" %>



<div class="fieldcontain ${hasErrors(bean: tipoDocumentoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="tipoDocumento.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${tipoDocumentoInstance?.descricao}"/>
</div>

