import petwiz_project.Rol
import petwiz_project.Person
import petwiz_project.SecUserSecRole
class BootStrap {

    def init = { servletContext ->

        def role_user = new Rol(authority: 'ROLE_USER')
        role_user.save(failOnError: true, flush: true)
        def role_admin=new Rol(authority: 'ROLE_ADMIN')
        role_admin.save(failOnError: true, flush: true)
        def user = new Person(10209076155837883,'Jess Casas',new Date(18,03,1994),"Bogota", "jesik-94@hotmail.com", '10209076155837883' )
        //def user = new Person(10153314264356148,'Carlos Andrés Cogua',new Date(05,01,1995),"Bogota", "ace7ace@hotmail.com", '10153314264356148' )

        user.addToRols(role_admin)
        user.addToRols(role_user)
        user.save(failOnError: true, flush: true )

        if (!user.authorities.contains(role_admin)) {
            SecUserSecRole.create( user, role_admin, true)
        }
        if (!user.authorities.contains(role_user)) {
            SecUserSecRole.create( user, role_user, true)
        }

    }
    def destroy ={
    }
}