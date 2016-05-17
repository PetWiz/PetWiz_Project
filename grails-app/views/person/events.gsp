<%@ page import="petwiz_project.Person" %>
<!DOCTYPE html>
<html>
<head>
    <title>Petwiz: Eventos</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="layout" content="main" />
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<asset:stylesheet src="test.css"/>
<asset:javascript src="geocodification.js"/>
</head>

<body onload="initialize()">
<main>
    <script type = "text/javascript">
        var _url = '${createLink(controller: 'index' , action:'logout')}?';
        var getAddresses = function(){
            var addresses = [];
            $(".listElement").each(function() {
                var splited = $("p", this).text().split("\n");
                addresses.push(splited[1].trim());
            });
            return addresses;
        }
        var setPhoto = function(photo){
            document.getElementById("#avatar").src = "data:image/jpg;base64," + photo;
        }
        $(document).ready(function(){
            $(".listElement").click(function(){

                var splited = $("p", this).text().split("\n");
                console.log(splited[1].trim());
                if($(".brtt", this).css("display")=="none"){
                    deleteMarkers();
                    codeAddress(splited[1].trim(), 1);
                    $(".brtt").css("display", "none");
                    $(".brtt", this).css("display", "inline-block");
                    $(".brtt", this).hide();
                    $(".brtt", this).show();
                }else{
                    $(".brtt", this).hide();
                    $(".brtt", this).css("display", "none");
                    reset();
                }
            });
        });
    </script>
    <script type="text/javascript">
        $( document ).ready(function() {
            $('.materialboxed').materialbox();

        });
    </script>
    <div>
        <div id="emap"></div>
        <script src="https://maps.googleapis.com/maps/api/js?callback=initialize"
                async defer></script>
        <div class="row" id="events">
            <ul class="collection collapsible" data-collapsible="accordion">
                <g:each  var="item" in="${petwiz_project.Event?.list()}">
                    <li>
                        <div class="collapsible-header collection-item avatar listElement">
                            <i class="material-icons circle">folder</i>
                            <span class="title">${item.eve_name}</span>
                            <p> ${item.dateFormat()}<br>
                                ${item.eve_address}
                            </p>
                            <a class="btn-floating blue modal-trigger darken-1 brtt tooltipped modal-trigger" data-position="top" href="#addPetToEvent" data-tooltip="Agregar mascota" id="addToEvent" onclick=""><i class="material-icons">add</i></a>

                        </div>
                        <div class="collapsible-body" id="description"><p>${item.eve_description}</p></div>
                    </li>

                </g:each>

            </ul>
        </div>
    </div>
    <div id="addPetToEvent" class="modal small modal-fixed-footer">
        <div class="modal-content">
            <h4>Agregar mascotas</h4>
            <p>Selecciona de tus mascotas cuales participarán del evento</p>
            <ul class="collection">
                <g:each  var="item" in="${petwiz_project.Pet?.findAllByPerson(Person.findByUsername(session["user"]))}">
                <li class="collection-item avatar">
                    <img src="${createLink(controller:'person', action:'showAvatarPet', id:item.id)}" alt="" class="circle">
                    <span class="title">${item.pet_name}</span>
                    <p> ${item.pet_type}<br>
                        ${item.pet_genre}<br>
                        ${item.pet_age} Años
                    </p>
                    <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
                </li>
                </g:each>
            </ul>
        </div>
        <div class="modal-footer">
            <a class="btn-flat disabled">Agregar</a>
            <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Cancelar</a>
        </div>
    </div>
    </main>
</body>
</html>