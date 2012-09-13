package br.com.oxentecloud.financeiro

import org.springframework.dao.DataIntegrityViolationException

class FormaPagamentoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [formaPagamentoInstanceList: FormaPagamento.list(params), formaPagamentoInstanceTotal: FormaPagamento.count()]
    }

    def create() {
        [formaPagamentoInstance: new FormaPagamento(params)]
    }

    def save() {
        def formaPagamentoInstance = new FormaPagamento(params)
        if (!formaPagamentoInstance.save(flush: true)) {
            render(view: "create", model: [formaPagamentoInstance: formaPagamentoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'formaPagamento.label', default: 'FormaPagamento'), formaPagamentoInstance.id])
        redirect(action: "show", id: formaPagamentoInstance.id)
    }

    def show(Long id) {
        def formaPagamentoInstance = FormaPagamento.get(id)
        if (!formaPagamentoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'formaPagamento.label', default: 'FormaPagamento'), id])
            redirect(action: "list")
            return
        }

        [formaPagamentoInstance: formaPagamentoInstance]
    }

    def edit(Long id) {
        def formaPagamentoInstance = FormaPagamento.get(id)
        if (!formaPagamentoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'formaPagamento.label', default: 'FormaPagamento'), id])
            redirect(action: "list")
            return
        }

        [formaPagamentoInstance: formaPagamentoInstance]
    }

    def update(Long id, Long version) {
        def formaPagamentoInstance = FormaPagamento.get(id)
        if (!formaPagamentoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'formaPagamento.label', default: 'FormaPagamento'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (formaPagamentoInstance.version > version) {
                formaPagamentoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'formaPagamento.label', default: 'FormaPagamento')] as Object[],
                          "Another user has updated this FormaPagamento while you were editing")
                render(view: "edit", model: [formaPagamentoInstance: formaPagamentoInstance])
                return
            }
        }

        formaPagamentoInstance.properties = params

        if (!formaPagamentoInstance.save(flush: true)) {
            render(view: "edit", model: [formaPagamentoInstance: formaPagamentoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'formaPagamento.label', default: 'FormaPagamento'), formaPagamentoInstance.id])
        redirect(action: "show", id: formaPagamentoInstance.id)
    }

    def delete(Long id) {
        def formaPagamentoInstance = FormaPagamento.get(id)
        if (!formaPagamentoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'formaPagamento.label', default: 'FormaPagamento'), id])
            redirect(action: "list")
            return
        }

        try {
            formaPagamentoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'formaPagamento.label', default: 'FormaPagamento'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'formaPagamento.label', default: 'FormaPagamento'), id])
            redirect(action: "show", id: id)
        }
    }
}
