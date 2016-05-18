<%@ page import="petwiz_project.Person" %>
<html>
<head>
    <title>Petwiz: Mis mascotas</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="layout" content="main" />
</head>
<body>

<main>
    <script type = "text/javascript">
        var _url = '${createLink(controller: 'index' , action:'logout')}?';
        var god = '0'
    </script>
    <script type="text/javascript">
        $( document ).ready(function() {
            $('.materialboxed').materialbox();

        });
    </script>
    <!-- Modal Structure -->
<div id="addPet" class="modal small">
    <g:form controller="person"  action="addPet"  enctype="multipart/form-data">
        <div class="modal-content font-teal">
            <div class="input-field  col s12 m12 l12">
                <input id="pet_id" type="hidden" class="validate "  value="${petwiz_project.Pet?.count + 1 }" name="id" >
            </div>

            <div class="row">
                <div class="input-field col s12 m12 l12">
                    <g:field id="pet_name" type="text" class="validate"  name="name" required="true"/>
                    <label for="pet_name" >Nombre de Mascota</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12  m12 l12">
                    <g:field id="pet_type" type="text" class="validate" name="typePet" required="true"/>
                    <label for="pet_type">Especie</label></input>
                </div>
            </div>
            <div class="row">
                <!-- <div class="input-field col s4 m8 l4">
                        <input id="pet_age" type="number" class="validate" name="age" min="0">
                        <label for="pet_age" data-error="wrong" data-success="right">Edad</label></input>
                    </div>-->
                <div class="input-field col s5 m8 l5 center">
                    <input type="date" class="datepicker" name="born" id="date" required="true">
                    <label for="date"><i class="material-icons font-teal" style="padding-left: 50px;">today</i></label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12 m12 l12">
                    <!--     <div class="input-field col s12 m12 l12">
                            <input id="pet_genre" type="text" class="validate" name="genre">
                            <label for="pet_genre" >Género</label></input>
                        </div>-->
                    <select id="pet_genre" name="genre">
                        <option class="" value="" disabled selected>Escoja el genero</option>
                        <option value="Macho" data-icon="/PetWiz/assets/masc.png" class="circle">Macho</option>
                        <option value="Hembra" data-icon="/PetWiz/assets/Femenino.png" class="circle">Hembra</option>
                    </select></div>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12 m12 l12">
                <label for="photo" >Imagen </label><br><br>
                <g:field id="photo" type="file" class="validate" name="avatar" accept="image/*"/>
            </div>
        </div>
        <!--<button class="btn modal-action modal-close waves-effect waves-grey petwiz-teal" name="submit" >Crear Mascota
            <i class="material-icons right">send</i>
        </button>-->
        <g:actionSubmit controller ="person" value="Crear Mascota" action="addPet"
                        class="btn modal-action modal-close waves-effect waves-grey petwiz-teal" style="padding-top: 10px"/>
        <br><br>
        </div>
    </g:form>
