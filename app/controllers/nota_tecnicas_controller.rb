class NotaTecnicasController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_nota_tecnica, only: [:show, :edit, :update, :destroy]

  # GET /nota_tecnicas
  # GET /nota_tecnicas.json
  def index
    @nota_tecnicas = NotaTecnica.all
  end

  # GET /nota_tecnicas/new
  def new
    @nota_tecnica = NotaTecnica.new
  end

  # GET /nota_tecnicas/1/edit
  def edit
  end

  # POST /nota_tecnicas
  # POST /nota_tecnicas.json
  def create
    @nota_tecnica = NotaTecnica.new(nota_tecnica_params)

    respond_to do |format|
      if @nota_tecnica.save
        format.html { redirect_to action: :index, notice: 'Nota Técnica criada com sucesso.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /nota_tecnicas/1
  # PATCH/PUT /nota_tecnicas/1.json
  def update
    respond_to do |format|
      if @nota_tecnica.update(nota_tecnica_params)
        format.html { redirect_to @nota_tecnica, notice: 'Nota tecnica was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nota_tecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nota_tecnicas/1
  # DELETE /nota_tecnicas/1.json
  def destroy
    @nota_tecnica.destroy
    respond_to do |format|
      format.html { redirect_to nota_tecnicas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nota_tecnica
      @nota_tecnica = NotaTecnica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nota_tecnica_params
      params.require(:nota_tecnica).permit(:data_nota, :numero_nota, :numero_processo, :status, :nome_do_analista, :area)
    end
end
