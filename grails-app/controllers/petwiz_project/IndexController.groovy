package petwiz_project

class IndexController {

    def index() {
        render(controller: 'index', view: '/index/index')
    }

    def PetWizTeam(){
        render(controller:'index',view:'/index/PetWizTeam')
    }

    def help() {
        render(controller: 'view', view: '/index/help');
    }

    def contact() {
        render(controller: 'view', view: '/index/contact');
    }

    def register_login(){
        print(params)
        //def user = Person.findById(params.email)
    }
}
