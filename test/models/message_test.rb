require "test_helper"

class MessageTest < ActiveSupport::TestCase
  belongs_to :conversation
  belongs_to :user
  validates_presence_of :body, :conversation_id, :user_id
end
