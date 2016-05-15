<%@ page import="petwiz_project.Person" %>
<!DOCTYPE html>
<html>
<head>
    <title>Petwiz: Eventos</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="layout" content="main" />
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
</head>
<body>
<main>
    <script type = "text/javascript">
        var _url = '${createLink(controller: 'index' , action:'logout')}?';
        var god = '0';
        $(document).on('click', '#submit', function() {
            console.log( $('#event_name').val()+" v "+$('#eve_address').val()+" "+$('#eve_description').val());
        });
        $(document).on('click', '#create', function() {
            console.log( $('#event_name').val()+" v "+$('#eve_address').val()+" "+$('#eve_description').val());
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
        <div class="row">
            <ul class="collection">
                <g:each  var="item" in="${petwiz_project.Event?.findAllByPerson(Person.findByUsername(session["user"]))}">
                    <li class="collection-item avatar">
                        <i class="material-icons circle">folder</i>
                        <span class="title">${item.eve_name}</span>
                        <p> ${item.dateFormat()}<br>
                            ${item.eve_address}
                        </p>
                        <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
                    </li>
                </g:each>
                <li class="collection-item">
                    <a href="#addEvent" class="modal-trigger btn-floating green"><i class="material-icons">add</i></a>
                    Crear Evento
                </li>
            </ul>
        </div>
    </div>

</main>
</body>
</html>
