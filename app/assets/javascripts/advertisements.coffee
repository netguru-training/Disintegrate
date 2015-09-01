showMapForm = ->
  $('.show_map').toggle()
  $('#advertisement_address').hide()
  $('#map_link').hide()

$(document).ready(showMapForm)
