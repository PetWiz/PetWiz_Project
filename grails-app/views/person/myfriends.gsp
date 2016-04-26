<html>
<head>
    <title>Perfil</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="layout" content="main"/>
    <asset:javascript src="facelogin.js"/>
</head>

<body>

<main>
    <script type="text/javascript">
        var _url = '${createLink(controller: 'index' , action:'logout')}?';
    </script>

    <div>
        <div class="row">
            <div class="col s4 m4 4">
                <div id="result_friends"></div>
            </div>
        </div>
    </div>

</main>
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
</body>
</html>