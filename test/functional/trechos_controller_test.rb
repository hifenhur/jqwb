require 'test_helper'

class TrechosControllerTest < ActionController::TestCase
  setup do
    @trecho = trechos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trechos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trecho" do
    assert_difference('Trecho.count') do
      post :create, trecho: { perimeter: @trecho.perimeter, side_left_start: @trecho.side_left_start, side_left_stop: @trecho.side_left_stop, side_right_start: @trecho.side_right_start, side_right_stop: @trecho.side_right_stop, street: @trecho.street }
    end

    assert_redirected_to trecho_path(assigns(:trecho))
  end

  test "should show trecho" do
    get :show, id: @trecho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trecho
    assert_response :success
  end

  test "should update trecho" do
    put :update, id: @trecho, trecho: { perimeter: @trecho.perimeter, side_left_start: @trecho.side_left_start, side_left_stop: @trecho.side_left_stop, side_right_start: @trecho.side_right_start, side_right_stop: @trecho.side_right_stop, street: @trecho.street }
    assert_redirected_to trecho_path(assigns(:trecho))
  end

  test "should destroy trecho" do
    assert_difference('Trecho.count', -1) do
      delete :destroy, id: @trecho
    end

    assert_redirected_to trechos_path
  end
end
