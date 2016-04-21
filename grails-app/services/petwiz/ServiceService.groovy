package petwiz

import grails.transaction.Transactional
import petwiz_project.Service

@Transactional
class ServiceService {

    def registerService(String name, long phone,String description, String address, String webpage, long coordenate_x,
                        long coordenate_y, String serviceType ){

        def serv = Service.findByCoordenate_x(coordenate_x)
        def serv1 = Service.findByCoordenate_y(coordenate_y)

        if (!serv && !serv1) { //No existe el servicio en la bd, las coordenadas no pueden ser iguales en un mismo servicio
            def service = new Service(name: name.toString(),
                    phone: phone.toLong(),
                    description: description.toString(),
                    address: address.toString(),
                    webpage: webpage.toString(),
                    coordenate_x: coordenate_x.toLong(),
                    coordenate_y: coordenate_y.toLong(),
                    //photo: params.
                    //String photoT
                    serviceType: serviceType.toString()
            )
            service.save(flush: true, failOnError: true)
            print "service Saved"
            Service.findAll().each { x -> print x}

            return true

        }
        return false
    }

}
