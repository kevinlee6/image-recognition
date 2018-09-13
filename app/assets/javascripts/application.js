// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks
//= require_tree .

setTimeout("$('.alert').fadeOut(2000)",100);

document.addEventListener("turbolinks:load", function() {
    $('#avatar-container').hover(function() {
        $('#edit-avatar').toggle();
    });

    $('#toggle').click(function () {
        $('.ui.sidebar').sidebar('toggle');
    });

    $('.ui.accordion').accordion();
});

$(document).ready(function () {
    if (document.getElementsByClassName('panel').length) {
        var controller = new ScrollMagic.Controller({
            globalSceneOptions: {
                triggerHook: 'onLeave'
            }
        });

        // get all slides
        var slides = document.querySelectorAll("section.panel");

        // create scene for every slide
        for (var i=0; i<slides.length; i++) {
            new ScrollMagic.Scene({
                triggerElement: slides[i]
            })
                .setPin(slides[i])
                .addTo(controller);
        }
    }
});

