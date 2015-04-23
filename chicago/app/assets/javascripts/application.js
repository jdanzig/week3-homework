//= require jquery
//= require bootstrap
//= require jquery-ujs
//= require jquery-ui
//= require ion.rangeSlider

$(function() {
	$('input#place_review_rating').ionRangeSlider({
		min: 0,
		max: 5,
		grid: true,
		grid_num: 5,
		step: 1
	});
	$('div.place_review_rating_slider').css('width','20%');
});