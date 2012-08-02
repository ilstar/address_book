# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# load contacts data
$.getJSON '/contacts.json', (contacts) ->
  $contacts = $('#contacts')
  for contact in contacts
    $contacts.append $("
      <a href='tel:#{contact.phone}'>
      <span class='contact' data-name='#{contact.name}' data-phone='#{contact.phone}' data-desc='#{contact.desc}' style='background: url(#{contact.avatar}) no-repeat;'>
        <img class='iphone-no-retina' src='#{contact.avatar}'></img>
        <span class='name'>#{contact.name}</span>
      </span>
      </a>"
    )

