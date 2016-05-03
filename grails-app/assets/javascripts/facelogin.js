//var app_id = '1525277721114792'; //local test
//var app_id = '1522101791432385';
window.fbAsyncInit = function () {

    FB.init({
        appId: '1522101791432385',
        //appId: '1525265244449373',
        status: true,
        cookie: true    ,
        xfbml: true,
        version: 'v2.1'
    });

    FB.getLoginStatus(function (response) {
        statusChangeCallback(response, function () {
        });
    });
};
    function statusChangeCallback(response) {
        console.log('statusChangeCallback');
        console.log(response);
        // The response object is returned with a status field that lets the
        // app know the current login status of the person.
        // Full docs on the response object can be found in the documentation
        // for FB.getLoginStatus().
        console.log(FB);
        if (response.status === 'connected') {
            // Logged into your app and Facebook.
            console.log(response.authResponse.accessToken);
            console.log(FB);
            FB.api('/me?fields=id,name,email,birthday,hometown,friends', function (response) {
                console.log(JSON.stringify(response));
                var id = response.id;
                var name = response.name;
                var email = response.email;
                var birthday = response.birthday;
                var hometown = response.hometown;
                var user_friends = response.friends;
                $('#facebook-session').find('p').text(response.name);
                $('#facebook-session').find('img').attr('src','http://graph.facebook.com/'+response.id+'/picture?type=large');
                getData(id, name, email, birthday, hometown, user_friends);
                console.log("ready");



                //Register or login user
                /*        window.location.href= '${createLink(controller: 'index' , action:'register_login')}?params='
                 + [id,name,email,birthday,hometown,user_friends];*/
                console.log("exito")
            });
            FB.api('/me/friends?', function(response) {
                var result_holder = document.getElementById('result_friends');
                var friend_data = response.data;

                var results = '';
                for (var i = 0; i < friend_data.length; i++) {
                    results += '<li alt="" class="collection-item avatar svc-btn2 "><img class="circle" src="https://graph.facebook.com/' + friend_data[i].id + '/picture" ><span class="title black-text responsive">' +friend_data[i].name +'</span> <i class=" material-icons secondary-content ">perm_identity</i></li>';

                }
                results += '</ul></div>'
                // and display them at our holde    r element
                result_holder.innerHTML = '<ul class="font-white svc-btn"><h5 class="center">Amigos</h5><ul class="collection "> ' + results ;
            });


        }

    }

    function checkLoginState() {
        FB.getLoginStatus(function (response) {
            statusChangeCallback(response);
        });
    }


    /*


     });
     FB.api('/me/friends?', function(response) {
     var result_holder = document.getElementById('result_friends');
     var friend_data = response.data;

     var results = '';
     for (var i = 0; i < friend_data.length; i++) {
     results += '<li alt="" class="collection-item avatar svc-btn2 "><img class="circle" src="https://graph.facebook.com/' + friend_data[i].id + '/picture" ><span class="title black-text responsive">' +friend_data[i].name +'</span> <i class=" material-icons secondary-content ">perm_identity</i></li>';

     }
     results += '</ul></div>'
     // and display them at our holde    r element
     result_holder.innerHTML = '<ul class="font-white svc-btn"><h5 class="center">Amigos</h5><ul class="collection "> ' + results ;
     });
     } else {
     callback(false);
     }
     };


     */
//Logout environment
function faceLogout() {
    FB.logout(function(response) {
        logout();
    });
}
$(document).on('click', '#logout', function(e) {
    e.preventDefault();

    faceLogout();
});
