package petwiz

import com.google.common.collect.Lists
import grails.transaction.Transactional
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.GrantedAuthorityImpl
import org.springframework.security.core.context.SecurityContextHolder
import petwiz_project.Person
import petwiz_project.Rol
import petwiz_project.SecUserSecRole

@Transactional
class UserService {


    def register_login(f){

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
        print user.authorities

        List<GrantedAuthority> list = Lists.newArrayList()
        user.authorities.each{x ->  print x}
        boolean ru = false, ra = false
        user.authorities.each {x ->if(x.authority.equals('ROLE_USER')) ru = true}
        user.authorities.each {x ->if(x.authority.equals('ROLE_ADMIN')) ra = true}
        if (ru)
            list.add((GrantedAuthority) new GrantedAuthorityImpl("ROLE_USER"))
        if (ra)
            list.add((GrantedAuthority) new GrantedAuthorityImpl('ROLE_ADMIN'))

        SecurityContextHolder.getContext().setAuthentication(new UsernamePasswordAuthenticationToken(user.username, user.password, list));
        return user
    }
}
