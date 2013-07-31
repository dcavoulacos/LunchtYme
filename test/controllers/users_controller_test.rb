require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { class_year: @user.class_year, email: @user.email, facebook_id: @user.facebook_id, first_name: @user.first_name, friends: @user.friends, gender: @user.gender, image_url: @user.image_url, last_name: @user.last_name, last_pull_from_facebook: @user.last_pull_from_facebook, likes: @user.likes, mutual_friends: @user.mutual_friends, name: @user.name, netid: @user.netid, oauth_expires_at: @user.oauth_expires_at, oauth_token: @user.oauth_token, object_me: @user.object_me, phone_number: @user.phone_number, provider: @user.provider, res_col: @user.res_col }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { class_year: @user.class_year, email: @user.email, facebook_id: @user.facebook_id, first_name: @user.first_name, friends: @user.friends, gender: @user.gender, image_url: @user.image_url, last_name: @user.last_name, last_pull_from_facebook: @user.last_pull_from_facebook, likes: @user.likes, mutual_friends: @user.mutual_friends, name: @user.name, netid: @user.netid, oauth_expires_at: @user.oauth_expires_at, oauth_token: @user.oauth_token, object_me: @user.object_me, phone_number: @user.phone_number, provider: @user.provider, res_col: @user.res_col }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
