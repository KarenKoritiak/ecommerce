# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready -> 
	$('.producttypefield_add').live 'click', (event) ->
		event.preventDefault();
		line = $(this).parents('li').clone();
		$(this).parents('ol').append(line);
		$(this).attr('value', '-');
		$(this).removeClass('producttypefield_add');
		$(this).addClass('producttypefield_remove');

	$('.producttypefield_remove').live 'click', (event) ->
		event.preventDefault();
		$(this).parents('li').remove();
		$(this).attr('value', '+');
		$(this).removeClass('producttypefield_remove');
		$(this).addClass('producttypefield_add');
	