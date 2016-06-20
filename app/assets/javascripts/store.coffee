# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $("#messages" ).fadeOut(3000);

  $("#cart-description").hide()
  $("#show-cart").click ->
    $("#cart-description").toggle()
  
  $(".owl-carousel").owlCarousel({
      navigation : true
      slideSpeed : 300
      paginationSpeed : 400
      singleItem:true
  });
  $(window).scroll (event) ->
	  scroll = $(window).scrollTop()
	  # Do something
	  if scroll > 20
	  	$("#menu").addClass("fix-menu")
	  	console.log("test")
	  else 
	  	$("#menu").removeClass("fix-menu")
	  return

  # wrap = $('body')
  # wrap.on 'scroll', (e) ->
  
  # if @scrollTop > 147  
  #   wrap.addClass 'fix-search'
  #   console.log("test")
  # else
  #   wrap.removeClass 'fix-search'
  # return



$(document).ready(ready)
$(document).on('page:load', ready)