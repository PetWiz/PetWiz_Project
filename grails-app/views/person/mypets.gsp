<html>
<head>
    <title>Mascotas</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="layout" content="main" />
</head>
<body>

<main>
    <script type = "text/javascript">
        var _url = '${createLink(controller: 'index' , action:'logout')}?';
    </script>


    <!-- Modal Structure -->
    <div id="modal1" class="modal small">
        <div class="modal-content font-teal">
            <g:form action="addPet">
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
                        <input id="pet_age" type="text" class="validate" name="age">
                        <label for="pet_age">Edad</label></div></input>
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

                        <!--<input><select id="pet_genre" name="genre">
                            <option class="" value="" disabled selected>Escoja el genero</option>
                            <option value="male" data-icon="/PetWiz/assets/masc.png" class="circle">Macho</option>
                            <option value="Female" data-icon="/PetWiz/assets/Femenino.png" class="circle">Hembra</option>
                        </select></div></input>-->
                    </div>
                </div>
                <button class="btn modal-action modal-close waves-effect waves-grey petwiz-teal" name="submit" >Crear Mascota
                    <i class="material-icons right">send</i>
                </button>
            </g:form>
        </div>
    </div>
    <div>
        <div class="row">
            <div class="col s12 m6 l3">

                <div class="card small hoverable">
                    <div class="card-image waves-effect waves-block waves-light">
                        <asset:image src="cat1.jpg" class="activator"/>
                    </div>
                    <div class="card-content">
                        <div class="row center"><span class="petwiz-font small-text activator">Fido</span></div>
                        <div class="fixed-action-btn petwiz horizontal">
                            <a class="btn-floating btn-large petwiz-blue">
                                <i class="large material-icons">pets</i>
                            </a>
                            <ul>
                                <li class="petwiz"><a class="btn-floating activator"><i class="material-icons">insert_chart</i></a></li>
                                <li class="petwiz"><a class="btn-floating"><i class="material-icons">delete</i></a></li>
                                <li class="petwiz"><a class="btn-floating"><i class="material-icons">edit</i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-reveal petwiz-grey">
                        <span class="card-title  petwiz-blue-text">Fido<i class="material-icons right">close</i></span>
                        <p class=" petwiz-blue-text">
                        <li>Felino</li>
                        <li>3 Años</li>
                        <li>Macho</li>
                    </p>
                    </div>
                </div>
            </div>
            <div class="col s12 m6 l3">
                <div class="card small hoverable">
                    <div class="card-image waves-effect waves-block waves-light">
                        <asset:image src="wolf.jpg" class="activator"/>
                    </div>
                    <div class="card-content">
                        <div class="row center"><span class="petwiz-font small-text activator">Havoc</span></div>
                        <div class="fixed-action-btn petwiz horizontal">
                            <a class="btn-floating btn-large petwiz-blue">
                                <i class="large material-icons">pets</i>
                            </a>
                            <ul>
                                <li class="petwiz"><a class="btn-floating activator"><i class="material-icons">insert_chart</i></a></li>
                                <li class="petwiz"><a class="btn-floating"><i class="material-icons">delete</i></a></li>
                                <li class="petwiz"><a class="btn-floating"><i class="material-icons">edit</i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-reveal petwiz-grey">
                        <span class="card-title  petwiz-blue-text">Havoc<i class="material-icons right">close</i></span>
                        <p class=" petwiz-blue-text">
                        <li>Canino</li>
                        <li>5 Años</li>
                        <li>Macho</li>
                    </p>
                    </div>
                </div>
            </div>
            <div class="col s12 m6 l3">
                <div class="card small hoverable">
                    <div class="card-image waves-effect waves-block waves-light">
                        <asset:image src="dog1.jpg" class="activator"/>
                    </div>
                    <div class="card-content">
                        <div class="row center"><span class="petwiz-font small-text activator">Tony</span></div>
                        <div class="fixed-action-btn petwiz horizontal">
                            <a class="btn-floating btn-large petwiz-blue">
                                <i class="large material-icons">pets</i>
                            </a>
                            <ul>
                                <li class="petwiz"><a class="btn-floating activator"><i class="material-icons">insert_chart</i></a></li>
                                <li class="petwiz"><a class="btn-floating"><i class="material-icons">delete</i></a></li>
                                <li class="petwiz"><a class="btn-floating"><i class="material-icons">edit</i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-reveal petwiz-grey">
                        <span class="card-title  petwiz-blue-text">Tony<i class="material-icons right">close</i></span>
                        <p class=" petwiz-blue-text">
                        <li>Felino</li>
                        <li>3 Años</li>
                        <li>Macho</li>
                    </p>
                    </div>
                </div>
            </div>



            <div class="col s12 m6 l3">
                <div class="card small-btn hoverable">
                    <br><span class="font-teal" style="margin-left: -20px">Añadir Mascota</span>
                    <a  href="#modal1" class="modal-trigger btn-floating btn-large waves-effect waves-light petwiz-blue-add"><i class="material-icons">add</i></a>
                </div>
            </div>

        </div>
    </div>

</main>
</body>
</html>