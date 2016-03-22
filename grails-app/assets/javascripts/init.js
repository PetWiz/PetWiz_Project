(function($){
  $(function(){
    $('.dropdown-button').dropdown();
    $(".button-collapse").sideNav();
    $('.collapsible').collapsible();
    $('.parallax').parallax();
    $('.slider').slider({full_width: true});
    $('.carousel').carousel({dist: -50});
    $('ul.tabs').tabs();
    $('.modal-trigger').leanModal();
  }); // end of document ready
})(jQuery); // end of jQuery name space