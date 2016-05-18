$(document).ready(function(){
//  Check Radio-box
    $(".rating input:radio").attr("checked", false);
    $('.rating input').click(function () {
        $(".rating span").removeClass('checked');
        $(this).parent().addClass('checked');
    });

    $('input:radio').change(
        function(){
            var userRating = this.value;
         //   alert(userRating);
          //  ${remoteFunction(controller:'ranking', action:'setRanking', params:'\'userRating=\' + userRating)}
        });
});

$.fn.stars = function() {
    return this.each(function(i,e){$(e).html($('<span/>').width($(e).text()*24));});
};

$('.stars').stars();

function updateStars(id) {
    console.log(id);
    var id_1 = '#sr_'+ id;
    var id_2 = '#up_'+ id;
    console.log(id_1);
    console.log(id_2);

    $.fn.stars = function () {
            return this.each(function (i, e) {
                $(e).html($('<span/>').width($(e).text() * 24));

            });
        };
    addStar();
    function addStar(){$(id_1).stars();
    }
}

function disableButton(id) {
    var id_1 = "" + id;
    $(id).click(function () {
        console.log("hola: " +id);
        $(id).attr("disabled", true);
    });
}