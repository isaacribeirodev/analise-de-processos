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
    check "Código de Autenticação no SISTEC (somente para cursos técnicos) (3)" if @analise.cod_sistec_check
    fill_in "Código de Autenticação no SISTEC", with: @analise.cod_sistec_correto
    check "CPF" if @analise.cpf_check
    fill_in "CPF Correto", with: @analise.cpf_correto
    check "Data de Conclusão igual ou anterior à Data de Colação de Grau (somente para graduação)" if @analise.data_conclusao_check
    fill_in "Data de Conclusão Correta", with: @analise.data_conclusao_correta
    check "Data de Emissão" if @analise.data_emissao_check
    fill_in "Data de Emissão Correta", with: @analise.data_emissao_correta
    check "Data de Expedição" if @analise.data_expedicao_check
    fill_in "Data de Expedição Correta", with: @analise.data_expedicao_correta
    check "Data de Nascimento" if @analise.data_nascimento_check
    fill_in "Data de Nascimento Correta", with: @analise.data_nascimento_correta
    check "Depósito de TCC" if @analise.deposito_tcc_check
    check "Diploma Não Emitido" if @analise.diploma_nao_emitido_check
    check "Documento Certidão de Registro Civil" if @analise.doc_certidao_check
    check "Documento Definitivo de Conclusão de Curso" if @analise.doc_certificado_check
    check "Documento CPF" if @analise.doc_cpf_check
    check "Documento Histórico Definitivo de Conclusão de Curso" if @analise.doc_historico_check
    check "Documento Certidão de Quitação Eleitoral" if @analise.doc_quitacao_check
    check "Documento Reservista" if @analise.doc_reservista_check
    check "Documento RG" if @analise.doc_rg_check
    check "Documento Título Eleitoral" if @analise.doc_titulo_check
    check "Email Pessoal" if @analise.email_pessoal_check
    fill_in "E-mail Pessoal Correto", with: @analise.email_pessoal_correto
    check "Folha" if @analise.folha_check
    fill_in "Folha Correta", with: @analise.folha_correta
    check "Habilitação" if @analise.habilitacao_curso_check
    fill_in "Habilitação Correta", with: @analise.habilitacao_curso_correta
    fill_in "Funcionário", with: @analise.funcionario_id
    check "Identidade" if @analise.identidade_check
    fill_in "Identidade Correta", with: @analise.identidade_correta
    fill_in "Informação Adicional", with: @analise.info_adicional
    check "Livro" if @analise.livro_check
    fill_in "Livro Correto", with: @analise.livro_correto
    check "Matrícula" if @analise.matricula_check
    fill_in "Matrícula Correta", with: @analise.matricula_correta
    check "Nada Consta" if @analise.nada_consta_check
    check "Naturalidade" if @analise.naturalidade_check
    fill_in "Naturalidade Correta", with: @analise.naturalidade_correta
    check "Nome" if @analise.nome_check
    fill_in "Nome Correto", with: @analise.nome_correto
    check "Nome da Mãe" if @analise.nome_mae_check
    fill_in "Nome da Mãe Correto", with: @analise.nome_mae_correto
    check "Nome do Pai" if @analise.nome_pai_check
    fill_in "Nome do Pai Correto", with: @analise.nome_pai_correto
    check "Número de Termo" if @analise.numero_termo_check
    fill_in "Número de Termo Correto", with: @analise.numero_termo_correto
    check "Órgão Expedidor" if @analise.orgao_expedidor_check
    fill_in "Órgão Expedidor Correto", with: @analise.orgao_expedidor_correto
    fill_in "Número do Processo", with: @analise.processo
    fill_in "Status da Análise", with: @analise.status_analise
    check "Status da Matrícula é 'Concluído' ou 'Formado'" if @analise.status_matricula_check
    check "Tipo de Certidão" if @analise.tipo_certidao_check
    fill_in "Tipo de Certidão Correto", with: @analise.tipo_certidao_correto
    check "Titularidade dos Professores no Histórico" if @analise.titularidade_professores_check
    check "UF" if @analise.uf_check
    fill_in "UF Correta", with: @analise.uf_correta
    click_on "Cadastrar"

    assert_text "Análise concluída com sucesso."
    click_on "Voltar para Análises"
  end

  test "should update Analise" do
    visit analise_url(@analise)
    click_on "Editar", match: :first

    check "Ata de Defesa" if @analise.ata_defesa_check
    check "Autorização de Funcionamento" if @analise.autorizacao_funcionamento_check
    check "Cadastro de TCC" if @analise.cadastro_tcc_check
    fill_in "Cadastro de TCC Correto", with: @analise.cadastro_tcc_correto
    check "Cartório" if @analise.cartorio_check
    fill_in "Cartório Correto", with: @analise.cartorio_correto
    check "Código de Autenticação no SISTEC (somente para cursos técnicos) (3)" if @analise.cod_sistec_check
    fill_in "Código de Autenticação no SISTEC", with: @analise.cod_sistec_correto
    check "CPF" if @analise.cpf_check
    fill_in "CPF Correto", with: @analise.cpf_correto
    check "Data de Conclusão igual ou anterior à Data de Colação de Grau (somente para graduação)" if @analise.data_conclusao_check
    fill_in "Data de Conclusão Correta", with: @analise.data_conclusao_correta
    check "Data de Emissão" if @analise.data_emissao_check
    fill_in "Data de Emissão Correta", with: @analise.data_emissao_correta
    check "Data de Expedição" if @analise.data_expedicao_check
    fill_in "Data de Expedição Correta", with: @analise.data_expedicao_correta
    check "Data de Nascimento" if @analise.data_nascimento_check
    fill_in "Data de Nascimento Correta", with: @analise.data_nascimento_correta
    check "Depósito de TCC" if @analise.deposito_tcc_check
    check "Diploma Não Emitido" if @analise.diploma_nao_emitido_check
    check "Documento Certidão de Registro Civil" if @analise.doc_certidao_check
    check "Documento Definitivo de Conclusão de Curso" if @analise.doc_certificado_check
    check "Documento CPF" if @analise.doc_cpf_check
    check "Documento Histórico Definitivo de Conclusão de Curso" if @analise.doc_historico_check
    check "Documento Certidão de Quitação Eleitoral" if @analise.doc_quitacao_check
    check "Documento Reservista" if @analise.doc_reservista_check
    check "Documento RG" if @analise.doc_rg_check
    check "Documento Título Eleitoral" if @analise.doc_titulo_check
    check "Email Pessoal" if @analise.email_pessoal_check
    fill_in "E-mail Pessoal Correto", with: @analise.email_pessoal_correto
    check "Folha" if @analise.folha_check
    fill_in "Folha Correta", with: @analise.folha_correta
    check "Habilitação" if @analise.habilitacao_curso_check
    fill_in "Habilitação Correta", with: @analise.habilitacao_curso_correta
    fill_in "Funcionário", with: @analise.funcionario_id
    check "Identidade" if @analise.identidade_check
    fill_in "Identidade Correta", with: @analise.identidade_correta
    fill_in "Informação Adicional", with: @analise.info_adicional
    check "Livro" if @analise.livro_check
    fill_in "Livro Correto", with: @analise.livro_correto
    check "Matrícula" if @analise.matricula_check
    fill_in "Matrícula Correta", with: @analise.matricula_correta
    check "Nada Consta" if @analise.nada_consta_check
    check "Naturalidade" if @analise.naturalidade_check
    fill_in "Naturalidade Correta", with: @analise.naturalidade_correta
    check "Nome" if @analise.nome_check
    fill_in "Nome Correto", with: @analise.nome_correto
    check "Nome da Mãe" if @analise.nome_mae_check
    fill_in "Nome da Mãe Correto", with: @analise.nome_mae_correto
    check "Nome do Pai" if @analise.nome_pai_check
    fill_in "Nome do Pai Correto", with: @analise.nome_pai_correto
    check "Número de Termo" if @analise.numero_termo_check
    fill_in "Número de Termo Correto", with: @analise.numero_termo_correto
    check "Órgão Expedidor" if @analise.orgao_expedidor_check
    fill_in "Órgão Expedidor Correto", with: @analise.orgao_expedidor_correto
    fill_in "Status da Análise", with: @analise.status_analise
    check "Status da Matrícula é 'Concluído' ou 'Formado'" if @analise.status_matricula_check
    check "Tipo de Certidão" if @analise.tipo_certidao_check
    fill_in "Tipo de Certidão Correto", with: @analise.tipo_certidao_correto
    check "Titularidade dos Professores no Histórico" if @analise.titularidade_professores_check
    check "UF" if @analise.uf_check
    fill_in "UF Correta", with: @analise.uf_correta
    click_on "Atualizar"

    assert_text "Análise atualizada com sucesso."
    click_on "Voltar para Análises"
  end

  test "should destroy Analise" do
    visit analise_url(@analise)
    page.accept_confirm do
      click_on "Excluir", match: :first
    end

    assert_text "Análise excluída com sucesso."
  end
end
