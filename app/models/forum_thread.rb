class ForumThread < ApplicationRecord
    belongs_to :user
    has_many :forum_posts
    has_many :users, through: :forum_posts
    has_rich_text :content
    accepts_nested_attributes_for :forum_posts
    validates_associated :forum_posts
    validates :subject, presence: true
    
end