require 'test_helper'

class TipoOrganoDeGobiernosControllerTest < ActionController::TestCase
  setup do
    @tipo_organo_de_gobierno = tipo_organo_de_gobiernos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_organo_de_gobiernos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_organo_de_gobierno" do
    assert_difference('TipoOrganoDeGobierno.count') do
      post :create, tipo_organo_de_gobierno: { nom_tipo_de_organo: @tipo_organo_de_gobierno.nom_tipo_de_organo }
    end

    assert_redirected_to tipo_organo_de_gobierno_path(assigns(:tipo_organo_de_gobierno))
  end

  test "should show tipo_organo_de_gobierno" do
    get :show, id: @tipo_organo_de_gobierno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_organo_de_gobierno
    assert_response :success
  end

  test "should update tipo_organo_de_gobierno" do
    put :update, id: @tipo_organo_de_gobierno, tipo_organo_de_gobierno: { nom_tipo_de_organo: @tipo_organo_de_gobierno.nom_tipo_de_organo }
    assert_redirected_to tipo_organo_de_gobierno_path(assigns(:tipo_organo_de_gobierno))
  end

  test "should destroy tipo_organo_de_gobierno" do
    assert_difference('TipoOrganoDeGobierno.count', -1) do
      delete :destroy, id: @tipo_organo_de_gobierno
    end

    assert_redirected_to tipo_organo_de_gobiernos_path
  end
end
