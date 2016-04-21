package petwiz_project

import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile

@Transactional(readOnly = true)
class ServiceController {
    def ServiceService
    private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']

    def service() {
        render(controller: 'service', view: '/service/createService')
    }

    def saveService(){
        //Obtener la imagen
        //def file = params.avatar
        //def f = request.getFile('avatar')
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
        CommonsMultipartFile f = (CommonsMultipartFile) mpr.getFile("avatar")
        if (!okcontents.contains(f.getContentType())) {
            flash.message = "El avatar debe tener alguno de los siguientes formatos: ${okcontents}"
            service()
            return
        }

        def serv = ServiceService.registerService(
                    params.name,
                    params.phone.toLong(),
                    params.description,
                    params.address,
                    params.pagWeb,
                    params.coordenate_x.toLong(),
                    params.coordenate_y.toLong(),
                    f.bytes,
                    f.contentType,
                    params.type
                )
        if (serv)
            flash.message = "Service Succesfully Created"
        else
            flash.message = "Service can't be created"
        service()
    }

    def imageHandler() {
        print params
        def n = params.id.toString()
        def serv = Service.findByName(n)
        response.contentType = serv.photoType
        response.contentLength = serv.photo.size()
        OutputStream out = response.outputStream
        out.write(serv.photo)
        out.close()
    }
}
