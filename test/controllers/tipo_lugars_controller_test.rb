require 'test_helper'

class TipoLugarsControllerTest < ActionController::TestCase
  setup do
    @tipo_lugar = tipo_lugars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_lugars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_lugar" do
    assert_difference('TipoLugar.count') do
      post :create, tipo_lugar: { nombre_tipo: @tipo_lugar.nombre_tipo }
    end

    assert_redirected_to tipo_lugar_path(assigns(:tipo_lugar))
  end

  test "should show tipo_lugar" do
    get :show, id: @tipo_lugar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_lugar
    assert_response :success
  end

  test "should update tipo_lugar" do
    patch :update, id: @tipo_lugar, tipo_lugar: { nombre_tipo: @tipo_lugar.nombre_tipo }
    assert_redirected_to tipo_lugar_path(assigns(:tipo_lugar))
  end

  test "should destroy tipo_lugar" do
    assert_difference('TipoLugar.count', -1) do
      delete :destroy, id: @tipo_lugar
    end

    assert_redirected_to tipo_lugars_path
  end
end
