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
/*
$(function() {
    $('input[type=hidden]').onload(function() {
        $('p').html('<span class="stars">'+parseFloat($('input[name=amount]').val())+'</span>');
        console.log($('input[name=amount]').val());
        $('span.stars').stars();
    });
    $('input[type=hidden]').onload();
});

$.fn.stars = function() {
    return $(this).each(function() {
        $(this).html($('<span />').width(Math.max(0, (Math.min(5, parseFloat($(this).html())))) * 16));
    });
}*/
$.fn.stars = function() {
    return this.each(function(i,e){$(e).html($('<span/>').width($(e).text()*16));});
};

$('.stars').stars();
/*
var jqxhr = $.ajax({ url: "setRanking" })
    .success(function() { alert("success");
        $.fn.stars = function() {
            return this.each(function(i,e){$(e).html($('<span/>').width($(e).text()*16));});
        };

        $('.stars').stars();})
    .error(function() { alert("error"); })
    .complete(function() { alert("complete"); });*/
function updateStars() {
    $.fn.stars = function () {
        return this.each(function (i, e) {
            $(e).html($('<span/>').width($(e).text() * 16));
        });
    };

    $('.stars').stars();
}