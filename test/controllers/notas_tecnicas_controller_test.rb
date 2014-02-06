require 'test_helper'

class NotasTecnicasControllerTest < ActionController::TestCase
  setup do
    @notas_tecnica = notas_tecnicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notas_tecnicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notas_tecnica" do
    assert_difference('NotasTecnica.count') do
      post :create, notas_tecnica: { exit: @notas_tecnica.exit }
    end

    assert_redirected_to notas_tecnica_path(assigns(:notas_tecnica))
  end

  test "should show notas_tecnica" do
    get :show, id: @notas_tecnica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notas_tecnica
    assert_response :success
  end

  test "should update notas_tecnica" do
    patch :update, id: @notas_tecnica, notas_tecnica: { exit: @notas_tecnica.exit }
    assert_redirected_to notas_tecnica_path(assigns(:notas_tecnica))
  end

  test "should destroy notas_tecnica" do
    assert_difference('NotasTecnica.count', -1) do
      delete :destroy, id: @notas_tecnica
    end

    assert_redirected_to notas_tecnicas_path
  end
end
