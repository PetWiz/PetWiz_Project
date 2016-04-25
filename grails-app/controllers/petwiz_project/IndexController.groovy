package petwiz_project

import com.google.common.collect.Lists
import grails.transaction.Transactional
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.GrantedAuthorityImpl
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
        render(controller: 'view', view: '/index/help');
    }

    def contact() {
        render(controller: 'view', view: '/index/contact');
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