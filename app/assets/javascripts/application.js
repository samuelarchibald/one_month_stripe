// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .

$("#button-step-1").click(function(){
     $(".step-1").animate({left: '-5000px'});
     $(".step-2").animate({top: '40px'});
});

$("#button-step-2").click(function(){
     $(".step-2").animate({left: '-5000px'});
     $(".step-3").animate({top: '-470px'});
});