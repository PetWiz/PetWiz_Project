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


function VetUnal() { lista = new google.maps.LatLng(4.6327687,-74.0828724); addMarker( lista );
}
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

function CuidPH() { lista = new google.maps.LatLng(4.7499265,-74.1491903); addMarker( lista );}
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


var labels = 'Ace';
function addMarker(location) {
    var marker = new google.maps.Marker({
        position: location,
        label: labels,
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