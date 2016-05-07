package petwiz_project

import grails.transaction.Transactional
import org.springframework.security.core.context.SecurityContextHolder

class IndexController {

    def UserService


    def index() {
        render(controller: 'index', view: '/index/index')
    }

    def PetWizTeam() {
        render(controller: 'index', view: '/index/PetWizTeam')
    }

    def help() {
        render(controller: 'index', view: '/index/help');
    }

    def contact() {
        render(controller: 'index', view: '/index/contact');
    }

    def send(){
        sendMail{
            to params.email,"petwiz2016@gmail.com"
            from "petwiz2016@gmail.com"
            subject params.subject
            body params.email+", Saludos, hemos recibido tu solicitud\n" + params.body +"\n Esta sera respondida en el menor tiempo \n Gracias por preferirnos, PetwizTeam"
        }
        render( view: '/index/confirm',   model: [email:params.email])

    }


    @Transactional
    def register_login() {
        print params.get('params')
        def f = params.get('params').toString().split(',')

        def user = UserService.register_login(f)
        session["user"] = user.username

        redirect(controller: 'person', action: 'home');
    }

    @Transactional
    def friends() {
        print params.get('params')
        def f = params.get('params').toString().split(',')
        print f
        redirect(controller: 'person', action: 'home');
    }
    def logout(){
        session["user"] = null
        SecurityContextHolder.getContext().setAuthentication(null)
        redirect(controler: 'index', action: 'index')
    }
}