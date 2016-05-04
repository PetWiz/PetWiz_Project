(function($){
    $(function(){
        $('.dropdown-button').dropdown({belowOrigin: true});
        $(".button-collapse").sideNav();
        $('.collapsible').collapsible();
        $('.parallax').parallax();
        $('.slider').slider({full_width: true});
        $('ul.tabs').tabs();
        $('.modal-trigger').leanModal();
        $('.materialboxed').materialbox();
        $(document).ready(function() {
            $('select').material_select();
        });
    }); // end of document ready
})(jQuery); // end of jQuery name space

$(document).ready(function(){
    $('.carousel').carousel({full_width: true});
});



