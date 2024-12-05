require "test_helper"

class AnalisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @analise = analises(:one)
  end

  test "should get index" do
    get analises_url
    assert_response :success
  end

  test "should get new" do
    get new_analise_url
    assert_response :success
  end

  test "should create analise" do
    assert_difference("Analise.count") do
      post analises_url, params: { analise: { ata_defesa_check: @analise.ata_defesa_check, autorizacao_funcionamento_check: @analise.autorizacao_funcionamento_check, cadastro_tcc_check: @analise.cadastro_tcc_check, cadastro_tcc_correto: @analise.cadastro_tcc_correto, cartorio_check: @analise.cartorio_check, cartorio_correto: @analise.cartorio_correto, cod_sistec_check: @analise.cod_sistec_check, cod_sistec_correto: @analise.cod_sistec_correto, cpf_check: @analise.cpf_check, cpf_correto: @analise.cpf_correto, data_conclusao_check: @analise.data_conclusao_check, data_conclusao_correta: @analise.data_conclusao_correta, data_emissao_check: @analise.data_emissao_check, data_emissao_correta: @analise.data_emissao_correta, data_expedicao_check: @analise.data_expedicao_check, data_expedicao_correta: @analise.data_expedicao_correta, data_nascimento_check: @analise.data_nascimento_check, data_nascimento_correta: @analise.data_nascimento_correta, deposito_tcc_check: @analise.deposito_tcc_check, diploma_nao_emitido_check: @analise.diploma_nao_emitido_check, doc_certidao_check: @analise.doc_certidao_check, doc_certificado_check: @analise.doc_certificado_check, doc_cpf_check: @analise.doc_cpf_check, doc_historico_check: @analise.doc_historico_check, doc_quitacao_check: @analise.doc_quitacao_check, doc_reservista_check: @analise.doc_reservista_check, doc_rg_check: @analise.doc_rg_check, doc_titulo_check: @analise.doc_titulo_check, email_pessoal_check: @analise.email_pessoal_check, email_pessoal_correto: @analise.email_pessoal_correto, folha_check: @analise.folha_check, folha_correta: @analise.folha_correta, habilitacao_curso_check: @analise.habilitacao_curso_check, habilitacao_curso_correta: @analise.habilitacao_curso_correta, id_funcionario_id: @analise.id_funcionario_id, identidade_check: @analise.identidade_check, identidade_correta: @analise.identidade_correta, info_adicional: @analise.info_adicional, livro_check: @analise.livro_check, livro_correto: @analise.livro_correto, matricula_check: @analise.matricula_check, matricula_correta: @analise.matricula_correta, nada_consta_check: @analise.nada_consta_check, naturalidade_check: @analise.naturalidade_check, naturalidade_correta: @analise.naturalidade_correta, nome_check: @analise.nome_check, nome_correto: @analise.nome_correto, nome_mae_check: @analise.nome_mae_check, nome_mae_correto: @analise.nome_mae_correto, nome_pai_check: @analise.nome_pai_check, nome_pai_correto: @analise.nome_pai_correto, numero_termo_check: @analise.numero_termo_check, numero_termo_correto: @analise.numero_termo_correto, orgao_expedidor_check: @analise.orgao_expedidor_check, orgao_expedidor_correto: @analise.orgao_expedidor_correto, status_analise: @analise.status_analise, status_matricula_check: @analise.status_matricula_check, tipo_certidao_check: @analise.tipo_certidao_check, tipo_certidao_correto: @analise.tipo_certidao_correto, titularidade_professores_check: @analise.titularidade_professores_check, uf_check: @analise.uf_check, uf_correta: @analise.uf_correta } }
    end

    assert_redirected_to analise_url(Analise.last)
  end

  test "should show analise" do
    get analise_url(@analise)
    assert_response :success
  end

  test "should get edit" do
    get edit_analise_url(@analise)
    assert_response :success
  end

  test "should update analise" do
    patch analise_url(@analise), params: { analise: { ata_defesa_check: @analise.ata_defesa_check, autorizacao_funcionamento_check: @analise.autorizacao_funcionamento_check, cadastro_tcc_check: @analise.cadastro_tcc_check, cadastro_tcc_correto: @analise.cadastro_tcc_correto, cartorio_check: @analise.cartorio_check, cartorio_correto: @analise.cartorio_correto, cod_sistec_check: @analise.cod_sistec_check, cod_sistec_correto: @analise.cod_sistec_correto, cpf_check: @analise.cpf_check, cpf_correto: @analise.cpf_correto, data_conclusao_check: @analise.data_conclusao_check, data_conclusao_correta: @analise.data_conclusao_correta, data_emissao_check: @analise.data_emissao_check, data_emissao_correta: @analise.data_emissao_correta, data_expedicao_check: @analise.data_expedicao_check, data_expedicao_correta: @analise.data_expedicao_correta, data_nascimento_check: @analise.data_nascimento_check, data_nascimento_correta: @analise.data_nascimento_correta, deposito_tcc_check: @analise.deposito_tcc_check, diploma_nao_emitido_check: @analise.diploma_nao_emitido_check, doc_certidao_check: @analise.doc_certidao_check, doc_certificado_check: @analise.doc_certificado_check, doc_cpf_check: @analise.doc_cpf_check, doc_historico_check: @analise.doc_historico_check, doc_quitacao_check: @analise.doc_quitacao_check, doc_reservista_check: @analise.doc_reservista_check, doc_rg_check: @analise.doc_rg_check, doc_titulo_check: @analise.doc_titulo_check, email_pessoal_check: @analise.email_pessoal_check, email_pessoal_correto: @analise.email_pessoal_correto, folha_check: @analise.folha_check, folha_correta: @analise.folha_correta, habilitacao_curso_check: @analise.habilitacao_curso_check, habilitacao_curso_correta: @analise.habilitacao_curso_correta, id_funcionario_id: @analise.id_funcionario_id, identidade_check: @analise.identidade_check, identidade_correta: @analise.identidade_correta, info_adicional: @analise.info_adicional, livro_check: @analise.livro_check, livro_correto: @analise.livro_correto, matricula_check: @analise.matricula_check, matricula_correta: @analise.matricula_correta, nada_consta_check: @analise.nada_consta_check, naturalidade_check: @analise.naturalidade_check, naturalidade_correta: @analise.naturalidade_correta, nome_check: @analise.nome_check, nome_correto: @analise.nome_correto, nome_mae_check: @analise.nome_mae_check, nome_mae_correto: @analise.nome_mae_correto, nome_pai_check: @analise.nome_pai_check, nome_pai_correto: @analise.nome_pai_correto, numero_termo_check: @analise.numero_termo_check, numero_termo_correto: @analise.numero_termo_correto, orgao_expedidor_check: @analise.orgao_expedidor_check, orgao_expedidor_correto: @analise.orgao_expedidor_correto, status_analise: @analise.status_analise, status_matricula_check: @analise.status_matricula_check, tipo_certidao_check: @analise.tipo_certidao_check, tipo_certidao_correto: @analise.tipo_certidao_correto, titularidade_professores_check: @analise.titularidade_professores_check, uf_check: @analise.uf_check, uf_correta: @analise.uf_correta } }
    assert_redirected_to analise_url(@analise)
  end

  test "should destroy analise" do
    assert_difference("Analise.count", -1) do
      delete analise_url(@analise)
    end

    assert_redirected_to analises_url
  end
end
