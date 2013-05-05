require 'test_helper'

class ListaAcuerdosControllerTest < ActionController::TestCase
  setup do
    @lista_acuerdo = lista_acuerdos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lista_acuerdos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lista_acuerdo" do
    assert_difference('ListaAcuerdo.count') do
      post :create, lista_acuerdo: { act: @lista_acuerdo.act, avance: @lista_acuerdo.avance }
    end

    assert_redirected_to lista_acuerdo_path(assigns(:lista_acuerdo))
  end

  test "should show lista_acuerdo" do
    get :show, id: @lista_acuerdo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lista_acuerdo
    assert_response :success
  end

  test "should update lista_acuerdo" do
    put :update, id: @lista_acuerdo, lista_acuerdo: { act: @lista_acuerdo.act, avance: @lista_acuerdo.avance }
    assert_redirected_to lista_acuerdo_path(assigns(:lista_acuerdo))
  end

  test "should destroy lista_acuerdo" do
    assert_difference('ListaAcuerdo.count', -1) do
      delete :destroy, id: @lista_acuerdo
    end

    assert_redirected_to lista_acuerdos_path
  end
end
