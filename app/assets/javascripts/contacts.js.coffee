# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# load contacts data
jQuery ->
  $.getJSON '/contacts.json', (contacts) ->
    $contacts = $('#contacts')
    partials = for contact in contacts
      """
        <a class="contact" data-toggle="modal" href="#myModal">
          <span class="datum" data-avatar="#{contact.avatar}" data-name="#{contact.name}" data-phone="#{contact.phone}" data-desc="#{contact.desc}" style="background: url(#{contact.avatar}) no-repeat;">
            <img class="iphone-no-retina" src="#{contact.avatar}"></img>
            <span class="name">#{contact.name}</span>
          </span>
        </a>
      """
    html = partials.join ''
    $contacts.html html

    $("#myModal").on "show", ->
    # $("a.contact").on "click", ->
      console.log 'dddddddddd'
      $contact = $(this).find('.datum')
      console.log "$contact", $contact
      $("#modal-name").text $contact.data('name')
      $("#modal-avatar").attr 'src', $contact.data('avatar')
      # $("#modal-desc").text $contact.data('desc')
      c = $contact.data('phone')
      console.log c
      $("#modal-call").attr 'href', "tel:+8612345678"
      $("#modal-sms").attr 'href', "sms:+#{c}"

