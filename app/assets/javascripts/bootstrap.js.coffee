updateContactInfo = (contact) ->
  $("#myModal .avatar").attr 'style', "background-image: url(#{contact.data('avatar')});"
  $("#modal-name").text contact.data('name')
  $("#modal-avatar").attr 'src', contact.data('avatar')
  $("#modal-desc").text contact.data('desc')
  $("#modal-call").attr 'href', "tel:+#{contact.data 'phone'}"
  $("#modal-sms").attr 'href', "sms:+#{contact.data 'phone'}"

initialize = ($)->

  MBP.scaleFix();

  $body = $('body')
  # $body.on 'click', '.contact', (e) ->
  #   $('#myModal').modal('show')

  # $body.on 'hold', '.contact', (e) ->
  #   $('#myModal').modal('show')

  $('.contact').on 'click', ->
    location.href = "tel:+#{$(this).data 'phone'}"

  $('.contact').on 'hold', ->
    updateContactInfo $(this)
    $('body').css 'overflow', 'hidden'
    $('#myModal').show()

  $('#myModal .return').on 'click', ->
    $('body').css 'overflow', ''
    $('#myModal').hide()    

  unveil = ->
    console.log "unveil"
    $('#container').removeClass 'invisible'
    $('#startup-splash').hide()

  setTimeout unveil, 2000

  MBP.hideUrlBar();

addEventListener 'DOMContentLoaded', ->
  initialize(jQuery)