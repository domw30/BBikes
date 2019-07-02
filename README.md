## Boris Bikes Project

Writing an app that will emulate a network of docking stations and bikes that anyone can use. The program will model docking stations, bikes and the infrastructure (repair staff, and so on) required to run a Boris bike style business.

### Motivation

This project is being conducted as part of the Makers Academy course. The aim of the project is to develop skills in the areas of TDD, learn new techniques for debugging and to improve familiarity with the Ruby coding language.

## Approach

User Stories.

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working.

As a member of the public,
So I can return bikes I've hired,
I want to dock my bike at the docking station.

As a member of the public,
So I can decide whether to use the docking station,
I want to see a bike that has been docked.

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
```

Domain Model.

Objects  | Messages
------------- | -------------
Person  |
Bike  | working?
DockingStation | release_bike

Feature Test.
```
student$ irb
2.6.3 :001 > docking_station = DockingStation.new
Traceback (most recent call last):
        4: from /Users/student/.rvm/rubies/ruby-2.6.3/bin/irb:23:in `<main>'
        3: from /Users/student/.rvm/rubies/ruby-2.6.3/bin/irb:23:in `load'
        2: from /Users/student/.rvm/rubies/ruby-2.6.3/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):1
NameError (uninitialized constant DockingStation)
```
Test Drive.
```
student$ irb
2.6.3 :001 > require './lib/docking_station.rb'
 => true
2.6.3 :002 > docking_station = DockingStation.new
 => #<DockingStation:0x00007fa5ec21af18>
2.6.3 :003 > docking_station.release_bike
Traceback (most recent call last):
        4: from /Users/student/.rvm/rubies/ruby-2.6.3/bin/irb:23:in `<main>'
        3: from /Users/student/.rvm/rubies/ruby-2.6.3/bin/irb:23:in `load'
        2: from /Users/student/.rvm/rubies/ruby-2.6.3/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):3
NoMethodError (undefined method `release_bike' for #<DockingStation:0x00007fa5ec21af18>)
```

## Progress/Status of Project


## Technologies
* Ruby
* Rspec

## Code Quality/Problems


## Improvements


## Using this Code
To make use of this project clone it from GitHub by doing the following:

1. Clone the repository using `git clone <repo url>` in your terminal.
2. Then type `bundle install` to install Rspec


### Acknowledgements

Dominic White |
Makers Academy Challenge

