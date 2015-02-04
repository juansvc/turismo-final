require 'test_helper'

class NombreTransportesControllerTest < ActionController::TestCase
  setup do
    @nombre_transporte = nombre_transportes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nombre_transportes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nombre_transporte" do
    assert_difference('NombreTransporte.count') do
      post :create, nombre_transporte: { nombre: @nombre_transporte.nombre }
    end

    assert_redirected_to nombre_transporte_path(assigns(:nombre_transporte))
  end

  test "should show nombre_transporte" do
    get :show, id: @nombre_transporte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nombre_transporte
    assert_response :success
  end

  test "should update nombre_transporte" do
    patch :update, id: @nombre_transporte, nombre_transporte: { nombre: @nombre_transporte.nombre }
    assert_redirected_to nombre_transporte_path(assigns(:nombre_transporte))
  end

  test "should destroy nombre_transporte" do
    assert_difference('NombreTransporte.count', -1) do
      delete :destroy, id: @nombre_transporte
    end

    assert_redirected_to nombre_transportes_path
  end
end