</div>
</div>

    <div>
        <div class="row">
            <g:set var="i" value="0" />
            <g:each  var="item" in="${petwiz_project.Pet?.findAllByPerson(Person.findByUsername(session["user"]))}">
                <div class="col s12 m6 l3">
                    <div class="card small hoverable">
                        <div class="card-image  waves-effect waves-block waves-light">
                            <image src="${createLink(controller: 'person', action: 'petImageHandler', id: item.name)}" class="activator" width="650"/>
                        </div>
                        <div class="card-content">
                            <div class="row center"><span class="petwiz-font small-text activator">${item.name}</span></div>
                            <div class="fixed-action-btn petwiz horizontal">
                                <a class="btn-floating btn-large petwiz-blue">
                                    <i class="large material-icons">pets</i>
                                </a>
                                <ul>
                                    <li class="petwiz"><a class="modal-trigger btn-floating waves-effect waves-light tooltipped" data-position="bottom" data-delay="50" data-tooltip="Ver Perfil" href=${createLink(conroller:'person',action:'pet', params:['id':item.id])}  ><i class="material-icons">table</i></a></li>
                                    <li class="petwiz"><a class="btn-floating tooltipped" data-position="bottom" data-delay="50" data-tooltip="Borrar" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" href="${createLink(controller: "person", action: "delete", params:['id':item.id])}"><i class="material-icons">delete</i></a></li>
                                    <li class="petwiz"><a class="modal-trigger btn-floating waves-effect waves-light tooltipped" data-position="bottom" data-delay="50" data-tooltip="Editar" href=${"#updatePet" + i}  ><i class="material-icons">edit</i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-reveal petwiz-grey">
                            <span class="card-title  petwiz-blue-text">${item.name}<i class="material-icons right">close</i></span>
                            <p class=" petwiz-blue-text">
                            <li>Especie: ${item.type}</li>
                            <li>Fecha Nacimiento: ${item.getBday()}</li>
                            <li>Edad: ${item.setAge()}</li>
                            <li>Genero: ${item.genre}</li>
                        </p>
                        </div>
                    </div>

                </div>
                <div id="${"updatePet" + i}" class="modal small">
                    <g:set var="i" value="${i+1}" />
                    <div class="modal-content font-teal">
                        <g:form controller="person" action="updatePet">
                            <div class="input-field  col s12 m12 l12">
                                <input id="pet_id2" type="hidden" class="validate "  value="${item.getId() }" name="id2" >
                            </div>
                            <div class="row">
                                <div class="input-field col s12 m12 l12">
                                    <input id="pet_name2" type="text" class="validate"   value="${item.name}" name="name2" >
                                    <label for="pet_name2" >Nombre de Mascota</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12  m12 l12">
                                    <input id="pet_type2" type="text" class="validate" value="${item.type}" name="typePet2">
                                    <label for="pet_type2">Especie</label></input>
                                </div>
                            </div>
                            <div class="row">
                                <!-- <div class="input-field col s4 m8 l4">
                                    <input id="pet_age2" type="number" class="validate" value="${item.born}" name="age2" min="0">
                                    <label for="pet_age2" data-error="wrong" data-success="right">Edad</label></input>
                                </div>-->
                                <div class="input-field col s5 m8 l5 center">
                                    <input type="date" class="datepicker" name="ag2" id="pet_age2">
                                    <label for="date"><i class="material-icons font-teal" style="padding-left: 50px;" ></i></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12 m12 l12">
                                    <div class="input-field col s12 m12 l12">
                                        <select id="genre2" name="genre2">
                                            <option class="" value="" disabled selected>Escoja el genero</option>
                                            <option value="Macho" data-icon="/PetWiz/assets/masc.png" class="circle">Macho</option>
                                            <option value="Hembra" data-icon="/PetWiz/assets/Femenino.png" class="circle">Hembra</option>
                                        </select>
                                    </div>
                                                                    </div>
                            </div>
                            <!--- <g:actionSubmit controller ="person" value="Actualizar mascota" action="saveService" class="btn modal-action modal-close waves-effect waves-grey petwiz-teal" style="padding-top: 10px"/>--->
                            <button class="btn modal-action modal-close waves-effect waves-grey petwiz-teal" name="submit" >Actualizar datos
                                <i class="material-icons right">send</i>
                            </button>
                        </g:form>
                    </div>
                </div>
            </g:each>

            <div class="col s12 m6 l3">
                <div class="card small-btn hoverable">
                    <br><span class="font-teal" style="margin-left: -20px">Añadir Mascota</span>
                    <a  href="#addPet" class="modal-trigger btn-floating btn-large waves-effect waves-light petwiz-blue-add"><i class="material-icons">add</i></a>
                </div>
            </div>

        </div>
    </div>
    <g:if test="${flash.message}">
        <div class="message" style="display: block">${flash.message}</div>
    </g:if>

</main>
</body>
</html>