## Boris Bikes Project
Practice writing an app that will emulate a network of docking stations and bikes that anyone can use. The program will model docking stations, bikes and the infrastructure (repair staff, and so on) required to run a Boris bike style business.

## Motivation
The aim of the project is to practice skills in the areas of TDD, learn new techniques for debugging and to improve/practice familiarity with the Ruby coding language.

## Approach
Using specifications and acceptance criteria I was able to create User Stories as shown below.

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

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.
```

With the User Stories, I am able to create examples of Domain Models to identify what objects and messages will be needed, an example shown below relevant to the first user story.

Objects  | Messages
------------- | -------------
Person  |
Bike  | working?
DockingStation | release_bike

Once I had created the User Stories and Domain Models, I can use IRB to run Feature Tests, as shown below. This highlights the TDD approach to building the program.
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
Test Driving the program ensuring that the same error is seen at feature test level and unit test level.
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

## Technologies
Ruby | Rspec

## Using this Code
To make use of this project clone it from GitHub by doing the following:

1. Clone the repository using `git clone <repo url>` in your terminal.
2. Then type `bundle install` to install Rspec

## Acknowledgements
Dominic White |
Makers Academy Challenge

