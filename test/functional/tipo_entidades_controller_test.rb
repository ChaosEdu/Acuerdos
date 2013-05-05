require 'test_helper'

class TipoEntidadesControllerTest < ActionController::TestCase
  setup do
    @tipo_entidad = tipo_entidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_entidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_entidad" do
    assert_difference('TipoEntidad.count') do
      post :create, tipo_entidad: { nom_tipo_entidad: @tipo_entidad.nom_tipo_entidad }
    end

    assert_redirected_to tipo_entidad_path(assigns(:tipo_entidad))
  end

  test "should show tipo_entidad" do
    get :show, id: @tipo_entidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_entidad
    assert_response :success
  end

  test "should update tipo_entidad" do
    put :update, id: @tipo_entidad, tipo_entidad: { nom_tipo_entidad: @tipo_entidad.nom_tipo_entidad }
    assert_redirected_to tipo_entidad_path(assigns(:tipo_entidad))
  end

  test "should destroy tipo_entidad" do
    assert_difference('TipoEntidad.count', -1) do
      delete :destroy, id: @tipo_entidad
    end

    assert_redirected_to tipo_entidades_path
  end
end
