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
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
        CommonsMultipartFile f = (CommonsMultipartFile) mpr.getFile("avatar")
        if (!okcontents.contains(f.getContentType())) {
            flash.message = "El avatar debe tener alguno de los siguientes formatos: ${okcontents}"

        }
        print f

        def serv = ServiceService.registerService(
                params.name,
                params.phone.toLong(),
                params.description,
                params.address,
                params.pagWeb,
                Float.parseFloat(params.coordenate_x),
                Float.parseFloat(params.coordenate_y),
                f.bytes,
                f.contentType,
                params.type
        )
        if (serv)
            flash.message = "Service Succesfully Created"
        else
            flash.error = "Service can't be created"
        redirect(action: "service")

    }

    def imageHandler() {
        def name = params.id.toString()
        def serv = Service.findByName(name)

        if (!serv.photo || !serv.photoType) {
            response.sendError(404)
            return
        }
        response.contentType = serv.photoType
        response.contentLength = serv.photo.size()
        OutputStream out = response.outputStream
        out.write(serv.photo)
        out.close()
    }

    def visitServicePage(){
        print params.redir
        def url_go = "http://" + params.redir
        redirect(url: url_go)
    }

    def delete(){
        print params
        print "service del " + params.name
        def del = ServiceService.delete(params.name)
        if (del)
            flash.message = "Service Succesfully Deleted"
        else
            flash.error = "Service can't be deleted"

        redirect(action:'service')
    }

    def update(){
        print params
        redirect(action:'service')
    }
}

