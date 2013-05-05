require 'test_helper'

class AcuerdosControllerTest < ActionController::TestCase
  setup do
    @acuerdo = acuerdos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acuerdos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acuerdo" do
    assert_difference('Acuerdo.count') do
      post :create, acuerdo: { detalles: @acuerdo.detalles, lista_acuerdo_id: @acuerdo.lista_acuerdo_id, titulo: @acuerdo.titulo }
    end

    assert_redirected_to acuerdo_path(assigns(:acuerdo))
  end

  test "should show acuerdo" do
    get :show, id: @acuerdo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acuerdo
    assert_response :success
  end

  test "should update acuerdo" do
    put :update, id: @acuerdo, acuerdo: { detalles: @acuerdo.detalles, lista_acuerdo_id: @acuerdo.lista_acuerdo_id, titulo: @acuerdo.titulo }
    assert_redirected_to acuerdo_path(assigns(:acuerdo))
  end

  test "should destroy acuerdo" do
    assert_difference('Acuerdo.count', -1) do
      delete :destroy, id: @acuerdo
    end

    assert_redirected_to acuerdos_path
  end
end
