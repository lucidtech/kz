require 'test_helper'

class UserKeysControllerTest < ActionController::TestCase
  setup do
    @user_key = user_keys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_keys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_key" do
    assert_difference('UserKey.count') do
      post :create, user_key: { cipher_iv: @user_key.cipher_iv, cipher_key: @user_key.cipher_key, identifier: @user_key.identifier, type: @user_key.type }
    end

    assert_redirected_to user_key_path(assigns(:user_key))
  end

  test "should show user_key" do
    get :show, id: @user_key
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_key
    assert_response :success
  end

  test "should update user_key" do
    patch :update, id: @user_key, user_key: { cipher_iv: @user_key.cipher_iv, cipher_key: @user_key.cipher_key, identifier: @user_key.identifier, type: @user_key.type }
    assert_redirected_to user_key_path(assigns(:user_key))
  end

  test "should destroy user_key" do
    assert_difference('UserKey.count', -1) do
      delete :destroy, id: @user_key
    end

    assert_redirected_to user_keys_path
  end
end
