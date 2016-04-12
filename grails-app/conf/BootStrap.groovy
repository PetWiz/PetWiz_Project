import petwiz_project.Rol
import petwiz_project.Person
import petwiz_project.SecUserSecRole
class BootStrap {

    def init = { servletContext ->

        def role_user = new Rol(authority: 'ROLE_USER')
        role_user.save(failOnError: true, flush: true)
        def role_admin=new Rol(authority: 'ROLE_ADMIN')
        role_admin.save(failOnError: true, flush: true)
        def user = new Person(23231,'Jess',new Date(),"Bogota", "abc@abc.com", "1234" )

        user.addToRols(role_admin)
        user.save(failOnError: true, flush: true )

        if (!user.authorities.contains(role_admin)) {
            SecUserSecRole.create( user, role_admin, true)
        }
    }
    def destroy ={
    }
}
