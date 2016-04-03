(function($){
    $(function(){

        $('.modal-trigger').leanModal({

        });
        $('.dropdown-button').dropdown({hover:true} );
        $('.button-collapse').sideNav({
                menuWidth: 225, // Default is 240
                edge: 'left', // Choose the horizontal origin
                closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
            }
        );
        $('.collapsible').collapsible({hover:true});
        $('.parallax').parallax();
        $('.slider').slider({full_width: true});
        $('.carousel').carousel({dist: -50});
        $('ul.tabs').tabs();

    }); // end of document ready
})(jQuery); // end of jQuery name space