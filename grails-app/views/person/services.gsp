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
                    <li class="tab col s3"><a class="active" href="#test1"><span class="font-teal hover-light"><i class="material-icons">local_pharmacy</i>Veterinarias</span></a></li>
                    <li class="tab col s3"><a href="#test2"><span class="font-teal hover-light"><i class="material-icons">pets</i>Guarderias</span></a></li>
                    <li class="tab col s3"><a href="#test3"><span class="font-teal hover-light"><i class="material-icons">face</i>Cuidadores</span></a></li>
                    <li class="tab col s3"><a href="#test4"><span class="font-teal hover-light"><i class="material-icons">spa</i>Aseo</span></a></li>
                    <li class="tab col s3"><a href="#test5"><span class="font-teal hover-light"><i class="material-icons">fitness_center</i>Training</span></a></li>
                    <li class="tab col s3"><a href="#test6"><span class="font-teal hover-light"><i class="material-icons">local_hospital</i>Hospitales</span></a></li>
                </ul>
            </div>
            <div id="test1" class="col s12">
                <ul>

                </ul>
            </div>
            <div id="test2" class="col s12">
                <ul>

                </ul>
            </div>
            <div id="test3" class="col s12">
                <ul>

                </ul>
            </div>
            <div id="test4" class="col s12">
                <ul>

                </ul>
            </div>
            <div id="test5" class="col s12">
                <ul>

                </ul>
            </div>
            <div id="test6" class="col s12">
                <ul>

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
            zoom: 11,
            scrollwheel: true,
            disableDefaultUI: false,
        };
        map = new google.maps.Map(document.getElementById("map"),mapOptions);

        google.maps.event.addDomListener(window, "resize", function() {
            var center = map.getCenter();
            google.maps.event.trigger(map, "resize");
            map.setCenter(center);
        });
    }

    function ace()
    {
        lista = new google.maps.LatLng(4.6219903005919445, -74.13864778478413)
        addMarker( lista )
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
