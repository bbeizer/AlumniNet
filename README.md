# README

Link to Github Repo: https://github.com/alex174/AlumniNet
Link to Heroku: https://sleepy-escarpment-10704.herokuapp.com

# Brief Product Overview
AlumniNet is a social networking website for Brandeis students to connect with Brandeis alumni.  

Most seniors graduating from college experience difficulty finding out about work opportunities in the real world. Therefore, we wanted to create a platform where Brandeis students could reach out to Brandeis alumni to get insights into work opportunities in fields in which they are interested. Students can find and follow alumni with expertise in various fields and ask them about career advice and opportunities. 

The features that are available for students to interact with Brandeis alumni through our platform are as follows:

• All_Users: A directory that lists all users, both alumni and students, that are affiliated with the platform.


•Conversations: A messaging chat feature where students can chat with alumni about topics of interest as a DM.


• Community Forum: A global forum where users can start threads about popular topics of interest and/or questions that can be answered by alumni to
benefit the entire AlumniNet community.


• Connections: A profile page where the currently logged-in user can view both their followers and the people they follow. There is also a direct link next to each user the currently logged-in user follows that can be clicked to directly message them.


• Feedback: A embedded google survey feedback page where users can tell us aspects they like and dislike about our platform so that we can continue to improve our platform and optimize user experience.


• Logout: Simple logout functionality is included in the navbar.


## URL Patterns:
- "/login" and "/signup" for login and signup
- "/posts/new" and "/posts/show" for creating a new post and seeing other posts
- "/users/show" and "/users/USERID/profile" for viewing a specific user's profile
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
    
    

## Views:
- User (show other users, see a specific user's profile)
- Conversations (start DMs with students and alumni to have more private 1:1 conversations)
- Connections page (Where you can view who you follow and who are your followers and easily message them from that page)
- Forum Pages for everyone on the app to post questions with a subject so the entire community can interact and start discussions
- Feedback page for users to give us some input data on their experience using our platform


## List of dependencies on APIs, gems, libraries and so on:
- Requires webpacker
- Requires bcrypt
- Requires mailboxer gem
- Requires local time gem

