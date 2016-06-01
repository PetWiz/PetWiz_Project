/**
 * Created by Andres on 17/05/2016.
 */
var geocoder;
var map;
var latIng;
var markers = [];
var addresses;

function initialize() {
    geocoder = new google.maps.Geocoder();
    latlng = new google.maps.LatLng(4.6513635, -74.1091934);
    var mapOptions = {
        zoom: 11,
        center: latlng,
        scrollwheel: true,
        disableDefaultUI: false
    }
    map = new google.maps.Map(document.getElementById("map-responsive"), mapOptions);
    google.maps.event.addDomListener(window, "resize", function() {
        var center = map.getCenter();
        google.maps.event.trigger(map, "resize");
        map.setCenter(center);
    });
    addresses = getAddresses();
    addresses.forEach(function(entry) {
        console.log(entry);
        codeAddress(entry, 0);
    });
}

function codeAddress(address, i) {
    //var address = document.getElementById("address").value;
    geocoder.geocode( { 'address': address+" bogota"}, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            if(i!=0) {
                map.setCenter(results[0].geometry.location);
                map.setZoom(17);
            }
            var marker = new google.maps.Marker({
                map: map,
                position: results[0].geometry.location
            });
            markers.push(marker);
        } else {
            alert("Geocode was not successful for the following reason: " + status);
        }
    });
}
function reset(){
    addresses.forEach(function(entry) {
        console.log(entry);
        codeAddress(entry, 0);
    });
    map.setZoom(11);
    map.setCenter(latIng);
}
function deleteMarkers() {
    clearMarkers();
    markers = [];
}
function clearMarkers() {
    setMapOnAll(null);
}
function setMapOnAll(map) {
    for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(map);
    }
}
