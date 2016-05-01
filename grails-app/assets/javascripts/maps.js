var markers = [];
var markersAll = [];
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
        position: lista,
        map: map,
        icon: image
    });

    cluster.addMarker(marker);
    markersAll.push(marker);
}

function addAll() {
    cluster.addMarkers(markersAll);
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

function addService(x,y,ima){
    lista = new google.maps.LatLng(x,y);
    console.log(x,y);
    switch(ima){
        case 'veterinaria':
            typ = 'animals.png';
            break;
        case 'guarderia':
            typ = 'sign.png'
            break;
        case 'cuidadores':
            typ = 'man.png';
            break;
        case 'aseo':
            typ = 'scissors.png';
            break;
        case 'training':
            typ = 'gym.png';
            break;
        case 'hospital':
            typ = 'medical.png';
            break;
        default:
            typ = 'animals.png';
            break;
    }
    var image = {
        url: base + typ,
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };

    add( lista,image );

}