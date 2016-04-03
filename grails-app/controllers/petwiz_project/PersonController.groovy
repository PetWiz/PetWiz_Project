package petwiz_project

class PersonController {

    def home() {
        render(controller: 'person', view: '/person/home');
    }
    def services(){
        render(controller:'person',view:'/person/services')
    }
}
