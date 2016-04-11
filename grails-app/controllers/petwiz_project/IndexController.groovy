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
        print "hola"
        print params.get('params')
        def f =  params.get('params').toString().split(',')
        print f[1]

        redirect(controller: 'person', action: 'home');
    }
}