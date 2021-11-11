# README
This program illustrates a Rails web application creating a course catalog that displays data regarding all of the courses taught and instructors teaching the courses at Brandeis University. The data is loaded from three given JSON files into a database which then is displayed on the webpage.

The Instructors page is the homepage of this web application which lists all of the instructors first and last names as well as their ID numbers. Instructors page serves as the home page.

The Courses page lists all of the course names, their code numbers and their descriptions.

There is a navbar at the top of the page that will allow the user to access both the instructor and course page at any time.

Utlized Bootstap to implement the UI design of this web application.


README for Rails PA 2

This is a continuation from the Rails PA 1 assignment. In this part, a login authentication feature has been implemented where users will eed to log in with a simple username and password. If the user does not alredy have an account, they are able to sign up for one.

 Once signed up and logged in, the user will be able to view the navbar which has tabs that direct the user to a list of instructors who teach courses at Brandeis, a list of the courses that are taught, a search page where the user can look for specific courses filtered by subject and course name and then enroll into their desired classes, as well as an enrolled courses page where the user can conviently view all of the course they have enrolled in for the upcoming semester. If the course has already been enrolled in, the user will view a "You have registered already" message in place of the enroll button.

 *NOTE*: when viewing the heroku app, you will see that I made a user named aarthi who has already signed up and logged in. You can view the courses aarthi has signed up for. If you would like to test the login and sign up features, please feel free to create another user through signing up and logging them in, as well as enrolling them in different courses through the search page! :)


Link to Github Repo: https://github.com/aarthisivasankar-1/pa-rails
Link to Heroku: https://pa-rails.herokuapp.com