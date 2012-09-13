package br.com.oxentecloud

class Pessoa implements Status {
	
	String nome
	String cpfCnpj
	String observacao
	String status
	
	Endereco endereco
	
	
    static constraints = {
    }
}
