require 'test_helper'

class RenomearsControllerTest < ActionController::TestCase
  setup do
    @nome_documento = nome_documentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nome_documentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nome_documento" do
    assert_difference('Renomear.count') do
      post :create, nome_documento: { arquivo: @nome_documento.arquivo, assunto: @nome_documento.assunto, cprod: @nome_documento.cprod, data: @nome_documento.data, mais_de_um_processo: @nome_documento.mais_de_um_processo, sem_cprod: @nome_documento.sem_cprod, tipo: @nome_documento.tipo }
    end

    assert_redirected_to nome_documento_path(assigns(:nome_documento))
  end

  test "should show nome_documento" do
    get :show, id: @nome_documento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nome_documento
    assert_response :success
  end

  test "should update nome_documento" do
    patch :update, id: @nome_documento, nome_documento: { arquivo: @nome_documento.arquivo, assunto: @nome_documento.assunto, cprod: @nome_documento.cprod, data: @nome_documento.data, mais_de_um_processo: @nome_documento.mais_de_um_processo, sem_cprod: @nome_documento.sem_cprod, tipo: @nome_documento.tipo }
    assert_redirected_to nome_documento_path(assigns(:nome_documento))
  end

  test "should destroy nome_documento" do
    assert_difference('Renomear.count', -1) do
      delete :destroy, id: @nome_documento
    end

    assert_redirected_to nome_documentos_path
  end
end
