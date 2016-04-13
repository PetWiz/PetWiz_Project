<%@ page import="grails.converters.JSON" %>
<!DOCTYPE html>
<html xmlns:fb="">
<head>
    <title>index</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="layout" content="login"/>

</head>
<body>

<script>
    // This is called with the results from from FB.getLoginStatus().
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

            FB.api('/me?fields=id,name,email,birthday,hometown', function(response) {
                console.log(JSON.stringify(response));
                var id = response.id;
                var name = response.name;
                var email = response.email;
                var birthday = response.birthday;
                var hometown = response.hometown;
            //Register or login user
                window.location.href= '${createLink(controller: 'index' , action:'register_login')}?params='
                        + [id,name,email,birthday,hometown];
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

    // This function is called when someone finishes with the Login
    // Button.  See the onlogin handler attached to it in the sample
    // code below.
    function checkLoginState() {
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
    }

    window.fbAsyncInit = function() {
        FB.init({
            //appId      : '1525277721114792', //Local Test
            appId       : '1522101791432385',
            cookie     : true,  // enable cookies to allow the server to access
                                // the session
            xfbml      : true,  // parse social plugins on this page
            version    : 'v2.5' // use graph api version 2.5
        });

        // Now that we've initialized the JavaScript SDK, we call
        // FB.getLoginStatus().  This function gets the state of the
        // person visiting this page and can return one of three states to
        // the callback you provide.  They can be:
        //
        // 1. Logged into your app ('connected')
        // 2. Logged into Facebook, but not your app ('not_authorized')
        // 3. Not logged into Facebook and can't tell if they are logged into
        //    your app or not.
        //
        // These three cases are handled in the callback function.

        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });

    };


    // Load the SDK asynchronously
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

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
                <div class="fb-login-button" data-max-rows="5" data-size="xlarge" data-show-faces="false" data-auto-logout-link="true", scope="public_profile,email,user_birthday,user_hometown", onlogin="checkLoginState()">Entra desde Facebok</div><!--,user_birthday,user_hometown-->
            </div>

        </div>
    </div>
</main>

</body>
</html>

