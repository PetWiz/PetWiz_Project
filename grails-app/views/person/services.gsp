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
<body>
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

<script type="text/javascript">
    var markers = [];
    var map;
    function initMap()
    {
        var mapOptions = {
            center: new google.maps.LatLng(4.6561754,-74.0552325),
            zoom: 10,
            scrollwheel: true,
            disableDefaultUI: false,
        };
        map = new google.maps.Map(document.getElementById("map"),mapOptions);
        google.maps.event.addDomListener(window, "resize", function() {
            var center = map.getCenter();
            google.maps.event.trigger(map, "resize");
            map.setCenter(center);
        });
        MarkVet();
    }


    function VetUnal() { lista = new google.maps.LatLng(4.6327687,-74.0828724); addMarker( lista ); }
    function VetAF() { lista = new google.maps.LatLng( 4.6287051,-74.088666); addMarker( lista );  }

    function MarkVet(){
        VetUnal(); VetAF();
        clearMarkers();
    }

    function GuarAH() { lista = new google.maps.LatLng( 4.6288111,-74.1149309); addMarker( lista ); }
    function GuarGC() { lista = new google.maps.LatLng(4.645365,-74.095275); addMarker(lista); }

    function MarkGuar(){
        GuarAH(); GuarGC();
        clearMarkers();
    }

    function CuidPH() { lista = new google.maps.LatLng(4.7499265,-74.1491903); addMarker( lista ); }
    function CuidPP() { lista = new google.maps.LatLng(4.8118385,-74.1387034); addMarker(lista); }

    function MarkCuid(){
        CuidPH(); CuidPP();
        clearMarkers();
    }

    function AseoAS() { lista = new google.maps.LatLng(4.7275715,-74.0643102); addMarker( lista ); }
    function AseoLL() { lista = new google.maps.LatLng(4.7029943,-74.0524164); addMarker(lista); }

    function MarkAseo(){
        AseoAS(); AseoLL();
        clearMarkers();
    }

    function TraiRA() { lista = new google.maps.LatLng(4.8085868,-74.1104617); addMarker( lista ); }
    function TraiCA() { lista = new google.maps.LatLng(4.7700123,-74.0756145); addMarker(lista); }

    function MarkTrai(){
        TraiRA();TraiCA();
        clearMarkers();
    }

    function HospUV() { lista = new google.maps.LatLng(4.6940758,-74.0691972); addMarker( lista ); }
    function HospPT() { lista = new google.maps.LatLng(4.7079361,-74.0683807); addMarker(lista); }

    function MarkHosp(){
        HospUV();HospPT();
        clearMarkers();
    }

    function addMarker(location) {
        var marker = new google.maps.Marker({
            position: location,
            map: map
        });
        markers.push(marker);
    }
    // Sets the map on all markers in the array.
    function setMapOnAll(map) {
        for (var i = 0; i < markers.length; i++) {
            markers[i].setMap(map);
        }
    }
    // Removes the markers from the map, but keeps them in the array.
    function clearMarkers() {
        setMapOnAll(null);
    }
    // Shows any markers currently in the array.
    function showMarkers() {
        setMapOnAll(map);
    }
    // Deletes all markers in the array by removing references to them.
    function deleteMarkers() {
        clearMarkers();
        markers = [];
    }
</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDgobfAe2NzWl-0G2O_khAWLVJ9bCOi4mE&callback=initMap">
</script>

</body>
</html>