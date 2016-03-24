<!DOCTYPE html>
<html>
<head>

    <title>Index</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <asset:stylesheet src="materialize.min.css" media="screen,projection"/>
    <asset:stylesheet src="style.css"/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:900' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Vollkorn:700' rel='stylesheet' type='text/css'>

</head>
<body>



<!-- Header -->
<header class="center">

</header>

<!-- Nav -->
<div class="navbar-fixed">
    <nav class="nav-wrapper petwiz-blue">
        <div class="row">


            <!------------------- lateral Nav Bar---------------------------->
            <div class="col s2 m1 l1 left">
                <a href="#" data-activates="nav-lat" class="button-collapse show-on-large"><i class="material-icons">menu</i></a>
                <ul id="nav-lat"  class="side-nav petwiz-teal petwiz-letra1">
                    <li><a href="${createLink(uri:'/person/home.gsp')}" class="menulat-item"><span class="font-white"><i class="material-icons left">home</i>Home</span></a></li>
                    <li><a href="" class="menulat-item"><span class="font-white">Perfil</span></a></li>
                    <li><a href="" class="menulat-item"><span class="font-white">Mascotas</span></a></li>
                    <li><a href="" class="menulat-item"><span class="font-white">Eventos</span></a></li>
                    <li><a href="" class="menulat-item"><span class="font-white">Contacto</span></a></li>
                    <li><a href="" class="menulat-item"><span class="font-white"><i class="material-icons left">help</i>Help</span></a></li>
                </ul>


            </div>


            <!-------------------------Nav Responsive menu--------------------------->
            <div class="left">
                <a href="PetWizTeam.gsp" class="brand-logo"><img src="https://41.media.tumblr.com/4255698e1f0bf60cc578b3e41e1102c2/tumblr_o3y01dJzcZ1solvhmo1_400.png" width=110px height="auto"/></a>
            </div>
            <div class="col s9 m1 l9 right ">
                <ul class="hide-on-med-and-down">
                    <li class="col s2 m1 l2 menu-item "><a href="${createLink(uri:'/person/home.gsp')}">Home</a></li>
                    <li class="col s2 m1 l2 menu-item "><a href="">Mascotas</a></li>
                    <li class="col s2 m1 l2 menu-item "><a href="" class="dropdown-button" data-activates="events" data-beloworigin="true">Eventos</a></li>
                    <li class="col s2 m1 l2 menu-item "><a href="">Contacto</a></li>
                    <li class="col s2 m1 l2 menu-item "><a href="">About Us</a></li>
                    <li class="col s2 m1 l1 menu-item "><a href="">Help</a></li>
                </ul>
            </div>

            <ul id="events" class="dropdown-content drop-menu">
                <li><a href="#!" class="navdrop">Propios</a></li>
                <li><a href="#!" class="navdrop">Servicios</a></li>
            </ul>
        </div>
    </nav>
