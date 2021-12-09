require "test_helper"

class FollowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @follower = followers(:one)
  end

  test "should get index" do
    get followers_url
    assert_response :success
  end


  test "should create follower entry" do
    assert_difference('Follower'.count) do
      follower :create, follower: {from: '1', to: '2'}
    end
    assert_redirected_to follower_path(assigns(:follower))
    assert_equal 'Follower entry was successfully created.', flash[:notice]
  end

  test "should get new" do
    get new_follower_url
    assert_response :success
  end

  test "should create follower" do
    assert_difference('Follower.count') do
      post followers_url, params: { follower: { from: @follower.from, to: @follower.to } }
    end

    assert_redirected_to follower_url(Follower.last)
  end

  test "should show follower" do
    get follower_url(@follower)
    assert_response :success
  end

  test "should get edit" do
    get edit_follower_url(@follower)
    assert_response :success
  end

  test "should update follower" do
    patch follower_url(@follower), params: { follower: { from: @follower.from, to: @follower.to } }
    assert_redirected_to follower_url(@follower)
  end

  test "should destroy follower" do
    assert_difference('Follower.count', -1) do
      delete follower_url(@follower)
    end

    assert_redirected_to followers_url
  end
end
