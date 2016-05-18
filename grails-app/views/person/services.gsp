<!DOCTYPE html>
<html>
<head>
    <title>Petwiz: Servicios</title>
    <!--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>-->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="layout" content="main"/>
    <style type="text/css">
    <asset:javascript src="facelogout.js"/>
    html, body { height:100%; width:100%;}
    </style>
</head>

<body onload="mas();">

<script type = "text/javascript">
    var _url = '${createLink(controller: 'index' , action:'logout')}?';
</script>

<main>
    <div class="container">
        <div class="row">
            <div class="col s12 l12 m12">
                <ul class="tabs ">
                    <li class="tab col s3"><a class="active" href="#test1"><span class="font-teal hover-light"><i class="material-icons">local_pharmacy</i>Veterinarias</span></a></li>
                    <li class="tab col s3"><a href="#test2"><span class="font-teal hover-light"><i class="material-icons">pets</i>Guarderias</span></a></li>
                    <li class="tab col s3"><a href="#test3"><span class="font-teal hover-light"><i class="material-icons">face</i>Cuidadores</span></a></li>
                    <li class="tab col s3"><a href="#test4"><span class="font-teal hover-light"><i class="material-icons">spa</i>Aseo</span></a></li>
                    <li class="tab col s3"><a href="#test5"><span class="font-teal hover-light"><i class="material-icons">fitness_center</i>Training</span></a></li>
                    <li class="tab col s3"><a href="#test6"><span class="font-teal hover-light"><i class="material-icons">local_hospital</i>Hospitales</span></a></li>
                </ul>
            </div>
        </div>
    </div>

    <div id="test1" class="row">
        <div  class="col s12 m12 l12">
            <g:each var="item" in="${petwiz_project.Service?.findAllByServiceType("veterinaria")}">
                <petwiz:showServ service="${item}" edit="${false}" />
            </g:each>
        </div>
       <!-- <ul class="col s12 m12 l12">
            <li><a href="#" onclick="addAll();">Mostrar Los Servicios</a></li>
            <li><a href="#" onclick="deleteMarkers();">Ocultar</a></li>
        </ul>-->
    </div>
    <div id="test2" class="row">
        <!--
        <ul class="col s12 m12 l12">
            <li><a href="#" onclick="deleteMarkers();">Ocultar</a></li>
        </ul>-->
        <div class="col s12 m12 l12">
            <g:each var="item" in="${petwiz_project.Service?.findAllByServiceType("guarderia")}">
                <petwiz:showServ service="${item}" edit="${false}"/>
            </g:each>
        </div>
    </div>
    <div id="test3" class="row">
        <!--
        <ul class="col s12 m12 l12">
            <li><a href="#" onclick="deleteMarkers();">Ocultar</a></li>
        </ul>-->
        <div class="col s12 m12 l12">
            <g:each var="item" in="${petwiz_project.Service?.findAllByServiceType("cuidadores")}">
                <petwiz:showServ service="${item}" edit="${false}"/>
            </g:each>
        </div>
    </div>
    <div id="test4" class="row">
        <!--<ul class="col s12 m12 l12">
            <li><a href="#" onclick="deleteMarkers();">Ocultar</a></li>
        </ul>-->
        <div class="col s12 m12 l12">
            <g:each var="item" in="${petwiz_project.Service?.findAllByServiceType("aseo")}">
                <petwiz:showServ service="${item}" edit="${false}"/>
            </g:each>
        </div>
    </div>

    <div id="test5" class="row">
        <!--<ul class="col s12 m12 l12">
            <li><a href="#" onclick="deleteMarkers();">Ocultar</a></li>
        </ul>-->
        <div class="col s12 m12 l12">
            <g:each var="item" in="${petwiz_project.Service?.findAllByServiceType("training")}">
                <petwiz:showServ service="${item}" edit="${false}"/>
            </g:each>
        </div>
    </div>
    <div id="test6" class="row">
        <!--<ul class="col s12 m12 l12">
            <li><a href="#" onclick="Hospitales();">Mostrar Todos Los Hospitales</a></li>
            <li><a href="#" onclick="showAll();">Mostrar Los Servicios</a></li>
            <li><a href="#" onclick="deleteMarkers();">Ocultar</a></li>
        </ul>-->
        <div class="col s12 m12 l12">
            <g:each var="item" in="${petwiz_project.Service?.findAllByServiceType("hospital")}">
                <petwiz:showServ service="${item}" edit="${false}"/>
            </g:each>
        </div>
    </div>
    <div id="map" class="padding-google"></div>
    <div>Icons made by <a href="http://www.flaticon.com/authors/scott-de-jonge" title="Scott de Jonge">Scott de Jonge</a> from <a href="http://www.flaticon.com" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>
</main>


<asset:javascript src="maps.js"/>
<asset:javascript src="cluster.js"/>
<asset:javascript src="ranking.js"/>
<asset:stylesheet src="ranking.css"/>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDgobfAe2NzWl-0G2O_khAWLVJ9bCOi4mE&callback=initMap">
</script>


</body>
</html>