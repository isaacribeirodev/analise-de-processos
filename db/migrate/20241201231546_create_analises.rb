class CreateAnalises < ActiveRecord::Migration[8.0]
  def change
    create_table :analises do |t|
      t.string :processo, null: false
      t.boolean :diploma_nao_emitido_check
      t.boolean :status_matricula_check
      t.boolean :nome_check
      t.string :nome_correto
      t.boolean :cpf_check
      t.string :cpf_correto
      t.boolean :data_nascimento_check
      t.date :data_nascimento_correta
      t.boolean :naturalidade_check
      t.string :naturalidade_correta
      t.boolean :nome_pai_check
      t.string :nome_pai_correto
      t.boolean :nome_mae_check
      t.string :nome_mae_correto
      t.boolean :identidade_check
      t.string :identidade_correta
      t.boolean :orgao_expedidor_check
      t.string :orgao_expedidor_correto
      t.boolean :uf_check
      t.string :uf_correta
      t.boolean :data_expedicao_check
      t.date :data_expedicao_correta
      t.boolean :tipo_certidao_check
      t.string :tipo_certidao_correto
      t.boolean :cartorio_check
      t.string :cartorio_correto
      t.boolean :numero_termo_check
      t.integer :numero_termo_correto
      t.boolean :folha_check
      t.string :folha_correta
      t.boolean :livro_check
      t.string :livro_correto
      t.boolean :data_emissao_check
      t.date :data_emissao_correta
      t.boolean :matricula_check
      t.integer :matricula_correta
      t.boolean :email_pessoal_check
      t.string :email_pessoal_correto
      t.boolean :cadastro_tcc_check
      t.string :cadastro_tcc_correto
      t.boolean :deposito_tcc_check
      t.boolean :ata_defesa_check
      t.boolean :titularidade_professores_check
      t.boolean :nada_consta_check
      t.boolean :autorizacao_funcionamento_check
      t.boolean :doc_rg_check
      t.boolean :doc_cpf_check
      t.boolean :doc_certidao_check
      t.boolean :doc_reservista_check
      t.boolean :doc_titulo_check
      t.boolean :doc_quitacao_check
      t.boolean :doc_historico_check
      t.boolean :doc_certificado_check
      t.boolean :cod_sistec_check
      t.integer :cod_sistec_correto
      t.boolean :habilitacao_curso_check
      t.string :habilitacao_curso_correta
      t.boolean :data_conclusao_check
      t.date :data_conclusao_correta
      t.string :info_adicional
      t.string :status_analise, null: false
      t.references :funcionario, null: false, foreign_key: true

      t.timestamps
    end

    add_index :analises, :processo
  end
end
