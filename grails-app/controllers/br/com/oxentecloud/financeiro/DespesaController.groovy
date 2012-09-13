package br.com.oxentecloud.financeiro

import org.springframework.dao.DataIntegrityViolationException

class DespesaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [despesaInstanceList: Despesa.list(params), despesaInstanceTotal: Despesa.count()]
    }

    def create() {
        [despesaInstance: new Despesa(params)]
    }

    def save() {
        def despesaInstance = new Despesa(params)
        if (!despesaInstance.save(flush: true)) {
            render(view: "create", model: [despesaInstance: despesaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'despesa.label', default: 'Despesa'), despesaInstance.id])
        redirect(action: "show", id: despesaInstance.id)
    }

    def show(Long id) {
        def despesaInstance = Despesa.get(id)
        if (!despesaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'despesa.label', default: 'Despesa'), id])
            redirect(action: "list")
            return
        }

        [despesaInstance: despesaInstance]
    }

    def edit(Long id) {
        def despesaInstance = Despesa.get(id)
        if (!despesaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'despesa.label', default: 'Despesa'), id])
            redirect(action: "list")
            return
        }

        [despesaInstance: despesaInstance]
    }

    def update(Long id, Long version) {
        def despesaInstance = Despesa.get(id)
        if (!despesaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'despesa.label', default: 'Despesa'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (despesaInstance.version > version) {
                despesaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'despesa.label', default: 'Despesa')] as Object[],
                          "Another user has updated this Despesa while you were editing")
                render(view: "edit", model: [despesaInstance: despesaInstance])
                return
            }
        }

        despesaInstance.properties = params

        if (!despesaInstance.save(flush: true)) {
            render(view: "edit", model: [despesaInstance: despesaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'despesa.label', default: 'Despesa'), despesaInstance.id])
        redirect(action: "show", id: despesaInstance.id)
    }

    def delete(Long id) {
        def despesaInstance = Despesa.get(id)
        if (!despesaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'despesa.label', default: 'Despesa'), id])
            redirect(action: "list")
            return
        }

        try {
            despesaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'despesa.label', default: 'Despesa'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'despesa.label', default: 'Despesa'), id])
            redirect(action: "show", id: id)
        }
    }
}