</div>
<div class="white">
    <div class="container">
        <div class="row s12 m12 l12">
            <div class="col s12 m12 l12 center hoverable">
                <img src="https://41.media.tumblr.com/4255698e1f0bf60cc578b3e41e1102c2/tumblr_o3y01dJzcZ1solvhmo1_400.png" width=300px height=180px/>
            </div>
            <div class="col s12 m12 l12 center">
                <div class="card col s12 m12 l12 black z-depth-5 hoverable">
                    <div class="card-content petwiz-font">
                        <div class="row">
                            <span class="card-title white-text">PetWiz Team</span>
                        </div>
                        <div class="row white-text">
                            Todos los Colaboradores y desarrolladores del proyecto con sus descripciones las encontraras pulsando los botones de abajo
                        </div>
                        <a class="waves-effect waves-light chip petwiz-modal modal-trigger" href="#Carlos">Carlos</a>
                        <a class="waves-effect waves-light chip petwiz-modal modal-trigger" href="#Jessica">Jessica</a>
                        <a class="waves-effect waves-light chip petwiz-modal modal-trigger" href="#Santiago">Santiago</a>
                        <a class="waves-effect waves-light chip petwiz-modal modal-trigger" href="#Michael">Michael</a>
                        <a class="waves-effect waves-light chip petwiz-modal modal-trigger" href="#Erin">Erin</a>

                        <!-- Modal Structure -->
                        <div id="Carlos" class="modal">
                            <div class="modal-content row">
                                <div class="col">
                                    <asset:image src="Biohazard2.JPG"/>
                                </div>
                                <div class="row">
                                    <div class="col s12 m6">
                                        <div class="card petwiz-blue darken-1" >
                                            <div class="card-content white-text">
                                                <h4><span class="card-title petwiz-font">Carlos Cogua</span></h4>
                                                <p>Estudiante de la Universidad nacional, me gusta mucho la música, los deportes y las peliculas, pero sobre todo la comida, divertirse siempre es la opcion y para lo que necesites puedes pedir mi ayuda, #TeamPerritos</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a href="#!" class="modal-action modal-close black waves-effect waves-grey btn">Entendido</a>
                            </div>
                        </div>

                        <div id="Jessica" class="modal">
                            <div class="modal-content row">
                                <div class="col">
                                    <asset:image src=""/>
                                </div>
                                <div class="row">
                                    <div class="col s12 m6">
                                        <div class="card petwiz-blue darken-1" >
                                            <div class="card-content white-text">
                                                <h4><span class="card-title petwiz-font">Jessica Casas</span></h4>
                                                <p>Estudiante de la Universidad nacional</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a href="#!" class="modal-action modal-close black waves-effect waves-grey btn">Entendido</a>
                            </div>
                        </div>
                        <div id="Santiago" class="modal">
                            <div class="modal-content row">
                                <div class="col">
                                    <asset:image src=""/>
                                </div>
                                <div class="row">
                                    <div class="col s12 m6">
                                        <div class="card petwiz-blue darken-1" >
                                            <div class="card-content white-text">
                                                <h4><span class="card-title petwiz-font">Santiago Blanco</span></h4>
                                                <p>Estudiante de la Universidad nacional</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a href="#!" class="modal-action modal-close black waves-effect waves-grey btn">Entendido</a>
                            </div>
                        </div>
                        <div id="Michael" class="modal">
                            <div class="modal-content row">
                                <div class="col">
                                    <asset:image src=""/>
                                </div>
                                <div class="row">
                                    <div class="col s12 m6">
                                        <div class="card petwiz-blue darken-1" >
                                            <div class="card-content white-text">
                                                <h4><span class="card-title petwiz-font">Michael Gonzales</span></h4>
                                                <p>Estudiante de la Universidad nacional</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a href="#!" class="modal-action modal-close black waves-effect waves-grey btn">Entendido</a>
                            </div>
                        </div>
                        <div id="Erin" class="modal">
                            <div class="modal-content row">
                                <div class="col">
                                    <asset:image src=""/>
                                </div>
                                <div class="row">
                                    <div class="col s12 m6">
                                        <div class="card petwiz-blue darken-1" >
                                            <div class="card-content white-text">
                                                <h4><span class="card-title petwiz-font">Erin Rincon</span></h4>
                                                <p>Estudiante de la Universidad nacional</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a href="#!" class="modal-action modal-close black waves-effect waves-grey btn">Entendido</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="petwiz-footer petwiz-blue">
        <div class="container">
            <div class="row">
                <div class="col s12 l6">
                    <h5 class="white-text petwiz-font">PetWiz Info</h5>
                    <p class="grey-text text-lighten-4">Poner Descripcion</p>
                </div>
                <div class="col">
                    <h5 class="col white-text">Unete:</h5>
                </div>
                <ul class="col petwiz-conn-ico-container">
                    <li class="petwiz-conn-ico inverse right">
                        <a href="http://www.twitter.com/petwiz_2016">
                            <img src="https://s3.amazonaws.com/codecademy-content/projects/make-a-website/lesson-4/twitter.svg" width=40px height="auto"/>
                        </a>
                    </li>
                    <li class="petwiz-conn-ico inverse right">
                        <a href="https://www.instagram.com/petwizweb/">
                            <img src="https://s3.amazonaws.com/codecademy-content/projects/make-a-website/lesson-4/instagram.svg"
                                 width=40px height="auto"/>
                        </a>
                    </li>
                    <li class="petwiz-conn-ico inverse right">
                        <a href="">
                            <img src="https://s3.amazonaws.com/codecademy-content/projects/make-a-website/lesson-4/facebook.svg"
                                 width=40px height="auto"/>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </footer>
</div>

<div class="petwiz-blue hide-on-med-and-up">
    <br><br>
    <br><br>
</div>

<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<asset:javascript src="materialize.js"/>
<asset:javascript src="init.js"/>
<asset:javascript src="materialize.min.js"/>


</body>
</html>