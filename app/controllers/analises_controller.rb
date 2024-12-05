class AnalisesController < ApplicationController
  before_action :set_analise, only: %i[ show edit update destroy ]

  # GET /analises or /analises.json
  def index
    @analises = Analise.all
  end

  # GET /analises/1 or /analises/1.json
  def show
  end

  # GET /analises/new
  def new
    @analise = Analise.new
  end

  # GET /analises/1/edit
  def edit
  end

  # POST /analises or /analises.json
  def create
    @analise = Analise.new(analise_params)

    respond_to do |format|
      if @analise.save
        format.html { redirect_to @analise, notice: "Análise salva com sucesso." }
        format.json { render :show, status: :created, location: @analise }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @analise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analises/1 or /analises/1.json
  def update
    respond_to do |format|
      if @analise.update(analise_params)
        format.html { redirect_to @analise, notice: "Análise atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @analise }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @analise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analises/1 or /analises/1.json
  def destroy
    @analise.destroy!

    respond_to do |format|
      format.html { redirect_to analises_path, status: :see_other, notice: "Análise excluída com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analise
      @analise = Analise.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def analise_params
      params.expect(analise: [ :diploma_nao_emitido_check, :status_matricula_check, :nome_check, :nome_correto, :cpf_check, :cpf_correto, :data_nascimento_check, :data_nascimento_correta, :naturalidade_check, :naturalidade_correta, :nome_pai_check, :nome_pai_correto, :nome_mae_check, :nome_mae_correto, :identidade_check, :identidade_correta, :orgao_expedidor_check, :orgao_expedidor_correto, :uf_check, :uf_correta, :data_expedicao_check, :data_expedicao_correta, :tipo_certidao_check, :tipo_certidao_correto, :cartorio_check, :cartorio_correto, :numero_termo_check, :numero_termo_correto, :folha_check, :folha_correta, :livro_check, :livro_correto, :data_emissao_check, :data_emissao_correta, :matricula_check, :matricula_correta, :email_pessoal_check, :email_pessoal_correto, :cadastro_tcc_check, :cadastro_tcc_correto, :deposito_tcc_check, :ata_defesa_check, :titularidade_professores_check, :nada_consta_check, :autorizacao_funcionamento_check, :doc_rg_check, :doc_cpf_check, :doc_certidao_check, :doc_reservista_check, :doc_titulo_check, :doc_quitacao_check, :doc_historico_check, :doc_certificado_check, :cod_sistec_check, :cod_sistec_correto, :habilitacao_curso_check, :habilitacao_curso_correta, :data_conclusao_check, :data_conclusao_correta, :info_adicional, :status_analise, :funcionario_id ])
    end
end
