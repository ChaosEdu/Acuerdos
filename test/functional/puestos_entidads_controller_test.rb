require 'test_helper'

class PuestosEntidadsControllerTest < ActionController::TestCase
  setup do
    @puestos_entidad = puestos_entidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puestos_entidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puestos_entidad" do
    assert_difference('PuestosEntidad.count') do
      post :create, puestos_entidad: { nom_puesto: @puestos_entidad.nom_puesto }
    end

    assert_redirected_to puestos_entidad_path(assigns(:puestos_entidad))
  end

  test "should show puestos_entidad" do
    get :show, id: @puestos_entidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @puestos_entidad
    assert_response :success
  end

  test "should update puestos_entidad" do
    put :update, id: @puestos_entidad, puestos_entidad: { nom_puesto: @puestos_entidad.nom_puesto }
    assert_redirected_to puestos_entidad_path(assigns(:puestos_entidad))
  end

  test "should destroy puestos_entidad" do
    assert_difference('PuestosEntidad.count', -1) do
      delete :destroy, id: @puestos_entidad
    end

    assert_redirected_to puestos_entidads_path
  end
end
