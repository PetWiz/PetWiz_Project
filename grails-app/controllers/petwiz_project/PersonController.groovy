package petwiz_project

class PersonController {

    def home() {
        render(controller: 'person', view: '/person/home');
    }

    def mypets() {
        render(controller: 'person', view: '/person/mypets');

    }

    def services() {
        render(controller: 'person', view: '/person/services');
    }

    def myevents() {
        render(controller: 'person', view: '/person/myevents');
    }

    def muestra() {

        def name = params.name
        def kind = params.kind
        def age = params.age
        def genre = params.genre

        [name:name,kind:kind,age:age, genre:genre]

    }


}
