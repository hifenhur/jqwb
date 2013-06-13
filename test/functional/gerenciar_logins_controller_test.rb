require 'test_helper'

class GerenciarLoginsControllerTest < ActionController::TestCase
  setup do
    @gerenciar_login = gerenciar_logins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gerenciar_logins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gerenciar_login" do
    assert_difference('GerenciarLogin.count') do
      post :create, gerenciar_login: {  }
    end

    assert_redirected_to gerenciar_login_path(assigns(:gerenciar_login))
  end

  test "should show gerenciar_login" do
    get :show, id: @gerenciar_login
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gerenciar_login
    assert_response :success
  end

  test "should update gerenciar_login" do
    put :update, id: @gerenciar_login, gerenciar_login: {  }
    assert_redirected_to gerenciar_login_path(assigns(:gerenciar_login))
  end

  test "should destroy gerenciar_login" do
    assert_difference('GerenciarLogin.count', -1) do
      delete :destroy, id: @gerenciar_login
    end

    assert_redirected_to gerenciar_logins_path
  end
end
