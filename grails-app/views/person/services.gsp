<!DOCTYPE html>
<html>
<head>
    <title>services</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="layout" content="main"/>

    <style type="text/css">
    html, body { height:100%; width:100%;}
    </style>
</head>
<body onload="initMap()">

<script type = "text/javascript">
    var _url = '${createLink(controller: 'index' , action:'logout')}?';
</script>

<main>
    <div class="container">
        <div class="row">
            <div class="col s12 l12 m12">
                <ul class="tabs ">
                    <li class="tab col s3"><a class="active" href="#test1" onclick="deleteMarkers();MarkVet();"><span class="font-teal hover-light"><i class="material-icons">local_pharmacy</i>Veterinarias</span></a></li>
                    <li class="tab col s3"><a href="#test2" onclick="deleteMarkers();MarkGuar();"><span class="font-teal hover-light"><i class="material-icons">pets</i>Guarderias</span></a></li>
                    <li class="tab col s3"><a href="#test3" onclick="deleteMarkers();MarkCuid();"><span class="font-teal hover-light"><i class="material-icons">face</i>Cuidadores</span></a></li>
                    <li class="tab col s3"><a href="#test4" onclick="deleteMarkers();MarkAseo();"><span class="font-teal hover-light"><i class="material-icons">spa</i>Aseo</span></a></li>
                    <li class="tab col s3"><a href="#test5" onclick="deleteMarkers();MarkTrai();"><span class="font-teal hover-light"><i class="material-icons">fitness_center</i>Training</span></a></li>
                    <li class="tab col s3"><a href="#test6"onclick="deleteMarkers();MarkHosp();"><span class="font-teal hover-light"><i class="material-icons">local_hospital</i>Hospitales</span></a></li>
                </ul>
            </div>
            <div id="test1" class="col s12">
                <ul>
                    <li><div class = "btn svc-btn" onclick="VetUnal();" ondblclick="clearMarkers();">Veterinaria Unal</div></li>
                    <li><div class = "btn svc-btn" onclick="VetAF();">Amigo Fiel</div></li>
                    <li><a href="#" onclick="showMarkers();">Mostrar Todas las veterinarias</a></li>
                    <li><a href="#"onclick="clearMarkers();">Ocultar</a></li>
                </ul>
            </div>
            <div id="test2" class="col s12">
                <ul>
                    <li><div class = "btn svc-btn" onclick="GuarAH();">Animals Home</div></li>
                    <li><div class = "btn svc-btn" onclick="GuarGC();">ABC Guarderia</div></li>
                    <li><a href="#" onclick="showMarkers();">Mostrar Todas las guarderias</a></li>
                    <li><a href="#" onclick="clearMarkers();">Ocultar</a></li>
                </ul>
            </div>
            <div id="test3" class="col s12">
                <ul>
                    <li><div class = "btn svc-btn" onclick="CuidPH();">Pet's Home</div></li>
                    <li><div class = "btn svc-btn" onclick="CuidPP();">Perros Pilos</div></li>
                    <li><a href="#" onclick="showMarkers();">Mostrar Todas los cuidadores</a></li>
                    <li><a href="#" onclick="clearMarkers();">Ocultar</a></li>
                </ul>
            </div>
            <div id="test4" class="col s12">
                <ul>
                    <li><div class = "btn svc-btn" onclick="AseoAS();">Animal's</div></li>
                    <li><div class = "btn svc-btn" onclick="AseoLL();">Lola Lemont</div></li>
                    <li><a href="#" onclick="showMarkers();">Mostrar Todos los Spa's</a></li>
                    <li><a href="#" onclick="clearMarkers();">Ocultar</a></li>
                </ul>
            </div>
            <div id="test5" class="col s12">
                <ul>
                    <li><div class = "btn svc-btn" onclick="TraiCA();">Colombia Appa</div></li>
                    <li><div class = "btn svc-btn" onclick="TraiRA();">RanchoKan</div></li>
                    <li><a href="#" onclick="showMarkers();">Mostrar Todos Los Entrenadores</a></li>
                    <li><a href="#" onclick="clearMarkers();">Ocultar</a></li>

                </ul>
            </div>
            <div id="test6" class="col s12">
                <ul>
                    <li><div class = "btn svc-btn" onclick="HospUV();">Animals Health</div></li>
                    <li><div class = "btn svc-btn" onclick="HospPT();">Pointer</div></li>
                    <li><a href="#" onclick="showMarkers();">Mostrar Todos Los Hospitales</a></li>
                    <li><a href="#" onclick="clearMarkers();">Ocultar</a></li>

                </ul>
            </div>
        </div>
    </div>
</main>

<div id="map" class="padding-google" style="width:80%;height: 900px"></div>
<asset:javascript src="maps.js"/>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDgobfAe2NzWl-0G2O_khAWLVJ9bCOi4mE&callback=initMap">
</script>
<div>Icons made by <a href="http://www.flaticon.com/authors/scott-de-jonge" title="Scott de Jonge">Scott de Jonge</a> from <a href="http://www.flaticon.com" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>
</body>
</html>