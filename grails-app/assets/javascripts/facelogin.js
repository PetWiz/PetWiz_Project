// Load the SDK asynchronously
(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));


$(function() {

    //var app_id = '1522101791432385';
    var app_id = '1525277721114792'; //local test

    var scopes = 'email, user_friends';

    var btn_login = '<a href="#" id="login" class="btn face-log"></a>';
    var btn_login2 = "<a href='#' id='loginlat'><img src='https://s3.amazonaws.com/codecademy-content/projects/make-a-website/lesson-4/facebook.svg' width=20px height='auto' style='padding-top: 15px; margin-left: 55px'/></a>";

    var div_session = "<div id='facebook-session'>"+
        "<a href='#' id='logout' class='btn face-log'>Salir</a>"+
        "</div>";

    window.fbAsyncInit = function() {

        FB.init({
            appId      : app_id,
            status     : true,
            cookie     : true,
            xfbml      : true,
            version    : 'v2.1'
        });


        FB.getLoginStatus(function(response) {
            statusChangeCallback(response, function() {});
        });
    };

    var statusChangeCallback = function(response, callback) {
        console.log('statusChangeCallback');
        console.log(response);

        if (response.status === 'connected') {
            console.log(response.authResponse.accessToken);
            getFacebookData();
            FB.api('/me?fields=id,name,email,birthday,hometown,friends', function(response) {
                console.log(JSON.stringify(response));
                var id = response.id;
                var name = response.name;
                var email = response.email;
                var birthday = response.birthday;
                var hometown = response.hometown;
                var friends = response.friends;
                //Register or login user

            });
            FB.api('/me/friends?', function(response) {
                var result_holder = document.getElementById('result_friends');
                var friend_data = response.data;

                var results = '';
                for (var i = 0; i < friend_data.length; i++) {
                    results += '<div class="chip hoverable"><img src="https://graph.facebook.com/' + friend_data[i].id + '/picture">' + friend_data[i].name + '</div>';

                }

                // and display them at our holder element
                result_holder.innerHTML = '<center>Amigos</center>' + results;
            });
        } else {
            callback(false);
        }
    };

    var checkLoginState = function(callback) {
        FB.getLoginStatus(function(response) {
            callback(response);
        });
    };

    var getFacebookData =  function() {
        FB.api('/me', function(response) {
            $('#login').after(div_session);
            $('#login').remove();
            $('#loginlat').after(div_session);
            $('#loginlat').remove();
            $('#facebook-session p').text(response.name);

            $('#facebook-session img').attr('src','http://graph.facebook.com/'+response.id+'/picture?type=large');
        });
    };

    var facebookLogin = function() {
        checkLoginState(function(data) {
            if (data.status !== 'connected') {
                FB.login(function(response) {
                    if (response.status === 'connected')
                        getFacebookData();
                }, {scope: scopes});
            }
        })
    };

    var facebookLogout = function() {
        checkLoginState(function(data) {
            if (data.status === 'connected') {
                FB.logout(function(response) {
                    $('#facebook-session').before(btn_login);
                    $('#facebook-session').before(btn_login2);
                    $('#facebook-session').remove();
                    window.location.href= _url;

                })
            }
        })

    }



    $(document).on('click', '#login', function(e) {
        e.preventDefault();

        facebookLogin();
    });
    $(document).on('click', '#loginlat', function(e) {
        e.preventDefault();

        facebookLogin();
    });

    $(document).on('click', '#logout', function(e) {
        e.preventDefault();

        if (confirm("¿Está seguro?"))
            facebookLogout();
        else
            return false;
    })

});