<html>
<head>
    <title><g:layoutTitle default="PetWizPage" /></title>

    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <asset:stylesheet src="materialize.min.css" media="screen,projection"/>
    <asset:stylesheet src="IndexStyle.css"/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lato:900' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Vollkorn:700' rel='stylesheet' type='text/css'>

    <g:layoutHead />
</head>
<body onload="${pageProperty(name:'body.onload')}">

<body>
<!-- Header -->
<header>
    <!-- Nav -->
    <div class="navbar-fixed">
        <nav class="nav-wrapper petwiz-blue">
            <div class="row">
                <!------------------- lateral Nav Bar---------------------------->
                <div class="col s2 m1 l1 left">
                    <a href="#" data-activates="nav-lat" class="button-collapse"><i class="material-icons">menu</i></a>
                    <ul id="nav-lat"  class="side-nav petwiz-teal petwiz-letra1">
                    <sec:ifAllGranted roles="ROLE_USER">
                        <li><a href="${createLink(uri:'/person/home.gsp')}" class="white-text"><i class="left material-icons">home</i>Buscar</a></li>
                    </sec:ifAllGranted>
                        <li><a href="" class="white-text"><i class="left material-icons">search</i>Buscar</a></li>
                        <li><a href="" class="white-text"><i class="left material-icons">help</i>Ayuda</a></li>
                        <li><a href="${createLink(uri:'/index/PetWizTeam.gsp')}" class="white-text"><i class="left material-icons">more_vert</i>About Us</a></li>
                    </ul>
                </div>
                <!-------------------------Nav Responsive menu--------------------------->
                <div class="left margin-left">
                    <a href=""><img src="https://41.media.tumblr.com/4255698e1f0bf60cc578b3e41e1102c2/tumblr_o3y01dJzcZ1solvhmo1_400.png" width=110px height="auto"/></a>
                </div>
                <div class="col s9 m1 l9 right ">
                    <ul class="hide-on-med-and-down right">
                        <li class="input-field">
                            <input id="search" type="search" required>
                            <label for="search"><i class="material-icons">search</i></label>
                            <i class="material-icons">close</i>
                        </li>
                    <sec:ifAllGranted roles="ROLE_USER">
                        <li><a href="${createLink(uri:'/person/home.gsp')}"><i class="material-icons">home</i></a></li>
                    </sec:ifAllGranted>
                        <li><a href="${createLink(uri:'/index/help.gsp')}"><i class="material-icons">help</i></a></li>
                        <li><a href="${createLink(uri:'/index/PetWizTeam.gsp')}"><i class="material-icons">more_vert</i></a></li>
                    </ul>
                </div>

            </div>
        </nav>
    </div>
</header>

<g:layoutBody/>

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


<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<asset:javascript src="materialize.js"/>
<asset:javascript src="init.js"/>
</body>

</body>




</html>