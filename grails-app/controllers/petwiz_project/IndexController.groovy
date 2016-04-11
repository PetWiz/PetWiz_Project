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
        print params.get('params')
        def f =  params.get('params').toString().split(',')
        print f[0].toLong()
        if(Person.findByEmail(f[2])==null){
            print "not saved"
            def user = new Person(f[0].toLong(), f[1], new Date(),f[4], f[2], f[0] )
            user.save(failOnError: true, flush: true)
            print user.username
            session["user"]=user.username
            redirect(controller: 'person', action: 'home');

        }else{
            print "saved"
            def user=Person.findByEmail(f[2])
            print user.username
            session["user"]=user.username
            redirect(controller: 'person', action: 'home');
        }

    }
}
