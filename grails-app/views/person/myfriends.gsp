<html>
<head>
    <title>Petwiz: Mis amigos</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="layout" content="main"/>
    <asset:javascript src="facelogin.js"/>
    <asset:javascript src="FPets.js"/>
</head>

<body>

<main>
    <script type="text/javascript">
        var _url = '${createLink(controller: 'index' , action:'logout')}?';
        var _url2 = '${createLink(controller: 'person' , action:'petsFriends')}?';
    </script>

    <div>
        <div class="row">
            <div class="col s12 m8 l4">
                <div id="result_friends"></div>
            </div>
            <div class="col s12 m8 l4">
                <div id="ee"></div>
            </div>
        </div>
    </div>

</main>
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
</body>
</html>