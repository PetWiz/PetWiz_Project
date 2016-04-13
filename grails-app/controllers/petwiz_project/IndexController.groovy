package petwiz_project

import com.google.common.collect.Lists
import grails.transaction.Transactional
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.GrantedAuthorityImpl
import org.springframework.security.core.context.SecurityContextHolder

class IndexController {

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
        def user = Person.findByEmail(f[2])
        if (!user) {
            print "not saved"
            def user1 = new Person(f[0].toLong(), f[1], new Date(), f[4], f[2], f[0])
            user1.save()
            print user1.username
            def r1 = Rol.findByAuthority('ROLE_USER')
            print r1.authority
            def r = SecUserSecRole.create(user1, r1, true)

            print r.print()
            user1.addToRols(r1)
            user = user1
            user.save(failOnError: true, flush: true)
        }
        print "saved"
        print user
        session["user"] = user.username
        List<GrantedAuthority> list = Lists.newArrayList((GrantedAuthority) new GrantedAuthorityImpl("ROLE_USER"))

        SecurityContextHolder.getContext().setAuthentication(new UsernamePasswordAuthenticationToken(user.username, user.password, list));

        redirect(controller: 'person', action: 'home');

    }

    def logout(){
        session["user"] = null
        SecurityContextHolder.getContext().setAuthentication(null)
        redirect(controler: 'index', action: 'index')
    }
}