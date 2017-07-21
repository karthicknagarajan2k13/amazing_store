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
//= require turbolinks
//= require_tree .


$(document).ready(function(){
	// tooltip
    $('[data-toggle="tooltip"]').tooltip();
    // more_detail show
	$('.more_detail_link').click(function(){
		$('.less_detail_link').css("display", "block");
		$('.more_detail_section').css("display", "block");
		$('.more_detail_link').css("display", "none");
	});
    // more_detail hide
	$('.less_detail_link').click(function(){
		$('.more_detail_link').css("display", "block");
		$('.more_detail_section').css("display", "none");
		$('.less_detail_link').css("display", "none");
	});
});

