require 'test_helper'

class SesionsControllerTest < ActionController::TestCase
  setup do
    @sesion = sesions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sesions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sesion" do
    assert_difference('Sesion.count') do
      post :create, sesion: { acta: @sesion.acta, extra_ordinaria: @sesion.extra_ordinaria, fecha: @sesion.fecha, hora: @sesion.hora, lugar: @sesion.lugar, status: @sesion.status }
    end

    assert_redirected_to sesion_path(assigns(:sesion))
  end

  test "should show sesion" do
    get :show, id: @sesion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sesion
    assert_response :success
  end

  test "should update sesion" do
    put :update, id: @sesion, sesion: { acta: @sesion.acta, extra_ordinaria: @sesion.extra_ordinaria, fecha: @sesion.fecha, hora: @sesion.hora, lugar: @sesion.lugar, status: @sesion.status }
    assert_redirected_to sesion_path(assigns(:sesion))
  end

  test "should destroy sesion" do
    assert_difference('Sesion.count', -1) do
      delete :destroy, id: @sesion
    end

    assert_redirected_to sesions_path
  end
end
