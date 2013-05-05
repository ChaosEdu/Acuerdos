require 'test_helper'

class TipoTelsControllerTest < ActionController::TestCase
  setup do
    @tipo_tel = tipo_tels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_tels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_tel" do
    assert_difference('TipoTel.count') do
      post :create, tipo_tel: { tipo_tel: @tipo_tel.tipo_tel }
    end

    assert_redirected_to tipo_tel_path(assigns(:tipo_tel))
  end

  test "should show tipo_tel" do
    get :show, id: @tipo_tel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_tel
    assert_response :success
  end

  test "should update tipo_tel" do
    put :update, id: @tipo_tel, tipo_tel: { tipo_tel: @tipo_tel.tipo_tel }
    assert_redirected_to tipo_tel_path(assigns(:tipo_tel))
  end

  test "should destroy tipo_tel" do
    assert_difference('TipoTel.count', -1) do
      delete :destroy, id: @tipo_tel
    end

    assert_redirected_to tipo_tels_path
  end
end
