class ContactsController < ApplicationController
  def index
    respond_to do |format|
      format.html {}
      format.json {
        render json: [
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phoneNumber: '+8618611680000'}, 
          {name: 'Vincent Xie', avatar: "http://www.gravatar.com/avatar/7e91cf68273009a6ff7e443b9c0e6af7.png", phoneNumber: '+8618611680000'}, 
          {name: 'Lay Zhu', avatar: "https://secure.gravatar.com/avatar/5043cfb8f89890c0fae4ea1705d92010?s=140&d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-140.png", phoneNumber: '+8618611680000'}, 
        ] * 5
      }
    end
  end
end
