require 'test_helper'

class GerenciarUsuariosControllerTest < ActionController::TestCase
  setup do
    @gerenciar_usuario = gerenciar_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gerenciar_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gerenciar_usuario" do
    assert_difference('GerenciarUsuario.count') do
      post :create, gerenciar_usuario: { create: @gerenciar_usuario.create, index: @gerenciar_usuario.index }
    end

    assert_redirected_to gerenciar_usuario_path(assigns(:gerenciar_usuario))
  end

  test "should show gerenciar_usuario" do
    get :show, id: @gerenciar_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gerenciar_usuario
    assert_response :success
  end

  test "should update gerenciar_usuario" do
    put :update, id: @gerenciar_usuario, gerenciar_usuario: { create: @gerenciar_usuario.create, index: @gerenciar_usuario.index }
    assert_redirected_to gerenciar_usuario_path(assigns(:gerenciar_usuario))
  end

  test "should destroy gerenciar_usuario" do
    assert_difference('GerenciarUsuario.count', -1) do
      delete :destroy, id: @gerenciar_usuario
    end

    assert_redirected_to gerenciar_usuarios_path
  end
end
