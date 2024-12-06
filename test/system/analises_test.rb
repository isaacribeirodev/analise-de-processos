require "application_system_test_case"

class AnalisesTest < ApplicationSystemTestCase
  setup do
    @analise = analises(:one)
  end

  test "visiting the index" do
    visit analises_url
    assert_selector "h1", text: "Análises Processuais para Emissão de Diploma"
  end

  test "should create analise" do
    visit analises_url
    click_on "Realizar Análise"

    check "Ata de Defesa" if @analise.ata_defesa_check
    check "Autorização de Funcionamento" if @analise.autorizacao_funcionamento_check
    check "Cadastro de TCC" if @analise.cadastro_tcc_check
    fill_in "Cadastro de TCC Correto", with: @analise.cadastro_tcc_correto
    check "Cartório" if @analise.cartorio_check
    fill_in "Cartório Correto", with: @analise.cartorio_correto
    check "Código de Autenticação no SISTEC" if @analise.cod_sistec_check
    fill_in "Cod sistec correto", with: @analise.cod_sistec_correto
    check "CPF" if @analise.cpf_check
    fill_in "CPF Correto", with: @analise.cpf_correto
    check "Data de Conclusão" if @analise.data_conclusao_check
    fill_in "Data de Conclusão Correta", with: @analise.data_conclusao_correta
    check "Data emissao check" if @analise.data_emissao_check
    fill_in "Data emissao correta", with: @analise.data_emissao_correta
    check "Data expedicao check" if @analise.data_expedicao_check
    fill_in "Data expedicao correta", with: @analise.data_expedicao_correta
    check "Data nascimento check" if @analise.data_nascimento_check
    fill_in "Data nascimento correta", with: @analise.data_nascimento_correta
    check "Deposito tcc check" if @analise.deposito_tcc_check
    check "Diploma nao emitido check" if @analise.diploma_nao_emitido_check
    check "Doc certidao check" if @analise.doc_certidao_check
    check "Doc certificado check" if @analise.doc_certificado_check
    check "Doc cpf check" if @analise.doc_cpf_check
    check "Doc historico check" if @analise.doc_historico_check
    check "Doc quitacao check" if @analise.doc_quitacao_check
    check "Doc reservista check" if @analise.doc_reservista_check
    check "Doc rg check" if @analise.doc_rg_check
    check "Doc titulo check" if @analise.doc_titulo_check
    check "Email pessoal check" if @analise.email_pessoal_check
    fill_in "Email pessoal correto", with: @analise.email_pessoal_correto
    check "Folha check" if @analise.folha_check
    fill_in "Folha correta", with: @analise.folha_correta
    check "Habilitacao curso check" if @analise.habilitacao_curso_check
    fill_in "Habilitacao curso correta", with: @analise.habilitacao_curso_correta
    fill_in "Funcionario id", with: @analise.funcionario_id
    check "Identidade check" if @analise.identidade_check
    fill_in "Identidade correta", with: @analise.identidade_correta
    fill_in "Info adicional", with: @analise.info_adicional
    check "Livro check" if @analise.livro_check
    fill_in "Livro correto", with: @analise.livro_correto
    check "Matricula check" if @analise.matricula_check
    fill_in "Matricula correta", with: @analise.matricula_correta
    check "Nada consta check" if @analise.nada_consta_check
    check "Naturalidade check" if @analise.naturalidade_check
    fill_in "Naturalidade correta", with: @analise.naturalidade_correta
    check "Nome check" if @analise.nome_check
    fill_in "Nome correto", with: @analise.nome_correto
    check "Nome mae check" if @analise.nome_mae_check
    fill_in "Nome mae correto", with: @analise.nome_mae_correto
    check "Nome pai check" if @analise.nome_pai_check
    fill_in "Nome pai correto", with: @analise.nome_pai_correto
    check "Numero termo check" if @analise.numero_termo_check
    fill_in "Numero termo correto", with: @analise.numero_termo_correto
    check "Orgao expedidor check" if @analise.orgao_expedidor_check
    fill_in "Orgao expedidor correto", with: @analise.orgao_expedidor_correto
    fill_in "Status analise", with: @analise.status_analise
    check "Status matricula check" if @analise.status_matricula_check
    check "Tipo certidao check" if @analise.tipo_certidao_check
    fill_in "Tipo certidao correto", with: @analise.tipo_certidao_correto
    check "Titularidade professores check" if @analise.titularidade_professores_check
    check "UF" if @analise.uf_check
    fill_in "UF Correta", with: @analise.uf_correta
    click_on "Realizar Análise"

    assert_text "Análise concluída com sucesso."
    click_on "Voltar para Análises"
  end

  test "should update Analise" do
    visit analise_url(@analise)
    click_on "Editar", match: :first

    check "Ata defesa check" if @analise.ata_defesa_check
    check "Autorizacao funcionamento check" if @analise.autorizacao_funcionamento_check
    check "Cadastro tcc check" if @analise.cadastro_tcc_check
    fill_in "Cadastro TCC Correto", with: @analise.cadastro_tcc_correto
    check "Cartorio check" if @analise.cartorio_check
    fill_in "Cartorio correto", with: @analise.cartorio_correto
    check "Cod sistec check" if @analise.cod_sistec_check
    fill_in "Cod sistec correto", with: @analise.cod_sistec_correto
    check "Cpf check" if @analise.cpf_check
    fill_in "Cpf correto", with: @analise.cpf_correto
    check "Data conclusao check" if @analise.data_conclusao_check
    fill_in "Data conclusao correta", with: @analise.data_conclusao_correta
    check "Data emissao check" if @analise.data_emissao_check
    fill_in "Data emissao correta", with: @analise.data_emissao_correta
    check "Data expedicao check" if @analise.data_expedicao_check
    fill_in "Data expedicao correta", with: @analise.data_expedicao_correta
    check "Data nascimento check" if @analise.data_nascimento_check
    fill_in "Data nascimento correta", with: @analise.data_nascimento_correta
    check "Deposito tcc check" if @analise.deposito_tcc_check
    check "Diploma nao emitido check" if @analise.diploma_nao_emitido_check
    check "Doc certidao check" if @analise.doc_certidao_check
    check "Doc certificado check" if @analise.doc_certificado_check
    check "Doc cpf check" if @analise.doc_cpf_check
    check "Doc historico check" if @analise.doc_historico_check
    check "Doc quitacao check" if @analise.doc_quitacao_check
    check "Doc reservista check" if @analise.doc_reservista_check
    check "Doc rg check" if @analise.doc_rg_check
    check "Doc titulo check" if @analise.doc_titulo_check
    check "Email pessoal check" if @analise.email_pessoal_check
    fill_in "Email pessoal correto", with: @analise.email_pessoal_correto
    check "Folha check" if @analise.folha_check
    fill_in "Folha correta", with: @analise.folha_correta
    check "Habilitacao curso check" if @analise.habilitacao_curso_check
    fill_in "Habilitacao curso correta", with: @analise.habilitacao_curso_correta
    fill_in "Id funcionario", with: @analise.funcionario_id
    check "Identidade check" if @analise.identidade_check
    fill_in "Identidade correta", with: @analise.identidade_correta
    fill_in "Info adicional", with: @analise.info_adicional
    check "Livro check" if @analise.livro_check
    fill_in "Livro correto", with: @analise.livro_correto
    check "Matricula check" if @analise.matricula_check
    fill_in "Matricula correta", with: @analise.matricula_correta
    check "Nada consta check" if @analise.nada_consta_check
    check "Naturalidade check" if @analise.naturalidade_check
    fill_in "Naturalidade correta", with: @analise.naturalidade_correta
    check "Nome check" if @analise.nome_check
    fill_in "Nome correto", with: @analise.nome_correto
    check "Nome mae check" if @analise.nome_mae_check
    fill_in "Nome mae correto", with: @analise.nome_mae_correto
    check "Nome pai check" if @analise.nome_pai_check
    fill_in "Nome pai correto", with: @analise.nome_pai_correto
    check "Numero termo check" if @analise.numero_termo_check
    fill_in "Numero termo correto", with: @analise.numero_termo_correto
    check "Orgao expedidor check" if @analise.orgao_expedidor_check
    fill_in "Orgao expedidor correto", with: @analise.orgao_expedidor_correto
    fill_in "Status analise", with: @analise.status_analise
    check "Status matricula check" if @analise.status_matricula_check
    check "Tipo certidao check" if @analise.tipo_certidao_check
    fill_in "Tipo certidao correto", with: @analise.tipo_certidao_correto
    check "Titularidade professores check" if @analise.titularidade_professores_check
    check "Uf check" if @analise.uf_check
    fill_in "Uf correta", with: @analise.uf_correta
    click_on "Atualizar"

    assert_text "Análise atualizada com sucesso."
    click_on "Voltar para Análises"
  end

  test "should destroy Analise" do
    visit analise_url(@analise)
    click_on "Excluir", match: :first

    assert_text "Análise excluída com sucesso."
  end
end
