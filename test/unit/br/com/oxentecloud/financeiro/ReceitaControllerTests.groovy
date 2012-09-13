package br.com.oxentecloud.financeiro



import org.junit.*
import grails.test.mixin.*

@TestFor(ReceitaController)
@Mock(Receita)
class ReceitaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/receita/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.receitaInstanceList.size() == 0
        assert model.receitaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.receitaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.receitaInstance != null
        assert view == '/receita/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/receita/show/1'
        assert controller.flash.message != null
        assert Receita.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/receita/list'

        populateValidParams(params)
        def receita = new Receita(params)

        assert receita.save() != null

        params.id = receita.id

        def model = controller.show()

        assert model.receitaInstance == receita
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/receita/list'

        populateValidParams(params)
        def receita = new Receita(params)

        assert receita.save() != null

        params.id = receita.id

        def model = controller.edit()

        assert model.receitaInstance == receita
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/receita/list'

        response.reset()

        populateValidParams(params)
        def receita = new Receita(params)

        assert receita.save() != null

        // test invalid parameters in update
        params.id = receita.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/receita/edit"
        assert model.receitaInstance != null

        receita.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/receita/show/$receita.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        receita.clearErrors()

        populateValidParams(params)
        params.id = receita.id
        params.version = -1
        controller.update()

        assert view == "/receita/edit"
        assert model.receitaInstance != null
        assert model.receitaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/receita/list'

        response.reset()

        populateValidParams(params)
        def receita = new Receita(params)

        assert receita.save() != null
        assert Receita.count() == 1

        params.id = receita.id

        controller.delete()

        assert Receita.count() == 0
        assert Receita.get(receita.id) == null
        assert response.redirectedUrl == '/receita/list'
    }
}
