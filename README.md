# Volunteer Tracker
## Created by Lara Bjork on January 10, 2020
### Project Description

This project was completed as an independent assignment for the Ruby class at Epicodus, during a week focused on Ruby database basics. The task description was as follows:
_Last week, you did a volunteer project for a non-profit. While working on the project, you met the non-profit's IT manager. He's building an internal website to track volunteers working on projects and he'd like your help. Each project should have many volunteers, but a volunteer can only work on one project at a time (a one-to-many relationship). The IT manager has a great deal of experience with SQL so he prefers using SQL for database queries. Fortunately, you know how to integrate raw SQL queries into your application!_

_The IT manager also believes in testing so he's written the tests himself. You can find the tests at <https://github.com/epicodus-lessons/volunt33r_track3r>. All tests must be passing. To get one test passing at a time (as usual, you should commit for each passing test), it's recommended to comment out tests you don't need until you're ready to run them._

_Create an application that tracks projects and the volunteers working on them. Each volunteer will belong to only one project (one project, many volunteers)._

_* You may alter a unit test only if you are adding more attributes to volunteers or projects._
_* You may (and should) add more unit tests if you decide to add additional features or if there are any methods that aren't covered by the included tests._
_* You may alter the names of buttons and fields in the Capybara tests. You may also add additional tests. However, your integration specs should otherwise use the current provided tests unaltered._
_* If there is an error or bug in any of the tests, you may correct that error._

### Specifications
The assignment description provided the following user stories:

_* As a non-profit employee, I want to view, add, update and delete projects._
_* As a non-profit employee, I want to view and add volunteers._
_* As a non-profit employee, I want to add volunteers to a project._

The integration specs provided as part of the IT director's tests also provided these requirements:
_* Your project should be set up so that a volunteer can only be created if a project already exists._
_* The user should be able to visit the home page and fill out a form to add a new project. When that project is created, the application should direct them back to the homepage._
_* A user should be able to click on a project to see its detail. The detail page includes a form where the project can be updated. When the form is submitted, the user can be directed to either the home page or that project's detail page._
_* A user should be able to navigate to a project's detail page and delete the project. The user will then be directed to the index page. The project should no longer be on the list of projects._
_* The user should be able to click on a project detail page and see a list of all volunteers working on that project. The user should be able to click on a volunteer to see the volunteer's detail page._


### Technologies Used
Ruby 2.5.1, Bundler, PSQL/Postgres
Gems: Sinatra, Capybara, rspec, pry, pg, rake
Project was written using Google Chrome. No other browsers were tested.

### Project Setup instructions
1. Ensure that you have the correct versions of Ruby and PSQL installed.
2. Clone the project locally from github (https://github.com/larabjork/volunteers.git).
3. Install Bundler if you do not already have it by running **gem install bundler** in the terminal.
4. Run **bundle install** to manage gems; if you make additional changes to the Gemfile, you will need to run this command again.
5. Run the command **rake build[volunteer-tracker]** in the terminal to recreate the project's database schema.

If something doesn't display correctly or goes wrong somehow, please contact me at <lara.m.bjork@gmail.com> and I will do my best to troubleshoot for you.


### Known Issues and Limitations
* No known bugs.

### Where to Find This Project
https://github.com/larabjork/volunteers.git

### License
This software is licensed under the MIT license.

Copyright (c) 2020 Lara Bjork
