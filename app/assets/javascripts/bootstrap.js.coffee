updateContactInfo = (contact) ->
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

  $('span.contact').on 'click', ->
    location.href = "tel:+#{$(this).data 'phone'}"

  $('span.contact').on 'hold', ->
    updateContactInfo $(this)
    $('#myModal').modal('show')

  unveil = ->
    console.log "unveil"
    $('#container').removeClass 'invisible'
    $('#startup-splash').hide()

  setTimeout unveil, 2000

  MBP.hideUrlBar();

initialize(jQuery)