
var markers = [];
var map;
var base='https://raw.githubusercontent.com/PetWiz/PetWiz_Project/petwizMaps/grails-app/assets/images/icons/';
var cluster;
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
    cluster = new MarkerClusterer(map,markers);
}

function add(lista,image) {
    var marker = new google.maps.Marker({
        position:lista,
        map: map,
        icon: image
    });
    cluster.addMarker(marker);
}


function deleteMarkers() {
    cluster.clearMarkers();
}
function showAll(){
    deleteMarkers();
    MarkVet();
    MarkGuar();
    MarkCuid();
    MarkHosp();
    MarkTrai();
    MarkAseo();
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
    var image = {
        url: base + 'animals.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };

    add( lista,image );

}
function VetAF() {
    lista = new google.maps.LatLng( 4.6287051,-74.088666);
    var image = {
        url: base + 'animals.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31,31)
    };
    add( lista,image );

}

function MarkVet(){
    VetUnal(); VetAF();
}

/*--------Guarderias-------------*/
function guarderias(){
    deleteMarkers();
    MarkGuar();
    showMarkers();
}
function GuarAH() { lista = new google.maps.LatLng( 4.6288111,-74.1149309);
    var image = {
        url: base + 'sign.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };
    add( lista,image ); }

function GuarGC() {
    lista = new google.maps.LatLng(4.645365,-74.095275);

    var image = {
        url: base + 'sign.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };
    add( lista,image ); }

function MarkGuar(){
    GuarAH(); GuarGC();
}


/*--------Cuidadores-------------*/
function cuidadores(){
    deleteMarkers();
    MarkCuid();
    showMarkers();
}

function CuidPH() {
    lista = new google.maps.LatLng(4.7499265,-74.1491903);
    var image = {
        url: base + 'man.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };
    add( lista,image );
}
function CuidPP() {
    lista = new google.maps.LatLng(4.8118385,-74.1387034);
    var image = {
        url: base + 'man.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31,31)
    };
    add( lista,image );
}

function MarkCuid(){
    CuidPH(); CuidPP();
}


/*--------Aseo-------------*/
function Aseo(){
    deleteMarkers();
    MarkAseo();
    showMarkers();
}


function AseoAS() {
    lista = new google.maps.LatLng(4.7275715,-74.0643102);

    var image = {
        url: base + 'scissors.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31,31)
    };
    add( lista,image );
}
function AseoLL() { lista = new google.maps.LatLng(4.7029943,-74.0524164);
    var image = {
        url: base + 'scissors.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31,31 )
    };
    add( lista,image );
}

function MarkAseo(){
    AseoAS(); AseoLL();
}
/*--------Training-------------*/
function Training(){
    deleteMarkers();
    MarkTrai();
    showMarkers();
}

function TraiRA() { lista = new google.maps.LatLng(4.8085868,-74.1104617);
    var image = {
        url: base + 'gym.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };
    add( lista,image );
}
function TraiCA() { lista = new google.maps.LatLng(4.7700123,-74.0756145);
    var image = {
        url: base + 'gym.png    ',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };

    add( lista,image );
}

function MarkTrai(){
    TraiRA();TraiCA();
}

/*--------Hospitales-------------*/
function Hospitales(){
    deleteMarkers();
    MarkHosp();
    showMarkers();
}

function HospUV() {
    lista = new google.maps.LatLng(4.6940758,-74.0691972);
    var image = {
        url: base + 'medical.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };
    add( lista,image );

}
function HospPT() {
    lista = new google.maps.LatLng(4.7079361,-74.0683807);

    var image = {
        url: base + 'medical.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };
    add( lista,image );}

function MarkHosp(){
    HospUV();HospPT();
}