package petwiz_project

class PersonController {

    def home() {
        render(controller: 'person', view: '/person/home');
    }
    def mypets() {
        render(controller: 'person', view: '/person/mypets');
    }
}
