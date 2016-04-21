package petwiz

import petwiz_project.Service

class DispServTagLib {
    //static defaultEncodeAs = [taglib:'html']
    static namespace = "petwiz"
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    def showServ = { attrs ->
        def service = attrs.service
        def edit = attrs.edit
        out << "<div class=\"col s12 m6 l3\">"
        out <<      "<div class=\"card small hoverable\">"
        out <<          "<div class=\"card-image waves-effect waves-block waves-light\">"
        out <<            "<img class=\"activator\" src=\"${createLink(controller:'service', action:'imageHandler', id:service.name)}\" /> "
        out <<          "</div>"
        out <<          "<div class=\"card-content\">"
        out <<					"<div class=\"row center\"><span class=\"petwiz-font small-text activator\">${service.name}</span></div>"
        out <<					    "<div class=\"fixed-action-btn petwiz horizontal\">"
        out <<						     "<a class=\"btn-floating btn-large petwiz-blue\">"
        out <<							    "<i class=\"large material-icons\">pets</i>"
        out <<                          "</a>"
        if (edit) {
            out << "<ul>"
            out << "<li class=\"petwiz\"><a class=\"btn-floating activator\"><i class=\"material-icons\">insert_chart</i></a></li>"
            out << "<li class=\"petwiz\"><a class=\"btn-floating \"><i class=\"material-icons\">delete</i></a></li>"
            out << "<li class=\"petwiz\"><a class=\"btn-floating\"><i class=\"material-icons\">edit</i></a></li>"
            out << "</ul>"
        }
        out <<                      "</div>"
        out <<              "</div>"
        out <<			    "<div class=\"card-reveal petwiz-grey\">"
        out <<					"<span class=\"card-title  petwiz-blue-text\">${service.name}<i class=\"material-icons right\">close</i></span>"
        out <<					"<p class=\" petwiz-blue-text\">"
        out <<					    "<li>Descripción: ${service.description}</li>"
        out <<                      "<li>Dirección: ${service.address}</li>"
        out <<					    "<li>Télefono: ${service.phone}</li>"
        out <<                      "<li>Página Web: ${service.webpage}</li>"
        out <<				    "</p>"
        out <<              "</div>"
        out <<      "</div>"
        out << "</div>"
    }

    def getImage(serv){

    }
}
