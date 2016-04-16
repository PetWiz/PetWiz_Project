var markers = [];
var map;
var base='https://raw.githubusercontent.com/PetWiz/PetWiz_Project/petwizMaps/grails-app/assets/images/icons/';
function initMap()
{
    var mapOptions = {
        center: new google.maps.LatLng(4.6561754,-74.0552325),
        zoom: 10,
        scrollwheel: true,
        disableDefaultUI: false
    };
    map = new google.maps.Map(document.getElementById("map"),mapOptions);
    google.maps.event.addDomListener(window, "resize", function() {
        var center = map.getCenter();
        google.maps.event.trigger(map, "resize");
        map.setCenter(center);
    });

}

function addMarker(location,image) {

    var marker = new google.maps.Marker({
        position:location,
        map: map,
        icon: image
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


function showAll(){
    MarkAseo();
    MarkCuid();
    MarkHosp();
    MarkTrai();
    MarkVet();
    MarkGuar();
    showMarkers();
}

/*------Veterinarias----*/
function veterias(){
    deleteMarkers();
    MarkVet();
    showMarkers();
}

function VetUnal() {
    lista = new google.maps.LatLng(4.6327687,-74.0828724);
    var image2 = {
        url: base + 'black.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(30, 30)
    };
    var image = {
        url: base + 'animals.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };
    //addMarker( lista,image2 );
    addMarker( lista,image );

}
function VetAF() {
    lista = new google.maps.LatLng( 4.6287051,-74.088666);
    var image2 = {
        url: base + 'black.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(30, 30)
    };
    var image = {
        url: base + 'animals.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31,31)
    };
    //addMarker( lista,image2 );
    addMarker( lista,image );

}

function MarkVet(){
    VetUnal(); VetAF();
    clearMarkers();
}

/*--------Guarderias-------------*/
function guarderias(){
    deleteMarkers();
    MarkGuar();
    showMarkers();
}
function GuarAH() { lista = new google.maps.LatLng( 4.6288111,-74.1149309);
    var image2 = {
        url: base + 'black.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(30, 30)
    };
    var image = {
        url: base + 'sign.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };
    //addMarker( lista,image2 );
    addMarker( lista,image ); }

function GuarGC() { lista = new google.maps.LatLng(4.645365,-74.095275);    var image2 = {
    url: base + 'black.png',
    size: new google.maps.Size(71, 71),
    origin: new google.maps.Point(0, 0),
    anchor: new google.maps.Point(17, 34),
    scaledSize: new google.maps.Size(30, 30)
};
    var image = {
        url: base + 'sign.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };
    //addMarker( lista,image2 );
    addMarker( lista,image ); }

function MarkGuar(){
    GuarAH(); GuarGC();
    clearMarkers();
}

/*--------Cuidadores-------------*/
function cuidadores(){
    deleteMarkers();
    MarkCuid();
    showMarkers();
}

function CuidPH() {
    lista = new google.maps.LatLng(4.7499265,-74.1491903);
    var image2 = {
        url: base + 'black.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(30, 30)
    };
    var image = {
        url: base + 'man.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };
    //addMarker( lista,image2 );
    addMarker( lista,image );
}
function CuidPP() {
    lista = new google.maps.LatLng(4.8118385,-74.1387034);
    var image2 = {
        url: base + 'black.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(30, 30)
    };
    var image = {
        url: base + 'man.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31,31)
    };
    //addMarker( lista,image2 );
    addMarker( lista,image );
}

function MarkCuid(){
    CuidPH(); CuidPP();
    clearMarkers();
}
/*--------Aseo-------------*/
function Aseo(){
    deleteMarkers();
    MarkAseo();
    showMarkers();
}


function AseoAS() { lista = new google.maps.LatLng(4.7275715,-74.0643102);
    var image2 = {
        url: base + 'black.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(30, 30)
    };
    var image = {
        url: base + 'scissors.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31,31)
    };
    //addMarker( lista,image2 );
    addMarker( lista,image );
}
function AseoLL() { lista = new google.maps.LatLng(4.7029943,-74.0524164);
    var image2 = {
    url: base + 'black.png',
    size: new google.maps.Size(71, 71),
    origin: new google.maps.Point(0, 0),
    anchor: new google.maps.Point(17, 34),
    scaledSize: new google.maps.Size(30, 30)
};
    var image = {
        url: base + 'scissors.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31,31 )
    };
    //addMarker( lista,image2 );
    addMarker( lista,image );
}

function MarkAseo(){
    AseoAS(); AseoLL();
    clearMarkers();
}
/*--------Training-------------*/
function Training(){
    deleteMarkers();
    MarkTrai();
    showMarkers();
}

function TraiRA() { lista = new google.maps.LatLng(4.8085868,-74.1104617);
    var image2 = {
    url: base + 'black.png',
    size: new google.maps.Size(71, 71),
    origin: new google.maps.Point(0, 0),
    anchor: new google.maps.Point(17, 34),
    scaledSize: new google.maps.Size(30, 30)
};
    var image = {
        url: base + 'gym.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };
    //addMarker( lista,image2 );
    addMarker( lista,image );
}
function TraiCA() { lista = new google.maps.LatLng(4.7700123,-74.0756145);
    var image2 = {
    url: base + 'black.png',
    size: new google.maps.Size(71, 71),
    origin: new google.maps.Point(0, 0),
    anchor: new google.maps.Point(17, 34),
    scaledSize: new google.maps.Size(30, 30)
};
    var image = {
        url: base + 'gym.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };
    //addMarker( lista,image2 );
    addMarker( lista,image );
}

function MarkTrai(){
    TraiRA();TraiCA();
    clearMarkers();
}

/*--------Hospitales-------------*/
function Hospitales(){
    deleteMarkers();
    MarkHosp();
    showMarkers();
}

function HospUV() {
    lista = new google.maps.LatLng(4.6940758,-74.0691972);
    var image2 = {
        url: base + 'square.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(30, 30)
    };
    var image = {
        url: base + 'medical.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };
    //addMarker( lista,image2 );
    addMarker( lista,image );

}
function HospPT() {
    lista = new google.maps.LatLng(4.7079361,-74.0683807);
    var image2 = {
    url: base + 'square.png',
    size: new google.maps.Size(71, 71),
    origin: new google.maps.Point(0, 0),
    anchor: new google.maps.Point(17, 34),
    scaledSize: new google.maps.Size(30, 30)
    };
    var image = {
        url: base + 'medical.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };
    //addMarker( lista,image2 );
    addMarker( lista,image );}

function MarkHosp(){
    HospUV();HospPT();
    clearMarkers();
}
