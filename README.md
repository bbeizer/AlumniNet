# README

Link to Github Repo: https://github.com/alex174/AlumniNet
Link to Heroku: https://sleepy-escarpment-10704.herokuapp.com


AlumniNet is a social networking website for Brandeis students to connect with Brandeis alumni.  

Currently, students and alumni can create accounts, and put in their major, graduation year, and interests.
We want to add a "follow" button for students to follow alumni that they wish to "connect" with.
We also want to add the ability to create a post, and then see it on your feed.

## URL Patterns:
- "/login" and "/signup" for login and signup
- [Planned] "/posts/new" and "/posts/show" for creating a new post and seeing other posts
- [Planned] "/users/show" and "/users/USERID/profile" for viewing a specific user's profile

## DB Schema:
- Table Users:
    string "username"
    string "password"
    string "name"
    string "email"
    string "interests"
    string "major"
    string "gradyear"
- Table Posts
    string "datecreated"
    string "owner"
    string "text"
    integer "likes"
    integer "comments"
- Table Comments
    string "datecreated"
    string "owner"
    string "text"
    integer "likes"

## Planned Views:
- User (show other users, see a specific user's profile)
- Feed (see a feed of posts from other users who you follow)
- Post page (a form for creating a new post)

## List of dependencies on APIs, gems, libraries and so on:
- Requires webpacker
- Requires bcrypt

