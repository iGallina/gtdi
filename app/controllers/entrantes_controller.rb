class EntrantesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_entrante, only: [:show, :edit, :update, :destroy]

  # GET /entrantes
  # GET /entrantes.json
  def index
    @entrantes = Entrante.all
  end

  # GET /entrantes/new
  def new
    @entrante = Entrante.new
    @assunto = ['OUTORGA','PÓS-OUTORGA JURÍDICO','PÓS-OUTORGA TÉCNICO','RENOVAÇÃO','CANAL DA CIDADANIA']
  end

  # GET /entrantes/1/edit
  def edit
  end

  # POST /entrantes
  # POST /entrantes.json
  def create
    @entrante = Entrante.new(entrante_params)

    respond_to do |format|
      if @entrante.save
        format.html { redirect_to action: :index, notice: 'Ação criada com sucesso.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /entrantes/1
  # PATCH/PUT /entrantes/1.json
  def update
    respond_to do |format|
      if @entrante.update(entrante_params)
        format.html { redirect_to @entrante, notice: 'Entrante was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @entrante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entrantes/1
  # DELETE /entrantes/1.json
  def destroy
    @entrante.destroy
    respond_to do |format|
      format.html { redirect_to entrantes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrante
      @entrante = Entrante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entrante_params
      params.require(:entrante).permit(:prot_doc, :dt_prot_doc, :area, :assunto, :procedimento, :processo_principal, :dt_procedimento)
    end
end
