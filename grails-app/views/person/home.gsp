<%--
  Created by IntelliJ IDEA.
  User: Andres
  Date: 21/03/2016
  Time: 18:07
--%>

<!DOCTYPE html>
<html>
<head>

    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <asset:stylesheet src="materialize.min.css" media="screen,projection"/>
    <asset:stylesheet src="style.css"/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:900' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Vollkorn:700' rel='stylesheet' type='text/css'>

</head>


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
                        <li><a href="home.gsp" class="menulat-item-active menulat-item"><span class="font-white"><i class="material-icons left">Home</i>Home</span></a></li>
                        <li><a href="" class="menulat-item"><span class="font-white">Perfil</span></a></li>
                        <li><a href="" class="menulat-item"><span class="font-white">Mascotas</span></a></li>
                        <li><a href="" class="menulat-item"><span class="font-white">Eventos</span></a></li>
                        <li><a href="" class="menulat-item"><span class="font-white">Contacto</span></a></li>
                        <li><a href="" class="menulat-item"><span class="font-white"><i class="material-icons left">help</i>Help</span></a></li>
                    </ul>
                </div>

                <!-------------------------Nav Responsive menu--------------------------->
                <div class="left">
                    <a href="PetWizTeam.html" class="brand-logo"><img src="https://41.media.tumblr.com/4255698e1f0bf60cc578b3e41e1102c2/tumblr_o3y01dJzcZ1solvhmo1_400.png" width=110px height="auto"/></a>
                </div>
                <div class="col s9 m1 l9 right ">
                    <ul class="hide-on-med-and-down">
                        <li class="col s2 m1 l2 menu-item "><a href="index-gsp">Home</a></li>
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

    <div class="slider">
        <ul class="slides z-depth-4">
            <li>
                <asset:image src="Dog-Cat-Playing.jpg"/>
                <div class="caption center-align">
                    <h3>This is our big Tagline!</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
            <li>
                <asset:image src="catcolors.jpg"/>
                <div class="caption left-align">
                    <h3>Left Aligned Caption</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
            <li>
                <asset:image src="relax.jpg"/>
                <div class="caption right-align">
                    <h3>Right Aligned Caption</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
            <li>
                <asset:image src="aquadog.jpg"/>
                <div class="caption center-align">
                    <h3>This is our big Tagline!</h3>
                    <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
                </div>
            </li>
        </ul>
    </div>

    <div class=" black">

        <div class="row">
            <div class="col s12 m6 l4">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <asset:image class="activator" src="catplay.jpg"/>
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">Mascotas<i class="material-icons right">more_vert</i></span>
                        <p><a href="#">Visitar Mascotas</a></p>
                    </div>
                    <div class="card-reveal petwiz-grey">
                        <span class="card-title petwiz-blue-text">Mascotas<i class="material-icons right">close</i></span>
                        <p class=" petwiz-blue-text">En este lugar podras ver todo lo que tu mascota realiza, sus travesuras y aventuras</p>
                    </div>
                </div>
            </div>

            <div class="col s12 m6 l4">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <asset:image class="activator" src="2dogs.jpg"/>
                    </div>
                    <div class="card-content">
                        <span class="card-title activator">Eventos<i class="material-icons right">more_vert</i></span>
                        <p><a href="#">Visitar Eventos</a></p>
                    </div>
                    <div class="card-reveal petwiz-grey">
                        <span class="card-title  petwiz-blue-text">Eventos<i class="material-icons right">more_vert</i></span>
                        <p class=" petwiz-blue-text">Vamos a Jugar, realiza divertidas actividades donde conoceras otras mascotas y poderas aprender nuevas cosas</p>
                    </div>
                </div>
            </div>

            <div class="col s12 m6 l4">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <asset:image class="activator" src="login2.jpg"/>
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">Contacto<i class="material-icons right">more_vert</i></span>
                        <p><a href="#">Contactanos</a></p>
                    </div>
                    <div class="card-reveal petwiz-grey">
                        <span class="card-title grey-text text-darken-4">Contacto<i class="material-icons right">close</i></span>
                        <p class="petwiz-blue-text">Mas preguntas que respuestas?, Tranquilo comunicate con nosotros y resolveremos tus dudas, y  sino pues ya haremos algo</p>
                    </div>
                </div>
            </div>
        </div>

        <footer class="petwiz-footer petwiz-blue">
            <div class="container">
                <div class="row">
                    <div class="col l6 s12">
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

</body>
</html>