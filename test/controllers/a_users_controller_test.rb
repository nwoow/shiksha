require 'test_helper'

class AUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_user = a_users(:one)
  end

  test "should get index" do
    get a_users_url
    assert_response :success
  end

  test "should get new" do
    get new_a_user_url
    assert_response :success
  end

  test "should create a_user" do
    assert_difference('AUser.count') do
      post a_users_url, params: { a_user: { email: @a_user.email, password: @a_user.password, password_confirmation: @a_user.password_confirmation } }
    end

    assert_redirected_to a_user_url(AUser.last)
  end

  test "should show a_user" do
    get a_user_url(@a_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_user_url(@a_user)
    assert_response :success
  end

  test "should update a_user" do
    patch a_user_url(@a_user), params: { a_user: { email: @a_user.email, password: @a_user.password, password_confirmation: @a_user.password_confirmation } }
    assert_redirected_to a_user_url(@a_user)
  end

  test "should destroy a_user" do
    assert_difference('AUser.count', -1) do
      delete a_user_url(@a_user)
    end

    assert_redirected_to a_users_url
  end
end
