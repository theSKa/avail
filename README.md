Avail
================
[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

This application is intended to allow users to mark their availabilities for a given event.

Ruby on Rails
-------------

This application requires:

- Ruby 2.2.0
- Rails 4.2.0

Concept
------------
- Single responsibility app
- Create an event, select a time span in which you would like the event to happen (set your availability for the event)
- Invite friends and find the best suitable time.
- Login with google, facebook, twitter


The problem we're trying to solve is the availability for a specific event without having to go back and forth with the hassle of trying to align the planets for all your friends.


Setup
----------
- clone repository
- install virtualbox & vagrant
TDB (All below)
- start vagrant
```
$ vagrant up
```
- ssh into vagrant
```
$ vagrant ssh
```
- launch rails server
```
$ rails s
```
- code in your favorite editor


Architecture
------------
Since it's a clearly targetd it will be bootstrapped.
There will be a simple microservice API endpoint for availabilities, a callback for authentication, a layer for authorization and a basic frontend consumer.
The frontend consumer will be used only for bootstrapping the entire functionality and to showcase it.
Clients of any kind can consume the service.
