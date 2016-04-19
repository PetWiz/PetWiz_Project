package petwiz_project

import grails.transaction.Transactional

@Transactional(readOnly = true)
class ServiceController {
    def service() {
        render(controller: 'service', view: '/service/create')
    }

    def createService(){

        def serv = new Service(name: params.name,
                    phone: params.phone.toLong(),
                    description: params.description,
                    address: params.address,
                    webpage: params.pagWeb,
                    coordenate_x: params.coordenate_x.toLong(),
                    coordenate_y: params.coordenate_y.toLong(),
                    //photo: params.
                    //String photoT
                    serviceType: params.type
                )
        serv.save(flush: true, failOnError: true)
        print Service.all
        service()
    }


}
