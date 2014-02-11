class NomeArquivosController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_nome_arquivo, only: [:show, :edit, :update, :destroy]

  # GET /nome_arquivos
  # GET /nome_arquivos.json
  def index
    @nome_arquivos = NomeArquivo.all
  end

  # GET /nome_arquivos/1
  # GET /nome_arquivos/1.json
  def show
  end

  # GET /nome_arquivos/new
  def new
    @nome_arquivo = NomeArquivo.new
    @assuntos = ["Alteracao de Canal",
                "Alteracao de Caracteristicas Tecnicas",
                "Alteracao de Coordenadas Geograficas",
                "Alteracao de Geradora RTV",
                "Alteracao de Potencia Mudanca de Classe",
                "Alteracao dos Objetivos Sociais",
                "Alteracao Simples",
                "Aprovacao de Atos Praticados",
                "Aprovacao de Locais e Equipamentos",
                "Aprovacao de Procurador",
                "Aprovacao de Quadro Diretivo",
                "Assentimento Previo",
                "Autorizacao de RTV Primaria",
                "Autorizacao de RTV Secundaria",
                "Aviso de Habilitacao FME",
                "Aviso de Habilitacao RTV",
                "Aviso de Habilitacao TVE",
                "Consignação de Canal Digital",
                "Consignação de Canal Uniao",
                "Contrato",
                "Declaracao de Composicao Societaria",
                "Enquadramento no Plano Basico",
                "Extincao de Outorga",
                "Extincao de Outorga RTV",
                "Inclusao de canal no Plano Basico",
                "Licenciamento",
                "Licitacao",
                "Mudanca do Transmissor",
                "Outorga FME",
                "Outorga TVE",
                "Renovacao de Outorga",
                "Revisao de Outorga",
                "Servico Especial para fins Cientificos e Experimentais",
                "Transferencia de Autorizacao RTV",
                "Transferencia de Local do Estudio",
                "Transferencia Direta",
                "Transferencia Indireta"]
  end

  # GET /nome_arquivos/1/edit
  def edit
  end

  # POST /nome_arquivos
  # POST /nome_arquivos.json
  def create
    @nome_arquivo = NomeArquivo.new(nome_arquivo_params)

    respond_to do |format|
      if @nome_arquivo.save
        format.html { redirect_to action: :index, notice: 'Nome de Arquivo criado.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /nome_arquivos/1
  # PATCH/PUT /nome_arquivos/1.json
  def update
    respond_to do |format|
      if @nome_arquivo.update(nome_arquivo_params)
        format.html { redirect_to @nome_arquivo, notice: 'Renomear was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nome_arquivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nome_arquivos/1
  # DELETE /nome_arquivos/1.json
  def destroy
    @nome_arquivo.destroy
    respond_to do |format|
      format.html { redirect_to nome_arquivos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nome_arquivo
      @nome_arquivo = NomeArquivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nome_arquivo_params
      params.require(:nome_arquivo).permit(:tipo, :assunto, :data, :cprod, :sem_cprod, :mais_de_um_processo, :arquivo)
    end
end
