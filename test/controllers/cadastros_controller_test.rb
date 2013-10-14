require 'test_helper'

class CadastrosControllerTest < ActionController::TestCase
  setup do
    @cadastro = cadastros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadastros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cadastro" do
    assert_difference('Cadastro.count') do
      post :create, cadastro: { bairro: @cadastro.bairro, celular: @cadastro.celular, cep: @cadastro.cep, cidade: @cadastro.cidade, cpf: @cadastro.cpf, data_nascimento: @cadastro.data_nascimento, estado_civil: @cadastro.estado_civil, nome: @cadastro.nome, nome_rua: @cadastro.nome_rua, numero: @cadastro.numero, pais: @cadastro.pais, rg: @cadastro.rg, sexo: @cadastro.sexo, telefone: @cadastro.telefone }
    end

    assert_redirected_to cadastro_path(assigns(:cadastro))
  end

  test "should show cadastro" do
    get :show, id: @cadastro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cadastro
    assert_response :success
  end

  test "should update cadastro" do
    patch :update, id: @cadastro, cadastro: { bairro: @cadastro.bairro, celular: @cadastro.celular, cep: @cadastro.cep, cidade: @cadastro.cidade, cpf: @cadastro.cpf, data_nascimento: @cadastro.data_nascimento, estado_civil: @cadastro.estado_civil, nome: @cadastro.nome, nome_rua: @cadastro.nome_rua, numero: @cadastro.numero, pais: @cadastro.pais, rg: @cadastro.rg, sexo: @cadastro.sexo, telefone: @cadastro.telefone }
    assert_redirected_to cadastro_path(assigns(:cadastro))
  end

  test "should destroy cadastro" do
    assert_difference('Cadastro.count', -1) do
      delete :destroy, id: @cadastro
    end

    assert_redirected_to cadastros_path
  end
end
