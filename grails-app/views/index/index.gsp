<%@ page import="grails.converters.JSON" %>
<!DOCTYPE html>
<html xmlns:fb="">
<head>
    <title>index</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="layout" content="login"/>
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <asset:javascript src="facelogin.js"/>

</head>
<body>
<div id="fb-root"></div>
<script>
/*
    window.fbAsyncInit = function() {

        FB.init({
            appId      : '1525277721114792',
            status     : true,
            cookie     : true,
            xfbml      : true,
            version    : 'v2.1'
        });


        FB.getLoginStatus(function(response) {
            statusChangeCallback(response, function() {});
        });
    };

    function statusChangeCallback(response) {
        console.log('statusChangeCallback');
        console.log(response);
        // The response object is returned with a status field that lets the
        // app know the current login status of the person.
        // Full docs on the response object can be found in the documentation
        // for FB.getLoginStatus().
        if (response.status === 'connected') {
            // Logged into your app and Facebook.
            console.log(response.authResponse.accessToken);

            FB.api('/me?fields=id,name,email,birthday,hometown,friends', function(response) {
                console.log(JSON.stringify(response));
                var id = response.id;
                var name = response.name;
                var email = response.email;
                var birthday = response.birthday;
                var hometown = response.hometown;
                var user_friends = response.friends;
                //Register or login user
                window.location.href= '${createLink(controller: 'index' , action:'register_login')}?params='
                        + [id,name,email,birthday,hometown,user_friends];
            });



        } else if (response.status === 'not_authorized') {
            // The person is logged into Facebook, but not your app.
            document.getElementById('status').innerHTML = 'Please log ' +
                    'into this app.';
        } else {
            // The person is not logged into Facebook, so we're not sure if
            // they are logged into this app or not.
            document.getElementById('status').innerHTML = 'Please log ' +
                    'into Facebook.';
        }
    }
*/
        (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.6";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    function getData(id, name, email, birthday, hometown, user_friends){
        $('#facebook-session').find('p').text(name);
        $('#facebook-session').find('img').attr('src','http://graph.facebook.com/'+id+'/picture?type=large');
        window.location.href= '${createLink(controller: 'index' , action:'register_login')}?params='
                + [id,name,email,birthday,hometown,user_friends];

    }

    </script>


<main>
    <div class="parallax-container">
        <div class="parallax"><asset:image src="login11.jpg"/></div>
        <br><br><br><br><br><br>
        <div class="container center">
            <h1 class="petwiz-font big-text font-white petwiz-opacity"> PetWiz </h1>
            <div class="row">
                <h5 class="header font-teal petwiz-font medium-text italic trans-hover petwiz-opacity">Lo mejor para ti y tus mascotas</h5>
            </div>
            <div class="row">
                <!--<div class="fb-login-button",  data-max-rows="1" onlogin="checkLoginState();" data-size="xlarge" data-show-faces="false" data-auto-logout-link="true"></div>-->
                <div class="fb-login-button" data-max-rows="5" data-size="xlarge" data-show-faces="false" data-auto-logout-link="true", scope="public_profile,email,user_birthday,user_hometown,user_friends", onlogin="checkLoginState();">Entra desde Facebok</div><!--,user_birthday,user_hometown-->
            </div>

        </div>
    </div>
</main>

</body>
</html>

