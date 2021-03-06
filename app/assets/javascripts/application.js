// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

//=require react
//=require react_ujs
//=require components
//=require Chart

//= require_tree .

$(function() {
  $("[data-toggle]").click(function() {
    var toggle = $(this).data("toggle");
    $(toggle).toggleClass("open-sidebar");
  });

  $("#catlogo").click(function() {
	$(this).addClass('animated tada').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', 
		function() {
			$(this).removeClass('animated tada');
		});
	});
  });
