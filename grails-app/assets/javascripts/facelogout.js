function faceLogout() {
    FB.logout(function(response) {
        logout();
    });
}
$(document).on('click', '#logout', function(e) {
    e.preventDefault();

    faceLogout();
});