### Forum Threads and Posts

The purpose of our forum is to help provide a platform for communication between students and alumni.  This allows Alumni to post things such as job opportunities, their past experiences, or even just life advice that they may have.

In addition, students can post queries or questions that others can respond to.  For instance, if a user wishes to know of upcoming internship opportunities, they might create a forum post asking if any alumni may know of any internships currently looking for applicants.

In addition to creating posts, users (both students and alumni) can respond to open forum threads in by commenting below on them.  This allows any other user of the website to see their response.

The Schema of our ForumThread class is given below:

```
class ForumThread < ApplicationRecord
    belongs_to :user
    has_many :forum_posts
    has_many :users, through: :forum_posts

    accepts_nested_attributes_for :forum_posts
    validates_associated :forum_posts
    validates :subject, presence: true
    
end
```

