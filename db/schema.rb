# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2024_12_01_231546) do
  create_table "analises", force: :cascade do |t|
    t.boolean "diploma_nao_emitido_check"
    t.boolean "status_matricula_check"
    t.boolean "nome_check"
    t.string "nome_correto"
    t.boolean "cpf_check"
    t.string "cpf_correto"
    t.boolean "data_nascimento_check"
    t.date "data_nascimento_correta"
    t.boolean "naturalidade_check"
    t.string "naturalidade_correta"
    t.boolean "nome_pai_check"
    t.string "nome_pai_correto"
    t.boolean "nome_mae_check"
    t.string "nome_mae_correto"
    t.boolean "identidade_check"
    t.string "identidade_correta"
    t.boolean "orgao_expedidor_check"
    t.string "orgao_expedidor_correto"
    t.boolean "uf_check"
    t.string "uf_correta"
    t.boolean "data_expedicao_check"
    t.date "data_expedicao_correta"
    t.boolean "tipo_certidao_check"
    t.string "tipo_certidao_correto"
    t.boolean "cartorio_check"
    t.string "cartorio_correto"
    t.boolean "numero_termo_check"
    t.integer "numero_termo_correto"
    t.boolean "folha_check"
    t.string "folha_correta"
    t.boolean "livro_check"
    t.string "livro_correto"
    t.boolean "data_emissao_check"
    t.date "data_emissao_correta"
    t.boolean "matricula_check"
    t.integer "matricula_correta"
    t.boolean "email_pessoal_check"
    t.string "email_pessoal_correto"
    t.boolean "cadastro_tcc_check"
    t.string "cadastro_tcc_correto"
    t.boolean "deposito_tcc_check"
    t.boolean "ata_defesa_check"
    t.boolean "titularidade_professores_check"
    t.boolean "nada_consta_check"
    t.boolean "autorizacao_funcionamento_check"
    t.boolean "doc_rg_check"
    t.boolean "doc_cpf_check"
    t.boolean "doc_certidao_check"
    t.boolean "doc_reservista_check"
    t.boolean "doc_titulo_check"
    t.boolean "doc_quitacao_check"
    t.boolean "doc_historico_check"
    t.boolean "doc_certificado_check"
    t.boolean "cod_sistec_check"
    t.integer "cod_sistec_correto"
    t.boolean "habilitacao_curso_check"
    t.string "habilitacao_curso_correta"
    t.boolean "data_conclusao_check"
    t.date "data_conclusao_correta"
    t.string "info_adicional"
    t.string "status_analise", null: false
    t.integer "funcionario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["funcionario_id"], name: "index_analises_on_funcionario_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome", null: false
    t.string "cpf", null: false
    t.string "cargo", null: false
    t.string "senha", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpf"], name: "index_funcionarios_on_cpf", unique: true
  end

  add_foreign_key "analises", "funcionarios"
end
