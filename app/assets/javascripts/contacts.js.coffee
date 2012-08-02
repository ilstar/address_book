# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# load contacts data
$.getJSON '/contacts.json', (contacts) ->
  $contacts = $('#contacts')
  for contact in contacts
    $contacts.append $("
      <span class='contact' data-name='#{contact.name}' data-avatar='#{contact.avatar}' data-phone='#{contact.phone}' data-desc='#{contact.desc}' style='background: url(#{contact.avatar}) no-repeat;'>
        <span class='name'>#{contact.name}</span>
      </span>"
    )
