require 'test_helper'

class LugarsControllerTest < ActionController::TestCase
  setup do
    @lugar = lugars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lugars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lugar" do
    assert_difference('Lugar.count') do
      post :create, lugar: { descripcion_lugar: @lugar.descripcion_lugar, link: @lugar.link, nombre_lugar: @lugar.nombre_lugar, telefonos: @lugar.telefonos, tipo_lugar_id: @lugar.tipo_lugar_id, tipo_lugar_id: @lugar.tipo_lugar_id, ubicacion_id: @lugar.ubicacion_id, ubicacion_id: @lugar.ubicacion_id }
    end

    assert_redirected_to lugar_path(assigns(:lugar))
  end

  test "should show lugar" do
    get :show, id: @lugar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lugar
    assert_response :success
  end

  test "should update lugar" do
    patch :update, id: @lugar, lugar: { descripcion_lugar: @lugar.descripcion_lugar, link: @lugar.link, nombre_lugar: @lugar.nombre_lugar, telefonos: @lugar.telefonos, tipo_lugar_id: @lugar.tipo_lugar_id, tipo_lugar_id: @lugar.tipo_lugar_id, ubicacion_id: @lugar.ubicacion_id, ubicacion_id: @lugar.ubicacion_id }
    assert_redirected_to lugar_path(assigns(:lugar))
  end

  test "should destroy lugar" do
    assert_difference('Lugar.count', -1) do
      delete :destroy, id: @lugar
    end

    assert_redirected_to lugars_path
  end
end
