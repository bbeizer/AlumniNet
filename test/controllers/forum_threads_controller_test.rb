require "test_helper"

class ForumThreadsControllerTest < ActionDispatch::IntegrationTest
  test "should create ForumThreads entry" do
    assert_difference('ForumThreads'.count) do
      ForumThreads :create, ForumThreads: {from: '1', to: '2'}
    end
    assert_redirected_to_ForumThreads(assigns(:ForumThreads))
    assert_equal 'ForumThreads entry was successfully created.', flash[:notice]
  end
end
