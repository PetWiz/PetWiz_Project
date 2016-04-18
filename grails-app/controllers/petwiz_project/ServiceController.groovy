package petwiz_project


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ServiceController {
    def service() {
        render(controller: 'service', view: '/service/create')
    }

}
