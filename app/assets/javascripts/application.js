// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .


$(document).ready(function() {



// Support for AJAX loaded modal window.
// Focuses on first input textbox after it loads the window.
    $('[data-toggle="modal"]').click(function(e) {
        e.preventDefault();
        var url = $(this).attr('href');
        if (url.indexOf('#') == 0) {
            $(url).modal('open');
        } else {
            $.get(url, function(data) {
                $('<div class="modal hide fade">' + data + '</div>').modal();
            }).success(function() { $('input:text:visible:first').focus();

                });
        }
    });

    $("#video_thumbanil").click(function(){
        $('.video_placeholder').html("<div class='video_iframe_wrapper'><iframe width='640' height='425' src='http://www.youtube.com/embed/NqsGoZ7eDDs?autoplay=1' frameborder='0' allowfullscreen></iframe></div>");

    });

    $(".video_popup_close").click(function(){
        $(".video_iframe_wrapper").remove();
    });





});