require 'test_helper'

class NotaTecnicasControllerTest < ActionController::TestCase
  setup do
    @nota_tecnica = nota_tecnicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nota_tecnicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nota_tecnica" do
    assert_difference('NotaTecnica.count') do
      post :create, nota_tecnica: { area: @nota_tecnica.area, data_nota: @nota_tecnica.data_nota, nome_do_analista: @nota_tecnica.nome_do_analista, numero_nota: @nota_tecnica.numero_nota, numero_processo: @nota_tecnica.numero_processo, status: @nota_tecnica.status }
    end

    assert_redirected_to nota_tecnica_path(assigns(:nota_tecnica))
  end

  test "should show nota_tecnica" do
    get :show, id: @nota_tecnica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nota_tecnica
    assert_response :success
  end

  test "should update nota_tecnica" do
    patch :update, id: @nota_tecnica, nota_tecnica: { area: @nota_tecnica.area, data_nota: @nota_tecnica.data_nota, nome_do_analista: @nota_tecnica.nome_do_analista, numero_nota: @nota_tecnica.numero_nota, numero_processo: @nota_tecnica.numero_processo, status: @nota_tecnica.status }
    assert_redirected_to nota_tecnica_path(assigns(:nota_tecnica))
  end

  test "should destroy nota_tecnica" do
    assert_difference('NotaTecnica.count', -1) do
      delete :destroy, id: @nota_tecnica
    end

    assert_redirected_to nota_tecnicas_path
  end
end
