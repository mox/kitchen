# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $("#messages" ).fadeOut(7000);

  $("#cart-description").hide()
  $("#show-cart").click ->
    $("#cart-description").toggle()
  
  $(".owl-carousel").owlCarousel({
      navigation : true
      slideSpeed : 300
      paginationSpeed : 400
      singleItem:true
      navigationText: ["<", ">"]
  });
  $(window).scroll (event) ->
    scroll = $(window).scrollTop()
    # Do something
    if scroll > 150
      $("header").addClass("fix")
    else 
      $("header").removeClass("fix")
    return
  $('#menu a').click ->
    $('html, body').animate { scrollTop: $($.attr(this, 'href').substring(1)).offset().top - 100 }, 500
    # console.log(this)
  

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