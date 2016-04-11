package petwiz_project

import grails.transaction.Transactional
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Qualifier
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.Authentication
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.GrantedAuthorityImpl
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.provisioning.UserDetailsManager
import org.springframework.security.web.authentication.WebAuthenticationDetails

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
    @Transactional
    def register_login(){
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        authorities.add(new GrantedAuthorityImpl("ROLE_USER"));
        print params.get('params')
        def f =  params.get('params').toString().split(',')
        def user=Person.findByEmail(f[2])
        if(!user){
            print "not saved"
            def user1 = new Person(f[0].toLong(), f[1], new Date(),f[4], f[2], f[0] )
            user1.save()
            print user1.username
            def r1 = Rol.findByAuthority('ROLE_USER')
            print r1.authority
            def r = SecUserSecRole.create(user1,r1,true)
            print r
            print r.print()
            user1.addToRols(r1)
            print user1.rols.authority
            user1.save()
            user = user1
            print user.rols
            print user
            user.save(failOnError: true, flush: true)
        }
        print "saved"
/*
        Authentication auth =
                new UsernamePasswordAuthenticationToken(user, null, user.getAuthorities());

        SecurityContextHolder.getContext().setAuthentication(auth);

        UserDetails userDetails = manager.loadUserByUsername (user.getUsername ());
        Authentication auth = new UsernamePasswordAuthenticationToken (userDetails.getUsername (),userDetails.getPassword (),userDetails.getAuthorities ());
        SecurityContextHolder.getContext().setAuthentication(auth);*/
/*
        Authentication request = new UsernamePasswordAuthenticationToken( username, password );
        Authentication result = manager.authenticate( request );
        SecurityContextHolder.getContext().setAuthentication( result );*/
        print user
        session["user"]=user.username

        redirect(controller: 'person', action: 'home');

    }
}
