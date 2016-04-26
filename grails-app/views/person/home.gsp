<!DOCTYPE html>
<html>
<head>

    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="layout" content="main"/>

</head>
<body>
<main class="petwiz-blue petwiz-font">
    <div class="slider ">
        <ul class="slides z-depth-4">
            <li>
                <asset:image src="Dog-Cat-Playing.jpg"/>
                <div class="caption center-align">
                    <titulo class="medium-text trans-text">Bienvenido</titulo>
                </div>
            </li>
            <li>
                <asset:image src="catcolors.jpg"/>
                <div class="caption left-align">
                    <titulo class="medium-text trans-text">Comparte divertidos momentos</titulo>
                </div>
            </li>
            <li class="row">
                <asset:image src="relax.jpg"/>
                <div class="caption right-align col l2">
                    <titulo class="medium-text trans-text">Tus Mascotas Lo van A Disfrutar</titulo>
                </div>
            </li>
            <li>
                <asset:image src="aquadog.jpg"/>
                <div class="caption center-align">
                    <titulo class="medium-text trans-text">¡No hay tiempo que perder!</titulo>
                </div>
            </li>
        </ul>
    </div>
    <div class="black">
        <div class="row">
            <div class="col s12 m6 l4">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <asset:image class="activator" src="catplay.jpg"/>
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">Mascotas<i class="material-icons right">more_vert</i></span>
                        <p><a href="${createLink(controller: 'person' , action:'mypets')}">Visitar Mascotas</a></p>
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
                        <p><a href="${createLink(controller: 'person' , action:'myevents')}">Visitar Eventos</a></p>
                    </div>
                    <div class="card-reveal petwiz-grey">
                        <span class="card-title  petwiz-blue-text">Eventos<i class="material-icons right">close</i></span>
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
                        <p><a href="${createLink(controller: 'index' , action:'PetWizTeam')}">Contactanos</a></p>
                    </div>
                    <div class="card-reveal petwiz-grey">
                        <span class="card-title grey-text text-darken-4">Contacto<i class="material-icons right">close</i></span>
                        <p class="petwiz-blue-text">Mas preguntas que respuestas?, Tranquilo comunicate con nosotros y resolveremos tus dudas, y  sino pues ya haremos algo</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

</body>

<script type = "text/javascript">
    var _url = '${createLink(controller: 'index' , action:'logout')}?';
</script>
</html>