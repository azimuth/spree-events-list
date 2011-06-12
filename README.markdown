SpreeEventsList
===============

Manage and display events.

Install
=======

in your Gemfile:

    gem 'spree_events_list', '~> 0.50.0'
    
on your command line:
    
    $ bundle install    

      # there is currently an error message that appears about assets 
      # from the public dir, it can be safely ignored.
    $ rake spree_events_list:install 
    $ rake db:migrate

Override
========

override the following views to customize your display

* app/views/events/_event.html.erb
* app/views/events/index.html.erb
* app/views/events/show.html.erb


Branches
========

* Master: compatible with 0.50.0
* 0.11-stable: compatible with 0.11-stable

Copyright (c) 2011 Azimuth Internet Services, released under the New BSD License
