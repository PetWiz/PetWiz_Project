package petwiz

import petwiz_project.Service

import javax.print.PrintServiceLookup

class DispServTagLib {
    //static defaultEncodeAs = [taglib:'html']
    static namespace = "petwiz"
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    def showServ = { attrs ->
        def service = attrs.service
        def edit = attrs.edit
        def id = service.getId()

        out << "<div class=\"col s12 m12 l3\">"
        out <<      "<div class=\"card hoverable\">"
        out <<          "<div class=\"card-image yeih waves-effect waves-block waves-light\">"
        if (service.photo.size() > 0) {
            out << "<img class=\"activator crop\" src=\"${createLink(controller: 'service', action: 'imageHandler', id: service.name)}\"/>"
        }
        else {
            out << "<img class=\"activator crop\" src=\"https://raw.githubusercontent.com/PetWiz/PetWiz_Project/master/grails-app/assets/images/logo.jpg\"/>"
        }
        out <<          "</div>"
        out <<          "<div class=\"card-content\">"
        out <<				"<div class=\"row\">"
        out <<                  "<span class=\"card-title petwiz-font small-text activator\">${service.name}</span>"

        if (!edit) { //Opciones para person/services
            out << " <fieldset class=\"rating\">\n" +
                    "        <legend>Please rate:</legend>\n" +
                    "        <input type=\"radio\" id=\"star5\" name=\"rating\" value=\"5\" /><label for=\"star5\" title=\"Rocks!\">5 stars</label>\n" +
                    "        <input type=\"radio\" id=\"star4\" name=\"rating\" value=\"4\" /><label for=\"star4\" title=\"Pretty good\">4 stars</label>\n" +
                    "        <input type=\"radio\" id=\"star3\" name=\"rating\" value=\"3\" /><label for=\"star3\" title=\"Meh\">3 stars</label>\n" +
                    "        <input type=\"radio\" id=\"star2\" name=\"rating\" value=\"2\" /><label for=\"star2\" title=\"Kinda bad\">2 stars</label>\n" +
                    "        <input type=\"radio\" id=\"star1\" name=\"rating\" value=\"1\" /><label for=\"star1\" title=\"Sucks big time\">1 star</label>\n" +
                    "    </fieldset>"
            out <<                  "<div class=\"fixed-action-btn petwiz horizontal\" >"
            out <<                      "<a onclick=\"deleteMarkers();addService(${service.coordenate_x}, ${service.coordenate_y},'${service.serviceType}')\" class=\"btn-floating btn-large petwiz-blue\">"
            out <<                          "<i class=\"large material-icons\">pets</i>"
            out <<                      "</a>"
            out <<                  "</div>"
        }

        if (edit) {  //Opciones para service/createService
            out << "<div class=\"row\">"
            out << "<div class=\"fixed-action-btn petwiz horizontal\" style=\"padding-left:173px \">"
            out << "<a class=\"btn-floating btn-large petwiz-blue\">"
            out << "<i class=\"large material-icons\">pets</i>"
            out << "</a>"
            out << "<ul>"
            out << "<li class=\"petwiz\"><a value=\"${message(code: 'default.button.delete.label', default: 'Delete')}\", onclick=\"return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');\", href=\"${createLink(controller: "service", action: "delete", params: ['name': service?.name, 'x': service.coordenate_x, 'y': service.coordenate_y])}\", class=\"btn-floating activator\"><i class=\"material-icons\">delete</i></a></li>"
            out << "<li class=\"petwiz\"><a href=\"${"#edit" + id}\" class=\"btn-floating modal-trigger\"><i class=\"material-icons\">edit</i></a></li>"
            out << "</ul>"
            out << "</div>"
            out << "</div>"
        }
        out <<              "</div>"
        out <<          "</div>"
        out <<          "<div class=\"card-reveal petwiz-grey\">"
        out <<                  "<span class=\"card-title  petwiz-blue-text\">${service.name}<i class=\"material-icons right\">close</i></span>"
        out <<                  "<p class=\" petwiz-blue-text\">"
        out <<                  "<li><b>Descripción:</b></li>" +
                " ${service.description}"
        out <<                  "<li><b>Dirección:</b> </li>" +
                " ${service.address}"
        out <<                  "<li><b>Télefono:</b></li>" +
                " ${service.phone}"
        if (service.webpage)
        out <<                      "<li><a href=\"${createLink(controller: "service", action: "visitServicePage", params: ['redir': service?.webpage])}\" target:\"_blank\">Página Web</a> </li>"

        out <<                  "</p>"
        out <<          "</div>"
        out <<      "</div>"
        out << "</div>"

        if(edit){
            //Editar Service
            out << "<div id=\"${"edit" + id}\" class=\"modal\">"
            out << "<div class=\"modal-content font-teal\">"
            out << "<form controller=\"service\" action=\"update\" method=\"post\" enctype=\"multipart/form-data\">"
            out << "<div class=\"container\">"
            out << "<div class=\"row\">"
            out << "<br>"
            out << "<div class=\"input-field  col s12 m12 l12\">"
            out << "<input id=\"serv_id\" type=\"hidden\" class=\"validate\" name=\"servid\" value=\"${service.getId()}\">"
            out << "</div>"
            out << "<div class=\"input-field col s12 m12 l12\">"
            out << "<input type=\"text\" id=\"serv_name1\" class=\"validate\" name=\"updname\" value=\"${service.name}\"/>"
            out << "<label for=\"serv_name1\" >Nombre de Servicio</label>"
            out << "  </div>"
            out << "</div>"
            out << "<div class=\"row\">"
            out << "<div class=\"input-field col s12 m12 l12\">"
            out << "<input id=\"serv_address1\" type=\"text\" class=\"validate\" name=\"updaddress\" value = \"${service.address}\" />"
            out << "<label for=\"serv_address1\" >Dirección</label>"
            out << "</div>"
            out << "</div>"
            out << "<div class=\"row\">"
            out << "<div class=\"input-field col s12  m12 l12\">"
            out << "<input id=\"serv_tel1\" type=\"number\" class=\"validate\" name=\"updphone\" value = \"${service.phone}\" min=\"0\"/>"
            out << "<label for=\"serv_tel\">Telefono</label>"
            out << "</div>"
            out << "</div>"
            out << "<div class=\"row\">"
            out << "<div class=\"input-field col s12 m12 l12\">"
            out << "<input id=\"serv_desc1\" type=\"text\" class=\"validate\" name=\"upddescription\" value = \"${service.description}\"/>"
            out << "<label for=\"serv_desc1\" >Descripción</label>"
            out << "</div>"
            out << "</div>"
            out << "<div class=\"row\">"
            out << "<div class=\"input-field col s12 m12 l12\">"
            out << "<input id=\"serv_web1\" type=\"text\" class=\"validate\" name=\"updpagWeb\" value = \"${service.webpage}\"/>"
            out << "<label for=\"serv_web1\" >Página Web</label>"
            out << "</div>"
            out << "</div>"
            out << "<div class=\"row\">"
            out << "<div class=\"input-field col s12 m12 l12\">"
            out << "<input id=\"serv_coord_x1\" type=\"number\" class=\"validate\" name=\"updcoordenate_x\" step=\"any\" value = \"${service.coordenate_x}\"/>"
            out << "<label for=\"serv_coord_x1\" >Longitud</label>"
            out << "</div>"
            out << "</div>"
            out << "<div class=\"row\">"
            out << "<div class=\"input-field col s12 m12 l12\">"
            out << "<input id=\"serv_coord_y1\" type=\"number\" class=\"validate\" name=\"updcoordenate_y\" step=\"any\" value=\"${service.coordenate_y}\"/>"
            out << "<label for=\"serv_coord_y1\" >Latitud</label>"
            out << "</div>"
            out << "</div>"
            out << "<div class=\"file-field input-field\">"
            out << "<div class=\"btn\">"
            out << "<span>File</span>"
            out << "<input type=\"file\" name=\"updphoto\" accept=\"image/*\">"
            out << "</div>"
            out << "<div class=\"file-path-wrapper\">"
            out << "<input class=\"file-path validate\" type=\"text\" name=\"updphoto\">"
            out << "</div>"
            out << "</div><br><br>"
            out << "<input type=\"submit\" controller=\"service\" value=\"Editar Servicio\" action=\"update\" class=\"btn modal-action modal-close waves-effect waves-grey petwiz-teal\" style=\"padding-top: 10px\"><br><br>"
            out << "</div>"
            out << "</form></div>"
            out << "</div>"
        }
    }
}
