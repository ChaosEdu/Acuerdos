require 'test_helper'

class OrganoDeGobiernosControllerTest < ActionController::TestCase
  setup do
    @organo_de_gobierno = organo_de_gobiernos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organo_de_gobiernos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organo_de_gobierno" do
    assert_difference('OrganoDeGobierno.count') do
      post :create, organo_de_gobierno: { nom_organo: @organo_de_gobierno.nom_organo, tipo_organo_de_gobierno_id: @organo_de_gobierno.tipo_organo_de_gobierno_id }
    end

    assert_redirected_to organo_de_gobierno_path(assigns(:organo_de_gobierno))
  end

  test "should show organo_de_gobierno" do
    get :show, id: @organo_de_gobierno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organo_de_gobierno
    assert_response :success
  end

  test "should update organo_de_gobierno" do
    put :update, id: @organo_de_gobierno, organo_de_gobierno: { nom_organo: @organo_de_gobierno.nom_organo, tipo_organo_de_gobierno_id: @organo_de_gobierno.tipo_organo_de_gobierno_id }
    assert_redirected_to organo_de_gobierno_path(assigns(:organo_de_gobierno))
  end

  test "should destroy organo_de_gobierno" do
    assert_difference('OrganoDeGobierno.count', -1) do
      delete :destroy, id: @organo_de_gobierno
    end

    assert_redirected_to organo_de_gobiernos_path
  end
end
