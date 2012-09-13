package br.com.oxentecloud.financeiro

import org.springframework.dao.DataIntegrityViolationException

class ReceitaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [receitaInstanceList: Receita.list(params), receitaInstanceTotal: Receita.count()]
    }

    def create() {
        [receitaInstance: new Receita(params)]
    }

    def save() {
        def receitaInstance = new Receita(params)
        if (!receitaInstance.save(flush: true)) {
            render(view: "create", model: [receitaInstance: receitaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'receita.label', default: 'Receita'), receitaInstance.id])
        redirect(action: "show", id: receitaInstance.id)
    }

    def show(Long id) {
        def receitaInstance = Receita.get(id)
        if (!receitaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'receita.label', default: 'Receita'), id])
            redirect(action: "list")
            return
        }

        [receitaInstance: receitaInstance]
    }

    def edit(Long id) {
        def receitaInstance = Receita.get(id)
        if (!receitaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'receita.label', default: 'Receita'), id])
            redirect(action: "list")
            return
        }

        [receitaInstance: receitaInstance]
    }

    def update(Long id, Long version) {
        def receitaInstance = Receita.get(id)
        if (!receitaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'receita.label', default: 'Receita'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (receitaInstance.version > version) {
                receitaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'receita.label', default: 'Receita')] as Object[],
                          "Another user has updated this Receita while you were editing")
                render(view: "edit", model: [receitaInstance: receitaInstance])
                return
            }
        }

        receitaInstance.properties = params

        if (!receitaInstance.save(flush: true)) {
            render(view: "edit", model: [receitaInstance: receitaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'receita.label', default: 'Receita'), receitaInstance.id])
        redirect(action: "show", id: receitaInstance.id)
    }

    def delete(Long id) {
        def receitaInstance = Receita.get(id)
        if (!receitaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'receita.label', default: 'Receita'), id])
            redirect(action: "list")
            return
        }

        try {
            receitaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'receita.label', default: 'Receita'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'receita.label', default: 'Receita'), id])
            redirect(action: "show", id: id)
        }
    }
}
