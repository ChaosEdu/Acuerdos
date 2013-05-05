require 'test_helper'

class TipoEmailsControllerTest < ActionController::TestCase
  setup do
    @tipo_email = tipo_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_email" do
    assert_difference('TipoEmail.count') do
      post :create, tipo_email: { tipo_email: @tipo_email.tipo_email }
    end

    assert_redirected_to tipo_email_path(assigns(:tipo_email))
  end

  test "should show tipo_email" do
    get :show, id: @tipo_email
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_email
    assert_response :success
  end

  test "should update tipo_email" do
    put :update, id: @tipo_email, tipo_email: { tipo_email: @tipo_email.tipo_email }
    assert_redirected_to tipo_email_path(assigns(:tipo_email))
  end

  test "should destroy tipo_email" do
    assert_difference('TipoEmail.count', -1) do
      delete :destroy, id: @tipo_email
    end

    assert_redirected_to tipo_emails_path
  end
end
