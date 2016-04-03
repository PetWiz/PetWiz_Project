<!DOCTYPE html>
<html>
<head>
    <title>services</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- CSS  -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <asset:stylesheet src="materialize.min.css" media="screen,projection"/>
    <asset:stylesheet src="style.css"/>
    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:900' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Vollkorn:700' rel='stylesheet' type='text/css'>
    <!--  Scripts-->
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <asset:javascript src="materialize.js"/>
    <asset:javascript src="init.js"/>

</head>
<body>

<div id="fb-root"></div>
<script>
    // This is called with the results from from FB.getLoginStatus().

    function statusChangeCallback(response) {
        console.log('statusChangeCallback');
        console.log(response);
        // The response object is returned with a status field that lets the
        // app know the current login status of the person.
        // Full docs on the response object can be found in the documentation
        // for FB.getLoginStatus().
        if (response.status === 'connected') {
            // Logged into your app and Facebook.

        } else if (response.status === 'not_authorized') {
            // The person is logged into Facebook, but not your app.
            document.getElementById('status').innerHTML = 'Please log ' +
                    'into this app.';
        } else {
            // The person is not logged into Facebook, so we're not sure if
            // they are logged into this app or not.
            document.getElementById('status').innerHTML = 'Please log ' +
                    'into Facebook.';
        }
    }

    // This function is called when someone finishes with the Login
    // Button.  See the onlogin handler attached to it in the sample
    // code below.
    function checkLoginState() {
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
    }

    window.fbAsyncInit = function() {
        FB.init({
            appId      : '988173204609860',
            cookie     : true,  // enable cookies to allow the server to access
                                // the session
            xfbml      : true,  // parse social plugins on this page
            version    : 'v2.5' // use graph api version 2.5
        });

        // Now that we've initialized the JavaScript SDK, we call
        // FB.getLoginStatus().  This function gets the state of the
        // person visiting this page and can return one of three states to
        // the callback you provide.  They can be:
        //
        // 1. Logged into your app ('connected')
        // 2. Logged into Facebook, but not your app ('not_authorized')
        // 3. Not logged into Facebook and can't tell if they are logged into
        //    your app or not.
        //
        // These three cases are handled in the callback function.

        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });

    };

    // Load the SDK asynchronously
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.5&appId=988173204609860";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));


    function login() {
        FB.login(function(response) {

            // handle the response
            console.log("Response goes here!");

        }, {scope: 'read_stream,publish_stream,publish_actions,read_friendlists'});
    }

    function logout() {
        FB.logout(function(response) {
            // user is now logged out
        });
    }

</script>



<header>
    <!-- Nav -->
    <div class="navbar-fixed">
        <nav class="nav-wrapper petwiz-blue petwiz-font">
            <div class="row">

                <!------------------- lateral Nav Bar---------------------------->
                <div class="col s2 m1 l1 left">
                    <a href="#" data-activates="nav-lat" class="button-collapse show-on-large"><i class="material-icons">menu</i></a>
                    <ul id="nav-lat"  class="side-nav petwiz-teal petwiz-letra1">
                        <li><a href="" class="menulat-item"><span class="font-white"><i class="material-icons left">home</i>Home</span></a></li>
                        <li><a href="" class="menulat-item"><span class="font-white">Perfil</span></a></li>
                        <li><a href="" class="menulat-item"><span class="font-white">Mascotas</span></a></li>

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
                        <li class="col s2 m1 l1 menu-item "><a href="${createLink(uri:'/person/home.gsp')}"><i class="material-icons center">home</i></a></li>
                        <li class="col s2 m1 l2 menu-item "><a href="">Mascotas</a></li>
                        <li class="col s2 m1 l2 menu-item menu-item-active"><a href="" class="dropdown-button" data-activates="events" data-beloworigin="true">Eventos</a></li>
                        <li class="col s2 m1 l2 menu-item "><a href="">Contacto</a></li>
                        <li class="col s2 m1 l2 menu-item "><a href="${createLink(uri:'/index/PetWizTeam.gsp')}">Nosotros</a></li>
                        <li class="col s2 m1 l1 menu-item "><a><i class="material-icons center">help</i></a></li>
                        <li class="col s2 m1 l1" style="margin-left: 20px; margin-top: -25px">
                            <div class="fb-login-button" data-max-rows="1" data-size="small" data-show-faces="false" data-auto-logout-link="true"></div>
                        </li>
                    </li>

                    </ul>
                </div>
                <ul id="events" class="dropdown-content drop-menu">
                    <li><a href="#!" class="navdrop">Propios</a></li>
                    <li class="menulat-item-active"><a href="${createLink(uri:'/index/services.gsp')}" class="navdrop">Servicios</a></li>
                </ul>

            </div>

        </nav>
    </div>
</header>
<main>

    <div class="container">
        <div class="row">
            <ul class="collapsible col l6 s6" data-collapsible="accordion">
                <li>
                    <div class="collapsible-header"><i class="material-icons">local_pharmacy</i>Veterinarias</div>
                    <div class="collapsible-body">
                        <ul>
                            <li>Lista</li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons">pets</i>Guarderias</div>
                    <div class="collapsible-body">
                        <ul>
                            <li>Lista</li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons">face</i>Cuidadores</div>
                    <div class="collapsible-body">
                        <ul>
                            <li>Lista</li>
                        </ul>
                    </div>
                </li>
            </ul>

            <ul class="collapsible col l6 s6" data-collapsible="accordion">
                <li>
                    <div class="collapsible-header"><i class="material-icons">spa</i>Aseo</div>
                    <div class="collapsible-body">
                        <ul>
                            <li>Lista</li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons">fitness_center</i>Training</div>
                    <div class="collapsible-body">
                        <ul>
                            <li>Lista</li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons">local_hospital</i>Hospitales</div>
                    <div class="collapsible-body">
                        <ul>
                            <li>Lista</li>
                        </ul>
                    </div>
                </li>
            </ul>

        </div>
    </div>
</main>

<footer class="footer-copyright petwiz-blue">
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

</body>
</html>
