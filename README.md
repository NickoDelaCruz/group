<!--Your documentation is complete when someone can use your module without ever having to look at its code. This is very important. This makes it possible for you to separate your module's documented interface from its internal implementation (guts). This is good because it means that you are free to change the module's internals as long as the interface remains the same.

Remember: the documentation, not the code, defines what a module does. -- Ken Williams-->

# Shoe_Code_Review

#### Ruby application with a many-to-many database relationship, 3/6/2018

#### By Nicko DC

## Description

User is able to interact with a database that connects stores and shoe brands.
User is able to add stores and brands, update name, and delete.
Users are able to add shoes to multiple stores where they can be sold.

## Setup/Installation Requirements
Open Terminal

$ git clone https://github.com/NickoDelaCruz/group.git
$ bundle install
$ rake db:create
$ rake db:migrate
$ ruby app.rb


Open your browser and go to localhost:4567

## Technologies Used

* Ruby
* Gems
* Sinatra
* Postgres

## License

*Licensed under MIT license*

Copyright (c) 2018 **_NickoDC_**
