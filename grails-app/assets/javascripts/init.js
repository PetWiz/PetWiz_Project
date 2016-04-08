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
    $(document).ready(function() {
      $('select').material_select();
    });
    $('.datepicker').pickadate({
      selectMonths: true, // Creates a dropdown to control month
      selectYears: 15 // Creates a dropdown of 15 years to control year
    });
  }); // end of document ready
})(jQuery); // end of jQuery name space