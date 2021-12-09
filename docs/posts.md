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

In addition, our ForumThread controller is given below:

```
class ForumThreadsController < ApplicationController
    before_action :set_forum_thread, except: [:index, :new, :create]
  
    def index
      @forum_threads = ForumThread.all 
    end
  
    def show
      @forum_post = ForumPost.new
    end
  
    def new
      @forum_thread = ForumThread.new
      @forum_thread.forum_posts.new
    end
  
    def create
      @forum_thread = current_user.forum_threads.new forum_thread_params
      @forum_thread.forum_posts.first.user_id = current_user.id
  
      if @forum_thread.save
        redirect_to @forum_thread
      else
        render action: :new
      end
    end
  
    private
  
      def set_forum_thread
        @forum_thread = ForumThread.find(params[:id])
      end
  
      def forum_thread_params
        params.require(:forum_thread).permit(:subject, forum_posts_attributes: [:body])
      end
  end
  ```


