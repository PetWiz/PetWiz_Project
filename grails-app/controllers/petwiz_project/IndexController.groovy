package petwiz_project

class IndexController {

    def index() {
        render(controller: 'index', view: '/index/index')
    }
    def PetWizTeam(){
        render(controller:'index',view:'/index/PetWizTeam')
    }
}
