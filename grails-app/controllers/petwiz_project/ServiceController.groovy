package petwiz_project

import grails.transaction.Transactional

@Transactional(readOnly = true)
class ServiceController {
    def ServiceService
    def service() {
        render(controller: 'service', view: '/service/createService')
    }

    def saveService(){
        def serv = ServiceService.registerService(
                    params.name,
                    params.phone.toLong(),
                    params.description,
                    params.address,
                    params.pagWeb,
                    params.coordenate_x.toLong(),
                    params.coordenate_y.toLong(),
                    //photo: params.
                    //String photoT
                    params.type
                )
        if (serv)
            flash.message = "Service Succesfully Created"
        else
            flash.message = "Service can't be created"
        service()
    }


}
