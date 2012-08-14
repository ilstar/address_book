## Address Book


##### Requirements

* ruby 1.9.2
* MySQL 5.5.10

##### Installation

    git clone git@github.com:ilstar/address_book.git
    cd address_book
    cp config/database.yml.example config/database.yml
    bundle install
    rake db:create RAILS_ENV=production
    rake db:migrate  RAILS_ENV=production
    rake assets:precompile
    rails s -e production

then you can access `http://localhost:3000` for demo.