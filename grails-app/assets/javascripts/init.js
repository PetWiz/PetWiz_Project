(function($){
    $(function(){
        $('.dropdown-button').dropdown({belowOrigin: true});
        $(".button-collapse").sideNav();
        $('.collapsible').collapsible();
        $('.parallax').parallax();
        $('.slider').slider({full_width: true});
        $('.carousel').carousel({dist: -50});
        $('ul.tabs').tabs();
        $('.modal-trigger').leanModal();
        $(document).ready(function() {
            $('select').material_select();
        });
        $('.datepicker').pickadate({
            selectMonths: true, // Creates a dropdown to control month
            selectYears: 15 // Creates a dropdown of 15 years to control year
        });
    }); // end of document ready
})(jQuery); // end of jQuery name space

// Load the SDK asynchronously
(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));


$(function() {

    //var app_id = '988173204609860';
    var app_id = '1522101791432385'; //local test

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
        console.log(response);

        if (response.status === 'connected') {
            getFacebookData();
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


