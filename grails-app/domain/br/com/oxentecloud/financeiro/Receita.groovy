package br.com.oxentecloud.financeiro

import br.com.oxentecloud.Status

class Receita implements Status {
	
	String descricao
	String observacao
	String numeroDocumento
	String status
	
	Double valor
	Double valorPago
	
	Date vencimento
	Date lancamento
	
	FormaPagamento formaPagamento
	TipoDocumento tipoDocumento
	Conta conta
	
	
	
	static constraints = {
    }
}