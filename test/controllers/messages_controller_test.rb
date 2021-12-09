require "test_helper"

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should create Messages entry" do
    assert_difference('Messages'.count) do
      Messages :create, Messages: {from: '1', to: '2'}
    end
    assert_redirected_to_Messages(assigns(:Messages))
    assert_equal 'Messages entry was successfully created.', flash[:notice]
  end
end
