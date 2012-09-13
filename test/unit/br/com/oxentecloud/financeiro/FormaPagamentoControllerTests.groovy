package br.com.oxentecloud.financeiro



import org.junit.*
import grails.test.mixin.*

@TestFor(FormaPagamentoController)
@Mock(FormaPagamento)
class FormaPagamentoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/formaPagamento/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.formaPagamentoInstanceList.size() == 0
        assert model.formaPagamentoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.formaPagamentoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.formaPagamentoInstance != null
        assert view == '/formaPagamento/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/formaPagamento/show/1'
        assert controller.flash.message != null
        assert FormaPagamento.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/formaPagamento/list'

        populateValidParams(params)
        def formaPagamento = new FormaPagamento(params)

        assert formaPagamento.save() != null

        params.id = formaPagamento.id

        def model = controller.show()

        assert model.formaPagamentoInstance == formaPagamento
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/formaPagamento/list'

        populateValidParams(params)
        def formaPagamento = new FormaPagamento(params)

        assert formaPagamento.save() != null

        params.id = formaPagamento.id

        def model = controller.edit()

        assert model.formaPagamentoInstance == formaPagamento
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/formaPagamento/list'

        response.reset()

        populateValidParams(params)
        def formaPagamento = new FormaPagamento(params)

        assert formaPagamento.save() != null

        // test invalid parameters in update
        params.id = formaPagamento.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/formaPagamento/edit"
        assert model.formaPagamentoInstance != null

        formaPagamento.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/formaPagamento/show/$formaPagamento.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        formaPagamento.clearErrors()

        populateValidParams(params)
        params.id = formaPagamento.id
        params.version = -1
        controller.update()

        assert view == "/formaPagamento/edit"
        assert model.formaPagamentoInstance != null
        assert model.formaPagamentoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/formaPagamento/list'

        response.reset()

        populateValidParams(params)
        def formaPagamento = new FormaPagamento(params)

        assert formaPagamento.save() != null
        assert FormaPagamento.count() == 1

        params.id = formaPagamento.id

        controller.delete()

        assert FormaPagamento.count() == 0
        assert FormaPagamento.get(formaPagamento.id) == null
        assert response.redirectedUrl == '/formaPagamento/list'
    }
}
