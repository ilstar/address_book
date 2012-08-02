class ContactsController < ApplicationController
  def index
    respond_to do |format|
      format.html {}
      format.json {
        render json: [
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phoneNumber: '+8618611680000'}, 
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phoneNumber: '+8618611680000'}, 
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phoneNumber: '+8618611680000'}, 
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phoneNumber: '+8618611680000'}, 
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phoneNumber: '+8618611680000'}, 
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phoneNumber: '+8618611680000'}, 
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phoneNumber: '+8618611680000'}, 
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phoneNumber: '+8618611680000'}, 
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phoneNumber: '+8618611680000'}, 
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phoneNumber: '+8618611680000'}, 
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phoneNumber: '+8618611680000'}, 
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phoneNumber: '+8618611680000'}, 
          {name: 'Fred Liang', avatar: "http://www.gravatar.com/avatar/48986aabbdbcdeacdbc3a6dc2945a9ff.png", phoneNumber: '+8618611680000'}, 
        ]
      }
    end
  end
end
