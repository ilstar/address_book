class ContactsController < ApplicationController
  def index
    respond_to do |format|
      format.html {}
      format.json {
        render json: [
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phone: '+8618611680000', desc: "Hey, I'm here."}, 
          {name: 'Vincent Xie', avatar: "http://www.gravatar.com/avatar/7e91cf68273009a6ff7e443b9c0e6af7.png", phone: '+8618611680000', desc: "Don't look at me!"}, 
          {name: 'Lay Zhu', avatar: "https://secure.gravatar.com/avatar/5043cfb8f89890c0fae4ea1705d92010?s=140&d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-140.png", phone: '+8618611680000', desc: "Boo"}, 
          {name: 'Lay Zhu', avatar: "https://secure.gravatar.com/avatar/5043cfb8f89890c0fae4ea1705d92010?s=140&d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-140.png", phone: '+8618611680000', desc: "Boo"}, 
        ] * 4 
      }
    end
  end
end
