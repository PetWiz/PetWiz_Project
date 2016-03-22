package petwiz_project

class PersonController {

    def login() {
        render(controller: 'person', view: 'login');
    }
}
