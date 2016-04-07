<%--
  Created by IntelliJ IDEA.
  User: mssg_
  Date: 4/6/2016
  Time: 10:07 PM
--%>
<!DOCTYPE html>
<html>
<head>

    <title>Mascotas</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="/PetWiz/assets/materialize.min.css?compile=false" media="screen,projection"/>

    <link rel="stylesheet" href="/PetWiz/assets/style.css?compile=false" />

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:900' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Vollkorn:700' rel='stylesheet' type='text/css'>

</head>
<header></header>


<body class="black white-text">
<main>
    <!-- Nav -->
    <div class="navbar-fixed">
        <nav class="nav-wrapper petwiz-blue">
            <div class="row">



                <!------------------- lateral Nav Bar---------------------------->
                <div class="col s2 m1 l1 left">
                    <a href="#" data-activates="nav-lat" class="button-collapse show-on-large"><i class="material-icons">menu</i></a>
                    <ul id="nav-lat"  class="side-nav petwiz-teal petwiz-letra1">
                        <li><a href="home.gsp" class="menulat-item-active menulat-item"><span class="font-white"><i class="material-icons left">home</i>Home</span></a></li>
                        <li><a href="" class="menulat-item"><span class="font-white">Perfil</span></a></li>
                        <li><a href="/PetWiz/person/mypets" class="menulat-item"><span class="font-white">Mascotas</span></a></li>
                        <li><a href="" class="menulat-item"><span class="font-white">Eventos</span></a></li>
                        <li><a href="" class="menulat-item"><span class="font-white">Contacto</span></a></li>
                        <li><a href="" class="menulat-item"><span class="font-white"><i class="material-icons left">help</i>Help</span></a></li>
                    </ul>
                </div>

                <!-------------------------Nav Responsive menu--------------------------->
                <div class="left">
                    <a href="" class="brand-logo"><img src="https://41.media.tumblr.com/4255698e1f0bf60cc578b3e41e1102c2/tumblr_o3y01dJzcZ1solvhmo1_400.png" width=110px height="auto"/></a>
                </div>
                <div class="col s9 m1 l9 right ">
                    <ul class="hide-on-med-and-down">
                        <li class="col s2 m1 l2 menu-item "><a href="">Home</a></li>
                        <li class="col s2 m1 l2 menu-item "><a href="/PetWiz/person/mypets">Mascotas</a></li>
                        <li class="col s2 m1 l2 menu-item "><a href="" class="dropdown-button" data-activates="events" data-beloworigin="true">Eventos</a></li>
                        <li class="col s2 m1 l2 menu-item "><a href="">Contacto</a></li>
                        <li class="col s2 m1 l2 menu-item "><a href="/PetWiz/index/PetWizTeam.gsp">About Us</a></li>
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
    <div class="row ">
        <div class=" ">
            <ul class="container  m6 l3 collection prueba-bordes col s3 black-text petwiz-modal back-color white-text ">
                <li class=" collection-item  avatar hoverable menu-item back-color">
                    <i class="material-icons circle icon-color">perm_identity</i>
                    <span class="title left-align">Mi perfil</span>
                </li>
                <li class=" collection-item  avatar hoverable  menu-item back-color">
                    <i class="material-icons circle icon-color">add</i>
                    <span class="title left-align">Añadir Evento</span>
                </li>
                <li class="collection-item avatar hoverable menu-item back-color">
                    <i class="material-icons circle icon-color">add</i>
                    <span class="title left-align">Añadir Mascota</span>
                </li>
                <li class="collection-item avatar hoverable menu-item back-color">
                    <i class="material-icons circle icon-color">delete</i>
                    <span class="title left-align">Borrar Mascota</span>
                </li>
                <li class=" menu-item collection-item avatar hoverable back-color ">
                    <i class="material-icons circle icon-color ">settings</i>
                    <span class="title left-align">Modificar Cuenta</span>
                </li>
            </ul>

        </div>

        <div class="col s3 m3 l3">
            <div class="card small">
                <div class="card-image waves-effect waves-block waves-light">
                    <img src="/PetWiz/assets/cat1.jpg" class="activator"/>
                </div>
                <div class="card-content">
                    <span class="card-title activator black-text">Fido<i class="material-icons right">more_vert</i></span>
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
        <div class="col s3 m3 l3">
            <div class="card small">
                <div class="card-image waves-effect waves-block waves-light">
                    <img src="/PetWiz/assets/wolf.jpg" class="activator"/>
                </div>
                <div class="card-content">
                    <span class="card-title activator black-text">Havoc<i class="material-icons right">more_vert</i></span>

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
        <div class="col s3 m3 l3">
            <div class="card small">
                <div class="card-image waves-effect waves-block waves-light">
                    <img src="/PetWiz/assets/dog1.jpg" class="activator"/>
                </div>
                <div class="card-content">
                    <span class="card-title activator black-text">Tony<i class="material-icons right">more_vert</i></span>

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


    </div>



</div>

</main>
<footer class="petwiz-footer petwiz-blue">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text petwiz-font">PetWiz Info</h5>
                <p class="grey-text text-lighten-4">Esta apliación es la mejor para que tu y tus mascotas puedan compartir los mejores momentos. Aquí encontrarás multiples eventos y servicios a los cuáles tu mascota podrá asistir y disfrutar para que tu puedas devolver todo el cariño que el te brinda.</p>
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

<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="/PetWiz/assets/materialize.js?compile=false" type="text/javascript" ></script>

<script src="/PetWiz/assets/init.js?compile=false" type="text/javascript" ></script>

</body>



</html>