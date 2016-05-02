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
        <div class="modal-content font-teal">
            <g:form controller="person"  action="addPet"  enctype="multipart/form-data">

                    <div class="input-field  col s12 m12 l12">
                        <input id="pet_id" type="hidden" class="validate "  value="${petwiz_project.Pet?.count + 1 }" name="id" >
                    </div>

                <div class="row">
                    <div class="input-field col s12 m12 l12">
                        <input id="pet_name" type="text" class="validate"  name="name" >
                        <label for="pet_name" >Nombre de Mascota</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12  m12 l12">
                        <input id="pet_type" type="text" class="validate" name="typePet">
                        <label for="pet_type">Especie</label></input>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s4 m8 l4">
                        <input id="pet_age" type="number" class="validate" name="age">
                        <label for="pet_age" data-error="wrong" data-success="right">Edad</label></input>
                    </div>
                    <!-- <div class="input-field col s5 m8 l5 center">
                        <input type="date" class="datepicker" name="age" id="date">
                        <label for="date"><i class="material-icons font-teal" style="padding-left: 50px;">today</i></label>
                    </div>-->
                </div>
                <div class="row">
                    <div class="input-field col s12 m12 l12">
                        <div class="input-field col s12 m12 l12">
                            <input id="pet_genre" type="text" class="validate" name="genre">
                            <label for="pet_genre" >Género</label></input>
                        </div>
                        <!--<input><select id="pet_genre" name="genre">
                            <option class="" value="" disabled selected>Escoja el genero</option>
                            <option value="male" data-icon="/PetWiz/assets/masc.png" class="circle">Macho</option>
                            <option value="Female" data-icon="/PetWiz/assets/Femenino.png" class="circle">Hembra</option>
                        </select></div></input>-->
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12 m12 l12">
                        <label for="photo" >Imagen </label><br><br>
                        <g:field id="photo" type="file" class="validate" name="avatar" />
                    </div>
                </div>
                <!--<button class="btn modal-action modal-close waves-effect waves-grey petwiz-teal" name="submit" >Crear Mascota
                    <i class="material-icons right">send</i>
                </button>-->
                <g:actionSubmit controller ="person" value="Crear Mascota" action="addPet"
                                class="btn modal-action modal-close waves-effect waves-grey petwiz-teal" style="padding-top: 10px"/>
            </g:form>
        </div>
    </div>

    <div>
        <div class="row">
            <g:set var="i" value="0" />
            <g:each  var="item" in="${petwiz_project.Pet?.findAllByPerson(Person.findByUsername(session["user"]))}">
                <div class="col s12 m6 l3">
                    <div class="card small hoverable">
                        <div class="card-image waves-effect waves-block waves-light">
                            <image src="${createLink(controller: 'person', action: 'petImageHandler', id: item.pet_name)}" class="materialboxed" width="650"/>
                        </div>
                        <div class="card-content">
                            <div class="row center"><span class="petwiz-font small-text activator">${item.pet_name}</span></div>
                            <div class="fixed-action-btn petwiz horizontal">
                                <a class="btn-floating btn-large petwiz-blue">
                                    <i class="large material-icons">pets</i>
                                </a>
                                <ul>
                                    <li class="petwiz"><a class="btn-floating activator"><i class="material-icons">insert_chart</i></a></li>
                                    <!--<li class="petwiz"><a class="btn-floating" onclick="${remoteFunction(controller: 'person', action: 'deletePet')}"><i class="material-icons">delete</i></a></li>
                                    -->
                                    <li class="petwiz"><a class="btn-floating"  href="${createLink(controller: "person", action: "delete", params:['id':item.id])}"><i class="material-icons">delete</i></a></li>
                                    <li class="petwiz"><a class="modal-trigger btn-floating waves-effect waves-light" href=${"#updatePet" + i}  ><i class="material-icons">edit</i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-reveal petwiz-grey">
                            <span class="card-title  petwiz-blue-text">${item.pet_name}<i class="material-icons right">close</i></span>
                            <p class=" petwiz-blue-text">
                            <li>Especie: ${item.pet_type}</li>
                            <li>Edad: ${item.pet_age}</li>
                            <li>Genero: ${item.pet_genre}</li>
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
                                    <input id="pet_name2" type="text" class="validate"   value="${item.pet_name}" name="name2" >
                                    <label for="pet_name2" >Nombre de Mascota</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12  m12 l12">
                                    <input id="pet_type2" type="text" class="validate" value="${item.pet_type}" name="typePet2">
                                    <label for="pet_type2">Especie</label></input>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s4 m8 l4">
                                    <input id="pet_age2" type="number" class="validate" value="${item.pet_age}" name="age2">
                                    <label for="pet_age2" data-error="wrong" data-success="right">Edad</label></input>
                                </div>
                                <!-- <div class="input-field col s5 m8 l5 center">
                        <input type="date" class="datepicker" name="age" id="date">
                        <label for="date"><i class="material-icons font-teal" style="padding-left: 50px;">today</i></label>
                    </div>-->
                            </div>
                            <div class="row">
                                <div class="input-field col s12 m12 l12">
                                    <div class="input-field col s12 m12 l12">
                                        <input id="pet_genre2" type="text" class="validate" value="${item.pet_genre}" name="genre2">
                                        <label for="pet_genre2" >Género</label></input>
                                    </div>
                                    <!--<input><select id="pet_genre" name="genre">
                            <option class="" value="" disabled selected>Escoja el genero</option>
                            <option value="male" data-icon="/PetWiz/assets/masc.png" class="circle">Macho</option>
                            <option value="Female" data-icon="/PetWiz/assets/Femenino.png" class="circle">Hembra</option>
                        </select></div></input>-->
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


</main>
</body>
</html>