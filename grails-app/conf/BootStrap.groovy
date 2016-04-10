import petwiz_project.Rol

class BootStrap {

    def init = { servletContext ->
        new Rol(1, 'ROLE_USER').save(failOnError: true, flush: true)
        new Rol(2, 'ROLE_ADMIN').save(failOnError: true, flush: true)
    }
    def destroy ={
    }
}
