$ ->
  setTimeout("$('.new-badge').modal('show')", 0)
  element_showing = 0
  $("#badge_announcement_next").click ->
    $("#badge-award-modal-#{element_showing}").hide()
    element_showing += 1
    $("#badge-award-modal-#{element_showing}").show()
    if !$("#badge-award-modal-#{(element_showing + 1)}").length
      $('#badge_announcement_next').hide()
      $('#badge_announcement_close').show()