package petwiz

import grails.transaction.Transactional
import org.springframework.dao.DataIntegrityViolationException
import petwiz_project.SecUserSecRole
import petwiz_project.Service

@Transactional
class ServiceService {

    def registerService(String name, long phone,String description, String address, String webpage, float coordenate_x,
                        float coordenate_y, byte[] imagen, String imagenType, String serviceType ){

        def serv = Service.findByCoordenate_x(coordenate_x)
        def serv1 = Service.findByCoordenate_y(coordenate_y)

        if (!serv && !serv1) { //No existe el servicio en la bd, las coordenadas no pueden ser iguales en un mismo servicio

            def service = new Service(name: name.toString(),
                    phone: phone.toLong(),
                    description: description.toString(),
                    address: address.toString(),
                    webpage: webpage.toString(),
                    coordenate_x: coordenate_x,
                    coordenate_y: coordenate_y,
                    photo: imagen,
                    photoType: imagenType,
                    serviceType: serviceType.toString()
            )
            service.save(flush: true, failOnError: true)
            print "service Saved"
            Service.findAll().each { x -> print x.name + " " + x.photo + " " + x.photoType}

            return true

        }
        return false
    }

    def delete(String name){
        def serv = Service.findByName(name)
        try {
            serv.delete(flush: true)
            return true
        }catch(DataIntegrityViolationException e){
            return false
        }
    }

}