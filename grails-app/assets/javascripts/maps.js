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

function addService(x,y){
    lista = new google.maps.LatLng(x,y);
    console.log(x,y);
    // console.log(img);
    /* var type = '';
     switch(img){
     case 'veterinaria':
     type = 'animals.png';
     break;
     case 'guarderia':
     type = 'sign.png'
     break;
     case 'cuidadores':
     type = 'man.png';
     break;
     case 'aseo':
     type = 'scissors.png';
     break;
     case 'training':
     type = 'gym.png';
     break;
     case 'hospital':
     type = 'medical.png';
     break;
     }*/
    var image = {
        url: base + 'animals.png',
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(15, 32),
        scaledSize: new google.maps.Size(31, 31)
    };

    add( lista,image );

}