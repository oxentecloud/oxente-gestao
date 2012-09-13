package br.com.oxentecloud.financeiro

import br.com.oxentecloud.Status

class Despesa implements Status {
	
	String descricao
	String observacao
	String status
	
	Double valor
	Double valorPago
	
	Date vencimento
	Date lancamento
	
	FormaPagamento formaPagamento
	Conta conta

    static constraints = {
		valorPago blank:true
    }
	
	static mapping = {
		
		observacao(type: 'text' )
	}
}
