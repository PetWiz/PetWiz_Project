/**
 * Created by Andres on 25/04/2016.
 */
window.fbAsyncInit = function () {

    FB.init({
        //appId: '1522101791432385',
        appId: '1525265244449373', //LocalHost
        status: true,
        cookie: true,
        xfbml: true,
        version: 'v2.1'
    });
};

function faceLogout() {
    FB.logout(function(response) {
        logout();
    });
}
$(document).on('click', '#logout', function(e) {
    e.preventDefault();

    faceLogout();
});