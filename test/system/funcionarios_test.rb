require "application_system_test_case"

class FuncionariosTest < ApplicationSystemTestCase
  setup do
    @funcionario = funcionarios(:one)
  end

  test "visiting the index" do
    visit funcionarios_url
    assert_selector "h1", text: "Funcionários"
  end

  test "should create funcionario" do
    visit funcionarios_url
    click_on "Adicionar Funcionário"

    fill_in "Cargo", with: @funcionario.cargo
    fill_in "CPF", with: "632.913.155-45"
    fill_in "Nome Completo", with: "Vicente Cláudio da Luz"
    fill_in "Senha", with: "j3dr8dA=t2vAs3ylprit"
    click_on "Cadastrar"

    assert_text "Funcionário adicionado com sucesso."
    click_on "Voltar para Funcionários"
  end

  test "should update Funcionario" do
    visit funcionario_url(@funcionario)
    click_on "Editar", match: :first

    fill_in "Cargo", with: @funcionario.cargo
    fill_in "CPF", with: "938.284.477-59"
    fill_in "Nome Completo", with: "Francisco Luiz da Mota"
    fill_in "Senha", with: "S6cRad_OfR?ZLdiwosLp"
    click_on "Atualizar"

    assert_text "Funcionário atualizado com sucesso."
    click_on "Voltar para Funcionários"
  end

  test "should destroy Funcionario" do
    visit funcionario_url(@funcionario)
    click_on "Excluir", match: :first

    assert_text "Funcionário excluído com sucesso."
  end
end
