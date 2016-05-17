<%@ page import="petwiz_project.Person" %>
<!DOCTYPE html>
<html>
<head>
    <title>Petwiz: Mis Eventos</title>
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
        var god = '0';
        var getAddresses = function(){
            var addresses = [];
            $(".listElement").each(function() {
                var splited = $("p", this).text().split("\n");
                addresses.push(splited[1].trim());
            });
            return addresses;
        }
        $(document).on('click', '#submit', function() {
            console.log( $('#event_name').val()+" v "+$('#eve_address').val()+" "+$('#eve_description').val());
        });
        $(document).ready(function(){
           /* var addresses = [];
            $(".listElement").each(function() {
                var splited = $("p", this).text().split("\n");
                addresses.push(splited[1].trim());
            });*/
           // allMarkers(addresses);
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
    <div id="addEvent" class="modal medium">
        <div class="modal-content font-teal">
            <g:form action="addEvent" controller="person" enctype="multipart/form-data">

                <div class="input-field  col s12 m12 l12">
                    <input id="event_id" type="hidden" class="validate "  value="${petwiz_project.Event?.count + 1 }" name="id" >
                </div>

                <div class="row">
                    <div class="input-field col s12 m12 l12">
                 <!--       <input id="event_name" type="text" class="validate"  name="event_name">-->
                        <label for="eve_name" >Nombre del evento</label>
                        <g:textField name="eve_name" class="validate"/><br/>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12  m12 l12">
                <!--        <input id="eve_address" type="text" class="validate" name="eve_address">-->
                        <label for="eve_address">Dirección del evento</label>
                        <g:textField name="eve_address" class="validate"/><br/>
                    </div>
                </div>


                <div class="row">
                        <div class="row">
                            <div class="input-field col s12">
                                <textarea id="eve_description" class="materialize-textarea" name="eve_description"></textarea>
                                <label for="eve_description">Descripción del evento</label>
                            </div>
                        </div>
                </div>
                <g:datePicker name="date" precision="day" years="[2016, 2017, 2018, 2019, 2020]"/>
         <!--       <label class="active" for="eve_date">Fecha</label>
                <input id="eve_date" type="date" class="datepicker" name="date">
                <!--<button class="btn modal-action modal-close waves-effect waves-grey petwiz-teal" name="submit" >Crear Mascota
                    <i class="material-icons right">send</i>
                </button>-->
                <g:actionSubmit action="addEvent" value="Crear Evento" class="btn modal-action modal-close waves-effect waves-grey petwiz-teal" style="padding-top: 10px"/>

            </g:form>
        </div>
    </div>
    <div>
        <div id="emap"></div>
        <script src="https://maps.googleapis.com/maps/api/js?callback=initialize"
                async defer></script>
        <div class="row" id="events">
            <ul class="collection collapsible" data-collapsible="accordion">
                <li class="collection-item">
                    <a href="#addEvent" class="modal-trigger btn-floating green"><i class="material-icons">add</i></a>
                    Crear Evento
                </li>
                <g:set var="i" value="0" />
                <g:each  var="item" in="${petwiz_project.Event?.findAllByPerson(Person.findByUsername(session["user"]))}">
                    <li>
                        <div class="collapsible-header collection-item avatar listElement">
                            <i class="material-icons circle">folder</i>
                            <span class="title">${item.eve_name}</span>
                            <p> ${item.dateFormat()}<br>
                                ${item.eve_address}
                            </p>
                            <a class="btn-floating red brtt" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" href="${createLink(controller: "person", action: "deleteEvent", params:['id':item.id])}"><i class="material-icons">delete</i></a>
                            <a class="btn-floating yellow modal-trigger darken-1 brtt"  href="${"#updateEvent" + i}"><i class="material-icons">edit</i></a>
                              <!--  <a href="#!" class="secondary-content btt"><i class="material-icons">grade</i></a>-->

                        </div>
                        <div class="collapsible-body" id="description"><p>${item.eve_description}</p></div>
                    </li>
                    <div id="${"updateEvent" + i}" class="modal medium">
                        <g:set var="i" value="${i+1}" />
                        <div class="modal-content font-teal">
                            <g:form controller="person" action="updateEvent">
                                <div class="input-field  col s12 m12 l12">
                                    <input id="event_id2" type="hidden" class="validate "  value="${item.getId() }" name="id" >
                                </div>
                                <div class="row">
                                    <div class="input-field col s12 m12 l12">
                                        <input id="eve_name" type="text" class="validate"   value="${item.eve_name}" name="eve_name" >
                                        <label for="eve_name" >Nombre del Evento</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12  m12 l12">
                                        <input id="eve_address" type="text" class="validate" value="${item.eve_address}" name="eve_address">
                                        <label for="eve_address">Dirección del evento</label></input>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <textarea id="eve_description2" class="materialize-textarea" value="${item.eve_description}" name="eve_description"></textarea>
                                            <label for="eve_description2">Descripción del evento</label>
                                        </div>
                                    </div>
                                </div>
                                <g:datePicker name="date" value="${item.date}" precision="day" years="[2016, 2017, 2018, 2019, 2020]"/>

                                <g:actionSubmit controller ="person" value="Actualizar evento" action="updateEvent" class="btn modal-action modal-close waves-effect waves-grey petwiz-teal" style="padding-top: 10px"/>
                            <!--    <button class="btn modal-action modal-close waves-effect waves-grey petwiz-teal" name="submit" >Actualizar datos
                                    <i class="material-icons right">send</i>
                                </button>-->
                            </g:form>
                        </div>
                    </div>
                </g:each>

            </ul>
        </div>
    </div>

</main>
</body>
</html>
