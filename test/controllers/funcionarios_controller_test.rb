require "test_helper"

class FuncionariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    # Desativa o carregamento automático das fixtures.
    ActiveRecord::FixtureSet.reset_cache

    # Mantém a referência para uso em outros testes.
    @funcionario = funcionarios(:one)
    @analise = analises(:one)
  end

  test "should get index" do
    get funcionarios_url
    assert_response :success
  end

  test "should get new" do
    get new_funcionario_url
    assert_response :success
  end

  test "should create funcionario" do
    assert_difference("Funcionario.count") do
      post funcionarios_url, params: { funcionario: { cargo: @funcionario.cargo, cpf: "733.754.289-52", nome: "Felipe Manuel Iago Corte Real", senha: "Hebahop5chAPlpLXl_es" } }
    end

    assert_redirected_to funcionario_url(Funcionario.last)
    assert_equal "Funcionário adicionado com sucesso.", flash[:notice]
  end

  test "should show funcionario" do
    get funcionario_url(@funcionario)
    assert_response :success
  end

  test "should get edit" do
    get edit_funcionario_url(@funcionario)
    assert_response :success
  end

  test "should update funcionario" do
    patch funcionario_url(@funcionario), params: { funcionario: { cargo: @funcionario.cargo, cpf: "246.718.808-65", nome: "Severino Arthur Fernando Campos", senha: "duJlbre_URuziber3*op" } }
    assert_redirected_to funcionario_url(@funcionario)
  end

  test "should not destroy funcionario with analises" do
    assert @funcionario.analises.any?, "Funcionário precisa ter análises para este teste."

    assert_no_difference('Funcionario.count') do
      delete funcionario_url(@funcionario)
    end

    assert_redirected_to funcionarios_url
    assert_equal "Não é possível excluir funcionário com análises associadas.", flash[:error]
    assert Funcionario.exists?(@funcionario.id), "Funcionário não deveria ter sido excluído."
  end

  test "should destroy funcionario without analises" do
    # Remove as análises associadas.
    @funcionario.analises.destroy_all
    assert @funcionario.analises.empty?, "Funcionário não deveria ter análises para este teste."

    assert_difference("Funcionario.count", -1) do
      delete funcionario_url(@funcionario)
    end

    assert_redirected_to funcionarios_url
    assert_not Funcionario.exists?(@funcionario.id), "Funcionário deveria ter sido excluído."
    assert_equal "Funcionário excluído com sucesso.", flash[:notice]
  end
end
