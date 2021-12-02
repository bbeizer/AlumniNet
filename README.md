# README

Link to Github Repo: https://github.com/alex174/AlumniNet
Link to Heroku: https://sleepy-escarpment-10704.herokuapp.com


AlumniNet is a social networking website for Brandeis students to connect with Brandeis alumni.  

Currently, students and alumni can create accounts, and put in their major, graduation year, and interests.

The features we have implemented are as follows:
All_Users: A directory that lists all users both alumni and students that are affiliated with the platform.
Alumni/User Directory: A directory for students to view all alumni info and alumni to view all students info.
Conversations: A messaging chat feature where students can chat with alumni about topics of interest as a DM
Community Forum: A global forum where users can start threads about popular topics of interests and/or questions that can be answered by alumni to benefit the entire AlumniNet community.
Connections: A profile page where the current logged in user can view both their followers and people they follow. There is also a direct link next to each user the current logged in user follows that can be clikced to directly message them.
Logout: Simple logout functionality included in navbar.


For the stage 4, we worked on polishing all of our features listed above so that they work succesfully, as well as cleaned up any unused code/files we did not need, but for the final deliverable coming up soon, we Will be working on cleaning up the UI and stylistic aspects of the code for the final deliverable, as all the major features are now implemented. We will also be working on more testing, cleaning/commenting our code, and including a poro.




## URL Patterns:
- "/login" and "/signup" for login and signup
- [Planned] "/posts/new" and "/posts/show" for creating a new post and seeing other posts
- [Planned] "/users/show" and "/users/USERID/profile" for viewing a specific user's profile
- /Alumi Page of All the Alumni
- /Student Page of All the Students
- /Conversation page for sending a message to a possible person
- /forum_thread page for forum threads

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
- Table Forum Thread
    integer "user id"
    string "subject
- Table Forum Posts
  integer "Forum Thread ID
  integer "Forum Post ID
  text    "Body"
- Messages
- Mailboxer
- Conversation
  integer "Sender id"
  integer "Recipient id"
    
    
    

## Planned Views:
- User (show other users, see a specific user's profile)
- Feed (see a feed of posts from other users who you follow)
- Post page (a form for creating a new post)
- Forum Pages for everyone on the app to post questions with a subjet

## List of dependencies on APIs, gems, libraries and so on:
- Requires webpacker
- Requires bcrypt
- Requires mailboxer gem
- Requires local time gem

