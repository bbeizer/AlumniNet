class ForumPost < ApplicationRecord
    belongs_to :forum_thread
    belongs_to :content
    validates :body, presence: true
  
end
